import Foundation
import RxSwift
import UIKit

protocol PatienceInputWireframe {
    // Dependency
    var viewController: UIViewController? { get }

    ///  登録画面を閉じる
    func closeInputView()

    /// カレンダー画面で表示されているモーダルを閉じる
    func closeModalInCalendar()
}

protocol PatienceInputView {
    // Dependency
    var presenter: PatienceInputPresentation! { get }
    /// エラーメッセージを表示する
    /// - parameter message:エラーメッセージ
    func showError(message: String)

    /// 成功メッセージを表示する
    /// - parameter message:成功メッセージ
    func showSuccess(message: String)
}

protocol PatienceInputPresentation {
    // Dependency
    var view: PatienceInputView? { get }
    var interactor: PatienceUsecase! { get }
    var router: PatienceInputWireframe! { get }

    /// 入力ボタンがタップされた
    /// - parameter date:日付
    /// - parameter memo:メモ
    /// - parameter money: 金額
    /// - parameter categoryTitle: カテゴリータイトル
    func didTapInputButton(date: Date, memo: String, money: Int, categoryTitle: String)
}

protocol PatienceRegisterPresentation: PatienceInputPresentation {
    /// 登録ボタンがタップされた
    /// - parameter date:日付
    /// - parameter memo:メモ
    /// - parameter money: 金額
    /// - parameter categoryTitle: カテゴリータイトル
    func didTapRegisterButton(date: Date, memo: String, money: Int, categoryTitle: String)
}

protocol PatienceUpdatePresentation: PatienceInputPresentation {
    /// 更新ボタンがタップされた
    /// - parameter date:日付
    /// - parameter memo:メモ
    /// - parameter money: 金額
    /// - parameter categoryTitle: カテゴリータイトル
    func didTapUpdateButton(date: Date, memo: String, money: Int, categoryTitle: String)
}

protocol PatienceUsecase {
    // Dependency
    var output: PatienceInputInteractorOutput? { get }

    var repository: PatienceRepository! { get }
    /// データを登録する
    /// - parameter record:データレコード
    func registerPatienceData(record: PatienceEntity)

    /// データをupdateする
    /// - parameter record:データレコード
    func updatePatienceData(record: PatienceEntity)
}

protocol PatienceInputInteractorOutput {
    /// 入力のエラーを出力する
    /// - parameter error:エラー内容
    func outputInputError(error: Error)

    /// 入力に成功したことを知らせる
    func outputInputSuccess()
}

protocol PatienceRepository {
    /// データを登録する
    /// - parameter record:記録
    func registerPatienceData(record: PatienceEntity) -> Single<PatienceEntity>

    /// データをフェッチする
    /// - parameter data:日付
    func fetchPatienceDataForDay(date: Date) -> Single<[PatienceEntity]>

    /// 指定日月のデータをフェッチする
    /// - parameter date:指定日
    func fetchPatienceDataForMonth(date: Date) -> Single<[PatienceEntity]>

    /// データをupdateする
    /// - parameter id:ID
    /// - parameter record:記録
    func updatePatienceData(record: PatienceEntity) -> Single<PatienceEntity>

    /// データを消去する
    /// - parameter id:ID
    func deletePatienceData(id: Int) ->Single<Void>
}
