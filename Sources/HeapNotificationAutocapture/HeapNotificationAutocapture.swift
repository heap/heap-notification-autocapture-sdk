import HeapNotificationAutocaptureImplementation
import HeapSwiftCore

extension Heap {
    public typealias NotificationAutocaptureSource = HeapIOSNotificationAutocapture
}

@objc
public class HeapIOSNotificationAutocapture: NSObject {

    /// Registers the notification autocapture source.
    ///
    /// Notifications will not be captured until `Heap.shared.startRecording` is called.  To
    /// ensure app launching notification are captured, three things must occur before the app
    /// finishes launching:
    ///
    /// - `UNUserNotificationCenter.current().delegate` must be set with a delegate that
    ///   implements `userNotificationCenter(_:didReceive:withCompletionHandler:)` or
    ///   `userNotificationCenter(_:didReceive:) async`.
    /// - `Heap.shared.startRecording` must be called.
    /// - This method must be called.
    ///
    /// These functions do not need to be called in any specific order.
    ///
    /// - Parameters:
    ///   - captureTitle: If true, notification titles will be included in events.  Only use
    ///     this setting if there is no PII in the title.
    ///   - captureBody: If true, notification bodies will be included in events.  Only use
    ///     this setting if there is no PII in the body.
    @objc(registerWithCaptureTitle:captureBody:)
    public static func register(captureTitle: Bool = false, captureBody: Bool = false)  {
        __HeapNotificationAutocaptureImplementation.register(coreSdk: Heap.shared, captureTitle: captureTitle, captureBody: captureBody)
    }
    
    /// Starts capturing notifications immediately for cases where `startRecording` cannot be
    /// called immediately on app launch.
    ///
    /// This method is meant for internal use, specifically targeting cross-platform
    /// frameworks with asynchronous processing.  Since those platforms cannot guarantee that
    /// `register` and `startRecording` will be called before app the launch completes, this
    /// method captures initial notifications and sends them once the SDK is started.
    ///
    /// When the Heap SDK does start recording, only the notifications from the last 10 seconds
    /// will be sent.
    @objc
    public static func captureInitialNotifications() {
        // Capture notifications with a 10 second retention duration.
        __HeapNotificationAutocaptureImplementation.captureInitialNotifications(coreSdk: Heap.shared, retentionDuration: 10)
    }
    
    private override init() {
        super.init()
    }
}
