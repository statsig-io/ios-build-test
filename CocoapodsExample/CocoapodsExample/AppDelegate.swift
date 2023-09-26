import UIKit
import Statsig

@main
class AppDelegate: UIResponder, UIApplicationDelegate {


    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        window = UIWindow()

        window?.rootViewController = UIViewController()
        window?.makeKeyAndVisible()

        Statsig.start(sdkKey: "client-key") { err in
            guard let err = err else {
                return
            }

            print("[Statsig] Error: \(err)")
        }

        return true
    }

}

