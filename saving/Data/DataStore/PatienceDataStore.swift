import FirebaseAuth
import FirebaseFirestore
import Foundation
import RxSwift

class PatienceDataStore: PatienceRepository {
    func registerPatienceData(data: [String: Any]) -> Single<Error?> {
        Single.create { [weak self] observer -> Disposable in
            guard let self = self else { return Disposables.create() }
            self.firestoreCollectionReference.addDocument(data: data) { error in
                if let error = error {
                    observer(.failure(error))
                    return
                }
                observer(.success(nil))
                return
            }
            return Disposables.create()
        }
    }

    func fetchPatienceData(date: Date) -> Single<[PatienceEntity]> {
        Single<[PatienceEntity]>.create { [weak self] observer -> Disposable in
            guard let self = self else { return Disposables.create() }
            let query = self.firestoreCollectionReference
                .whereField("UID", isEqualTo: FirebaseAuthManeger.shared.uid)
                .whereField("Date", isEqualTo: date)
            query.getDocuments { query, error in
                if let error = error {
                    observer(.failure(error))
                    return
                }
                if let documents = query?.documents {
                    observer(.success(self.createPatienceRecord(documents: documents)))
                    return
                }
            }
            return Disposables.create()
        }
    }

    func fetchPatienceData(startDate: Date, endDate: Date) -> Single<[PatienceEntity]> {
        Single<[PatienceEntity]>.create { [weak self] observer ->Disposable in
            guard let self = self else { return Disposables.create() }
            let startTimestamp = Timestamp(date: startDate)
            let endTimestamp = Timestamp(date: endDate)
            let query = self.firestoreCollectionReference
                .whereField("UID", isEqualTo: FirebaseAuthManeger.shared.uid)
                .whereField("Date", isGreaterThanOrEqualTo: startTimestamp)
                .whereField("Date", isLessThanOrEqualTo: endTimestamp)
            query.getDocuments { snapshot, error in
                if let error = error {
                    observer(.failure(error))
                    return
                }
                if let documents = snapshot?.documents {
                    observer(.success(self.createPatienceRecord(documents: documents)))
                    return
                }
            }
            return Disposables.create()
        }
    }

    func updatePatienceData(id: String, record: [String: Any]) -> Single<Error?> {
        Single.create { [weak self] observer -> Disposable in
            guard let self = self else { return Disposables.create() }
            self.firestoreCollectionReference.document(id).updateData(record) { error in
                if let error = error {
                    observer(.failure(error))
                    return
                }
                observer(.success(nil))
                return
            }
            return Disposables.create()
        }
    }

    func deletePatienceData(id: String) ->Single<Error?> {
        Single.create { [weak self] observer -> Disposable in
            guard let self = self else { return Disposables.create() }
            self.firestoreCollectionReference.document(id).delete { error in
                if let error = error {
                    observer(.failure(error))
                    return
                }
                observer(.success(nil))
                return
            }
            return Disposables.create()
        }
    }

    private func createPatienceRecord(documents: [QueryDocumentSnapshot]) -> [PatienceEntity] {
        documents.map {
            PatienceEntity(documentID: $0.documentID,
                           date: (($0.data()["Date"] as? Timestamp)?.dateValue()) ?? Date() ,
                           memo: ($0.data()["Memo"] as? String) ?? "",
                           money: ($0.data()["Money"] as? Int) ?? 0,
                           categoryTitle: ( $0.data()["Category"] as? String) ?? ""  )
        }
    }

    private let firestoreCollectionReference = Firestore.firestore().collection("patience")
}