// swiftlint:disable all
// Generated using SwiftGen — https://github.com/SwiftGen/SwiftGen

import Foundation

// swiftlint:disable superfluous_disable_command file_length implicit_return

// MARK: - Strings

// swiftlint:disable explicit_type_interface function_parameter_count identifier_name line_length
// swiftlint:disable nesting type_body_length type_name vertical_whitespace_opening_braces
internal enum L10n {

  internal enum ApiError {
    /// 不正なリクエストが検出されました
    internal static let badRequestError = L10n.tr("Localizable", "ApiError.badRequestError")
    /// サーバーと通信できません。kyoyaprog@gmail.comまでお問い合わせください。
    internal static let connectionError = L10n.tr("Localizable", "ApiError.ConnectionError")
    /// ネットワークに問題があります。接続状況を確認の上もう一度お試しください
    internal static let networkError = L10n.tr("Localizable", "ApiError.networkError")
    /// サーバーでエラーが発生しています。kyoyaprog@gmail.comまでお問い合わせください
    internal static let serverError = L10n.tr("Localizable", "ApiError.serverError")
    /// 不明なエラーです
    internal static let unknownError = L10n.tr("Localizable", "ApiError.unknownError")
  }

  internal enum AppDelegate {
    internal enum HomeView {
      internal enum AnalyzeView {
        /// 分析
        internal static let title = L10n.tr("Localizable", "AppDelegate.HomeView.AnalyzeView.title")
      }
      internal enum CalendarView {
        /// カレンダー
        internal static let title = L10n.tr("Localizable", "AppDelegate.HomeView.CalendarView.title")
      }
      internal enum RegisterView {
        /// 登録
        internal static let title = L10n.tr("Localizable", "AppDelegate.HomeView.RegisterView.title")
      }
    }
  }

  internal enum AuthFailedViewController {
    /// 認証に失敗しました
    internal static let massage = L10n.tr("Localizable", "AuthFailedViewController.massage")
  }

  internal enum AuthViewController {
    /// パスワードは8文字以上入力してください。
    internal static let passwordMustMoreEightCharacters = L10n.tr("Localizable", "AuthViewController.passwordMustMoreEightCharacters")
    internal enum MailAddressLabel {
      /// メールアドレス
      internal static let text = L10n.tr("Localizable", "AuthViewController.MailAddressLabel.text")
    }
    internal enum MailAddressTextField {
      /// patience@example.com
      internal static let placeholder = L10n.tr("Localizable", "AuthViewController.MailAddressTextField.placeholder")
    }
    internal enum PasswordLabel {
      /// パスワード
      internal static let text = L10n.tr("Localizable", "AuthViewController.PasswordLabel.text")
    }
    internal enum PasswordTextField {
      /// patience123
      internal static let placeholder = L10n.tr("Localizable", "AuthViewController.PasswordTextField.placeholder")
    }
    internal enum SignIn {
      internal enum ChangeDesctiptionLabel {
        /// アカウントを持っていない場合
        internal static let text = L10n.tr("Localizable", "AuthViewController.SignIn.ChangeDesctiptionLabel.text")
      }
      internal enum ChangeViewLabel {
        /// 登録はこちら
        internal static let text = L10n.tr("Localizable", "AuthViewController.SignIn.ChangeViewLabel.text")
      }
      internal enum DecideButton {
        /// ログインする
        internal static let title = L10n.tr("Localizable", "AuthViewController.SignIn.DecideButton.title")
      }
      internal enum TitleLabel {
        /// ログイン画面
        internal static let text = L10n.tr("Localizable", "AuthViewController.SignIn.TitleLabel.text")
      }
    }
    internal enum SignUp {
      internal enum ChangeDesctiptionLabel {
        /// すでにアカウントを持っている場合
        internal static let text = L10n.tr("Localizable", "AuthViewController.SignUp.ChangeDesctiptionLabel.text")
      }
      internal enum ChangeViewLabel {
        /// ログイン
        internal static let text = L10n.tr("Localizable", "AuthViewController.SignUp.ChangeViewLabel.text")
      }
      internal enum DecideButton {
        /// 新規登録する
        internal static let title = L10n.tr("Localizable", "AuthViewController.SignUp.DecideButton.title")
      }
      internal enum TitleLabel {
        /// 新規登録画面
        internal static let text = L10n.tr("Localizable", "AuthViewController.SignUp.TitleLabel.text")
      }
    }
  }

