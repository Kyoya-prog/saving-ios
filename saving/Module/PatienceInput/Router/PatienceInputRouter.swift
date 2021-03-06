import Foundation
import UIKit.UIViewController

class PatienceInputRouter: PatienceInputWireframe {
    var viewController: UIViewController?

    static func assembleRegisterModule(date: Date? = nil, isCalendarModal: Bool = false) -> UIViewController {
        let registerView = PatienceInputViewController(isNewRecord: true)
        let presenter = PatienceRegisterPresenter()
        presenter.isCalendarModal = isCalendarModal
        let interactor = PatienceInputInteractor()
        let datastore = PatienceDataStore()
        let router = PatienceInputRouter()

        registerView.dateRecord = date ?? Date()

        interactor.repository = datastore
        interactor.output = presenter
        presenter.interactor = interactor
        presenter.view = registerView
        router.viewController = registerView
        presenter.router = router
        registerView.presenter = presenter

        return registerView
    }

    static func assembleUpdateModule(record: PatienceEntity) -> UIViewController {
        let registerView = PatienceInputViewController(isNewRecord: false)
        let presenter = PatienceUpdatePreseneter()
        let interactor = PatienceInputInteractor()
        let datastore = PatienceDataStore()
        let router = PatienceInputRouter()

        registerView.dateRecord = record.registeredAt
        registerView.memoRecord = record.memo ?? ""
        registerView.moneyRecord = record.money
        registerView.categoryTitleRecord = record.categoryTitle
        presenter.id = record.id

        interactor.repository = datastore
        interactor.output = presenter
        presenter.interactor = interactor
        presenter.view = registerView
        presenter.router = router
        router.viewController = registerView
        registerView.presenter = presenter

        return registerView
    }

    func closeInputView() {
        viewController?.navigationController?.popViewController(animated: true)
    }

    func closeModalInCalendar() {
        viewController?.dismiss(animated: true, completion: nil)
    }
}
