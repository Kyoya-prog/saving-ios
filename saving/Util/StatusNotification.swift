import Foundation
import MarqueeLabel
import NotificationBanner

/// ユーザーへの状態通知
struct StatusNotification {
    /// Success通知
    static func notifySuccess(_ message: String, _ file: String = #file, _ function: String = #function, _ line: Int = #line) {
        let banner = StatusBarNotificationBanner(title: message, style: .success)
        banner.haptic = .light
        banner.duration = 0.25
        banner.show()
    }

    /// Error通知
    static func notifyError(_ message: String, _ file: String = #file, _ function: String = #function, _ line: Int = #line) {
        let banner = StatusBarNotificationBanner(title: message, style: .danger)
        if let titleLabel = banner.titleLabel as? MarqueeLabel {
            titleLabel.type = .left
            titleLabel.animationDelay = 1
        }
        banner.haptic = .heavy
        banner.duration = 2
        banner.show()
    }

    // MARK: - Private

    private init() {
    }
}
