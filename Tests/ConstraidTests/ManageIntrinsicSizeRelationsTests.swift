import XCTest
import Constraid

class ManageIntrinsicSizeRelationsTests: XCTestCase {
    func testKeepIntrinsicHeight() {
        let viewOne = UIView()

        Constraid.keepIntrinsicHeight(of: viewOne, priority: Constraid.LayoutPriority(rawValue: 284))

        XCTAssertEqual(viewOne.contentCompressionResistancePriority(for: .vertical), LayoutPriority(rawValue: LayoutPriority.RawValue(284)))
        XCTAssertEqual(viewOne.contentHuggingPriority(for: .vertical), LayoutPriority(rawValue: LayoutPriority.RawValue(284)))
    }

    func testKeepIntrinsicWidth() {
        let viewOne = UIView()

        Constraid.keepIntrinsicWidth(of: viewOne, priority: Constraid.LayoutPriority(rawValue: 284))

        XCTAssertEqual(viewOne.contentCompressionResistancePriority(for: .horizontal), LayoutPriority(rawValue: LayoutPriority.RawValue(284)))
        XCTAssertEqual(viewOne.contentHuggingPriority(for: .horizontal), LayoutPriority(rawValue: LayoutPriority.RawValue(284)))
    }

    func testKeepIntrinsicSize() {
        let viewOne = UIView()

        Constraid.keepIntrinsicSize(of: viewOne, priority: Constraid.LayoutPriority(rawValue: 284))

        XCTAssertEqual(viewOne.contentCompressionResistancePriority(for: .vertical), LayoutPriority(rawValue: LayoutPriority.RawValue(284)))
        XCTAssertEqual(viewOne.contentHuggingPriority(for: .vertical), LayoutPriority(rawValue: LayoutPriority.RawValue(284)))
        XCTAssertEqual(viewOne.contentCompressionResistancePriority(for: .horizontal), LayoutPriority(rawValue: LayoutPriority.RawValue(284)))
        XCTAssertEqual(viewOne.contentHuggingPriority(for: .horizontal), LayoutPriority(rawValue: LayoutPriority.RawValue(284)))
    }
}
