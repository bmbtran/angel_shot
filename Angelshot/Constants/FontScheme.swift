import Foundation
import SwiftUI

class FontScheme: NSObject {
    static func kInterBlack(size: CGFloat) -> Font {
        return Font.custom(FontConstant.kInterBlack, size: size)
    }

    static func kInterSemiBold(size: CGFloat) -> Font {
        return Font.custom(FontConstant.kInterSemiBold, size: size)
    }

    static func kInterExtraBold(size: CGFloat) -> Font {
        return Font.custom(FontConstant.kInterExtraBold, size: size)
    }

    static func kInterBold(size: CGFloat) -> Font {
        return Font.custom(FontConstant.kInterBold, size: size)
    }

    static func kInterRegular(size: CGFloat) -> Font {
        return Font.custom(FontConstant.kInterRegular, size: size)
    }

    static func kInterMedium(size: CGFloat) -> Font {
        return Font.custom(FontConstant.kInterMedium, size: size)
    }

    static func kInterLight(size: CGFloat) -> Font {
        return Font.custom(FontConstant.kInterLight, size: size)
    }

    static func kNunitoRegular(size: CGFloat) -> Font {
        return Font.custom(FontConstant.kNunitoRegular, size: size)
    }

    static func kNunitoBold(size: CGFloat) -> Font {
        return Font.custom(FontConstant.kNunitoBold, size: size)
    }

    static func fontFromConstant(fontName: String, size: CGFloat) -> Font {
        var result = Font.system(size: size)

        switch fontName {
        case "kInterBlack":
            result = self.kInterBlack(size: size)
        case "kInterSemiBold":
            result = self.kInterSemiBold(size: size)
        case "kInterExtraBold":
            result = self.kInterExtraBold(size: size)
        case "kInterBold":
            result = self.kInterBold(size: size)
        case "kInterRegular":
            result = self.kInterRegular(size: size)
        case "kInterMedium":
            result = self.kInterMedium(size: size)
        case "kInterLight":
            result = self.kInterLight(size: size)
        case "kNunitoRegular":
            result = self.kNunitoRegular(size: size)
        case "kNunitoBold":
            result = self.kNunitoBold(size: size)
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
        static let kInterExtraBold: String = "Inter-ExtraBold"
        /**
         * Please Add this fonts Manually
         */
        static let kInterBold: String = "Inter-Bold"
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
        static let kInterLight: String = "Inter-Light"
        /**
         * Please Add this fonts Manually
         */
        static let kNunitoRegular: String = "Nunito-Regular"
        /**
         * Please Add this fonts Manually
         */
        static let kNunitoBold: String = "Nunito-Bold"
    }
}
