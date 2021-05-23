import UIKit

struct FontAwesome {
    enum Style {
        case solid, regular, brands

        var fontName: String {
            switch self {
            case .solid: return "FontAwesome5Free-Solid"
            case .regular: return "FontAwesome5Free-Regular"
            case .brands: return "FontAwesome5Brands-Regular"
            }
        }
    }
    static func font(size: CGFloat, style: Style = .regular) -> UIFont {
        guard let font = UIFont(name: style.fontName, size: size) else {
            fatalError("cannot initialize font '\(style.fontName)'")
        }
        return font
    }

    struct Icon {
        let code: String

        /// CategoryIcon
        static let pizzaSlice = Icon(code: "pizza-slice")
        static let bus = Icon(code: "bus")
        static let paintBrush = Icon(code: "paint-brush")
        static let beer = Icon(code: "beer")
        static let magic = Icon(code: "magic")
        static let child = Icon(code: "child")
        static let tshirt = Icon(code: "tshirt")
    }
}
