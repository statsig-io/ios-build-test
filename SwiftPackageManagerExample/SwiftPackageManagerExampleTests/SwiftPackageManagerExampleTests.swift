import XCTest
@testable import SwiftPackageManagerExample

@testable import Statsig


final class SwiftPackageManagerExampleTests: XCTestCase {

    func testStatsig() throws {
        let opts = StatsigOptions(api: "http://localhost")
        Statsig.start(sdkKey: "client-key", options: opts)

        XCTAssertNotNil(Statsig.client)
    }

}