  internal enum CategoriesView {
    /// カテゴリー
    internal static let title = L10n.tr("Localizable", "CategoriesView.title")
  }

  internal enum CategoryIcon {
    internal enum Title {
      /// 飲み代
      internal static let beer = L10n.tr("Localizable", "CategoryIcon.Title.beer")
      /// 交通費
      internal static let bus = L10n.tr("Localizable", "CategoryIcon.Title.bus")
      /// 交際費
      internal static let child = L10n.tr("Localizable", "CategoryIcon.Title.child")
      /// 趣味代
      internal static let paintBrush = L10n.tr("Localizable", "CategoryIcon.Title.paintBrush")
      /// 飲食費
      internal static let pizzaSlice = L10n.tr("Localizable", "CategoryIcon.Title.pizzaSlice")
      /// 服代
      internal static let tshirt = L10n.tr("Localizable", "CategoryIcon.Title.tshirt")
    }
  }

  internal enum DateSelectStyleCheckView {
    internal enum DescriptionLabel {
      /// 月毎に分析する
      internal static let text = L10n.tr("Localizable", "DateSelectStyleCheckView.DescriptionLabel.text")
    }
  }

  internal enum DateView {
    /// 日付
    internal static let title = L10n.tr("Localizable", "DateView.title")
  }

  internal enum ErrorMessageBuilder {
    /// 正しいメールアドレスを入力してください
    internal static let invalidMailAddress = L10n.tr("Localizable", "ErrorMessageBuilder.invalidMailAddress")
    /// パスワードが短すぎます。８文字以上入力してください。
    internal static let passwordTooShort = L10n.tr("Localizable", "ErrorMessageBuilder.passwordTooShort")
    /// 既に使われているメールアドレスです
    internal static let takenMailAddress = L10n.tr("Localizable", "ErrorMessageBuilder.takenMailAddress")
    /// メールアドレスまたはパスワードが間違っています
    internal static let userNotFound = L10n.tr("Localizable", "ErrorMessageBuilder.userNotFound")
    internal enum SubMessage {
      /// (インターネット接続がありません)
      internal static let cannotConnectNetwork = L10n.tr("Localizable", "ErrorMessageBuilder.SubMessage.cannotConnectNetwork")
    }
  }

  internal enum MemoView {
    /// メモ
    internal static let title = L10n.tr("Localizable", "MemoView.title")
    internal enum MemoTextView {
      /// 未入力
      internal static let placeholder = L10n.tr("Localizable", "MemoView.MemoTextView.placeholder")
    }
  }

  internal enum MoneyView {
    /// 金額
    internal static let title = L10n.tr("Localizable", "MoneyView.title")
    internal enum MoneyTextField {
      /// 0
      internal static let placeholder = L10n.tr("Localizable", "MoneyView.MoneyTextField.placeholder")
    }
    internal enum YenLabel {
      /// 円
      internal static let text = L10n.tr("Localizable", "MoneyView.YenLabel.text")
    }
  }

  internal enum PatienceAnalyzePresenter {
    internal enum StatusNotification {
      internal enum Error {
        /// データの取得に失敗しました
        internal static let title = L10n.tr("Localizable", "PatienceAnalyzePresenter.StatusNotification.Error.title")
      }
    }
  }

  internal enum PatienceAnalyzeViewController {
    internal enum MonthLabel {
      /// 表示する年月
      internal static let text = L10n.tr("Localizable", "PatienceAnalyzeViewController.MonthLabel.text")
    }
    internal enum NavigationItem {
      /// 分析画面
      internal static let title = L10n.tr("Localizable", "PatienceAnalyzeViewController.NavigationItem.title")
    }
    internal enum SelectedMonthLabel {
      /// %@年%d月の節約合計額
      internal static func text(_ p1: Any, _ p2: Int) -> String {
        return L10n.tr("Localizable", "PatienceAnalyzeViewController.selectedMonthLabel.text", String(describing: p1), p2)
      }
    }
    internal enum SumMoneyLabel {
      /// %d円
      internal static func text(_ p1: Int) -> String {
        return L10n.tr("Localizable", "PatienceAnalyzeViewController.sumMoneyLabel.text", p1)
      }
    }
  }

