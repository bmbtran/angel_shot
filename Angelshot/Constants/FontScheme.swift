import Foundation
import SwiftUI

class FontScheme: NSObject {
    static func kInterBlack(size: CGFloat) -> Font {
        return Font.custom(FontConstant.kInterBlack, size: size)
    }

    static func kInterSemiBold(size: CGFloat) -> Font {
        return Font.custom(FontConstant.kInterSemiBold, size: size)
    }

    static func kInterRegular(size: CGFloat) -> Font {
        return Font.custom(FontConstant.kInterRegular, size: size)
    }

    static func kInterMedium(size: CGFloat) -> Font {
        return Font.custom(FontConstant.kInterMedium, size: size)
    }

    static func kInterExtraBold(size: CGFloat) -> Font {
        return Font.custom(FontConstant.kInterExtraBold, size: size)
    }

    static func fontFromConstant(fontName: String, size: CGFloat) -> Font {
        var result = Font.system(size: size)

        switch fontName {
        case "kInterBlack":
            result = self.kInterBlack(size: size)
        case "kInterSemiBold":
            result = self.kInterSemiBold(size: size)
        case "kInterRegular":
            result = self.kInterRegular(size: size)
        case "kInterMedium":
            result = self.kInterMedium(size: size)
        case "kInterExtraBold":
            result = self.kInterExtraBold(size: size)
        default:
            result = self.kInterBlack(size: size)
        }
        return result
    }

    enum FontConstant {
        /**
         * Please Add this fonts Manually
         */
        static let kInterBlack: String = "Inter-Black"
        /**
         * Please Add this fonts Manually
         */
        static let kInterSemiBold: String = "Inter-SemiBold"
        /**
         * Please Add this fonts Manually
         */
        static let kInterRegular: String = "InterRegular"
        /**
         * Please Add this fonts Manually
         */
        static let kInterMedium: String = "Inter-Medium"
        /**
         * Please Add this fonts Manually
         */
        static let kInterExtraBold: String = "Inter-ExtraBold"
    }
}
