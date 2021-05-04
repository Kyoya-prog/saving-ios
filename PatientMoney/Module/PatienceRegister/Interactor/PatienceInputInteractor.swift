import Foundation

class PatienceInputInteractor: PatienceUsecase {
    func updatePatienceData(record: PatienceEntity) {
        let documentData = ["Date": record.date, "Memo": record.memo, "Money": record.money, "Category": record.categoryTitle, "UID": uid] as [String: Any]
        if let error = repository.updatePatienceData(documentId: record.documentID, record: documentData ) {
            output?.outputRegisterError(error: error)
        } else {
            output?.outputUpdateSuccess()
        }
    }

    var output: PatienceInputInteractorOutput?
    var repository: PatienceRepository!

    func registerPatienceData(date: Date, memo: String, money: Int, category: String) {
        let documentData = ["Date": date, "Memo": memo, "Money": money, "Category": category, "UID": uid] as [String: Any]
        if let error = repository.registerPatienceData(data: documentData) {
            output?.outputRegisterError(error: error)
        } else {
            output?.outputRegisterSuccess()
        }
    }

    private var uid: String = {
        FirebaseAuthManeger.shared.uid
    }()
}
