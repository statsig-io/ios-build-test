import XCTest
@testable import SwiftPackageManagerExample

@testable import Statsig


final class SwiftPackageManagerExampleTests: XCTestCase {

    func testStatsig() throws {
        let opts = StatsigOptions(api: "http://localhost")
        Statsig.start(sdkKey: "client-key", options: opts)

        XCTAssertNotNil(Statsig.client)
    }

    func testOverrides() {
        let opts = StatsigOptions(api: "http://localhost")
        Statsig.start(sdkKey: "client-key", options: opts)

        var result = Statsig.checkGate("a_gate")
        XCTAssertFalse(result)

        Statsig.overrideGate("a_gate", value: true)

        result = Statsig.checkGate("a_gate")
        XCTAssertTrue(result)
    }

}
