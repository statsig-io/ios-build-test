import UIKit
import Statsig

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    func application(_ application: UIApplication,
                     didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {

        Statsig.start(sdkKey: "client-key") { err in
            if let err = err {
                print("[Statsig] Error: \(err)")
                return
            }


            let check = Statsig.checkGate("a_gate")
            print("[Statsig] a_gate: \(check)")
        }

        return true
    }

}

