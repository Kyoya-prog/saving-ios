//
//  PatienceCalendarRouter.swift
//  PatientMoney
//
//  Created by 松山響也 on 2021/05/03.
//

import Foundation
import UIKit.UIViewController

class PatienceCalendarRouter: PatienceCalendarWireframe {
    static func assembleModule() -> UIViewController {
        let viewController = PatienceCalendarViewController()
        let presenter = PatienceCalendarPresenter()
        let interactor = PatienceCalendarInteractor()
        let dataStore = PatienceDataStore()
        let router = PatienceCalendarRouter()

        presenter.interactor = interactor
        interactor.repository = dataStore
        interactor.output = presenter
        presenter.router = router
        presenter.view = viewController
        viewController.presenter = presenter
        router.viewController = viewController

        return viewController
    }

    // MARK: PatienceCalendarWireframe
    var viewController: UIViewController?

    func presentRegisterModal(date: Date) {
        let registerView = PatienceInputRouter.assembleRegisterModule(date: date, isCalendarModal: true)
        registerView.presentationController?.delegate = viewController as? PatienceCalendarViewController
        viewController?.present(registerView, animated: true, completion: nil)
    }

    func presentUpdateView(record: PatienceEntity) {
        let updateView = PatienceInputRouter.assembleUpdateModule(record: record)
        viewController?.navigationController?.pushViewController(updateView, animated: true)
    }
}
