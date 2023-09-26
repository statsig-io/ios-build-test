import XCTest
@testable import CocoapodsExample
@testable import Statsig

final class CocoapodsExampleTests: XCTestCase {

    func testStatsig() throws {
        let opts = StatsigOptions(api: "http://localhost")
        Statsig.start(sdkKey: "client-key", options: opts)

        XCTAssertNotNil(Statsig.client)
    }

}