  internal enum PatienceCalendarViewController {
    internal enum Alert {
      /// 項目を登録しますか？
      internal static let alertMessage = L10n.tr("Localizable", "PatienceCalendarViewController.Alert.alertMessage")
      /// 日付から選択
      internal static let alertTitle = L10n.tr("Localizable", "PatienceCalendarViewController.Alert.alertTitle")
      internal enum CancelAction {
        /// 登録しない
        internal static let title = L10n.tr("Localizable", "PatienceCalendarViewController.Alert.CancelAction.title")
      }
      internal enum RegisterAction {
        /// 登録する
        internal static let title = L10n.tr("Localizable", "PatienceCalendarViewController.Alert.RegisterAction.title")
      }
    }
    internal enum NavigationItem {
      /// カレンダー
      internal static let title = L10n.tr("Localizable", "PatienceCalendarViewController.NavigationItem.title")
    }
  }

  internal enum PatienceChartsView {
    internal enum Charts {
      /// 分析チャート(単位：円)
      internal static let description = L10n.tr("Localizable", "PatienceChartsView.Charts.description")
    }
  }

  internal enum PatienceInputViewController {
    internal enum Alert {
      /// 金額が０円ですがこのまま登録しますか？
      internal static let title = L10n.tr("Localizable", "PatienceInputViewController.Alert.title")
      internal enum CancelAction {
        /// キャンセル
        internal static let title = L10n.tr("Localizable", "PatienceInputViewController.Alert.CancelAction.title")
      }
      internal enum OkAction {
        /// OK
        internal static let title = L10n.tr("Localizable", "PatienceInputViewController.Alert.OkAction.title")
      }
    }
    internal enum InputButton {
      internal enum Register {
        /// 登録する
        internal static let title = L10n.tr("Localizable", "PatienceInputViewController.InputButton.Register.title")
      }
      internal enum Update {
        /// 更新する
        internal static let title = L10n.tr("Localizable", "PatienceInputViewController.InputButton.Update.title")
      }
    }
    internal enum NavigationItem {
      /// 登録画面
      internal static let title = L10n.tr("Localizable", "PatienceInputViewController.NavigationItem.title")
    }
  }

  internal enum PatienceRegisterPresenter {
    internal enum StatusNotification {
      internal enum RegisterFailure {
        /// 登録に失敗しました
        internal static let title = L10n.tr("Localizable", "PatienceRegisterPresenter.StatusNotification.RegisterFailure.title")
      }
      internal enum RegisterSuccess {
        /// 登録に成功しました
        internal static let title = L10n.tr("Localizable", "PatienceRegisterPresenter.StatusNotification.RegisterSuccess.title")
      }
    }
  }

  internal enum PatienceUpdatePresenter {
    internal enum StatusNotification {
      internal enum UpdateFailure {
        /// 更新に失敗しました
        internal static let title = L10n.tr("Localizable", "PatienceUpdatePresenter.StatusNotification.UpdateFailure.title")
      }
      internal enum UpdateSuccess {
        /// 更新に成功しました
        internal static let title = L10n.tr("Localizable", "PatienceUpdatePresenter.StatusNotification.UpdateSuccess.title")
      }
    }
  }

  internal enum RecordListHeaderView {
    internal enum MonthLabel {
      /// %d月の節約合計額
      internal static func text(_ p1: Int) -> String {
        return L10n.tr("Localizable", "RecordListHeaderView.MonthLabel.text", p1)
      }
    }
    internal enum SumMoneyLabel {
      /// %d円
      internal static func text(_ p1: Int) -> String {
        return L10n.tr("Localizable", "RecordListHeaderView.sumMoneyLabel.text", p1)
      }
    }
  }
}
// swiftlint:enable explicit_type_interface function_parameter_count identifier_name line_length
// swiftlint:enable nesting type_body_length type_name vertical_whitespace_opening_braces

// MARK: - Implementation Details

extension L10n {
  private static func tr(_ table: String, _ key: String, _ args: CVarArg...) -> String {
    let format = BundleToken.bundle.localizedString(forKey: key, value: nil, table: table)
    return String(format: format, locale: Locale.current, arguments: args)
  }
}

// swiftlint:disable convenience_type
private final class BundleToken {
  static let bundle: Bundle = {
    #if SWIFT_PACKAGE
    return Bundle.module
    #else
    return Bundle(for: BundleToken.self)
    #endif
  }()
}
// swiftlint:enable convenience_type
