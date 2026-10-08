import SwiftUI

/// The app's colours and title font, defined once so every view uses the same values.
extension Color {
    init(hex: UInt32, opacity: Double = 1) {
        self.init(
            .sRGB,
            red: Double((hex >> 16) & 0xFF) / 255,
            green: Double((hex >> 8) & 0xFF) / 255,
            blue: Double(hex & 0xFF) / 255,
            opacity: opacity
        )
    }

    static let appAccent = Color(hex: 0xC4502F)
    static let appBackground = Color(hex: 0xF6F2EC)
    static let appInk = Color(hex: 0x1D1B18)
    static let appSecondary = Color(hex: 0x3C3C43, opacity: 0.6)
    static let appSeparator = Color(hex: 0x3C3C43, opacity: 0.12)
    static let appFill = Color(hex: 0x767680, opacity: 0.12)
}

extension Font {
    /// Serif display font (New York) used for the large titles.
    static func serifTitle(_ size: CGFloat) -> Font {
        .system(size: size, weight: .semibold, design: .serif)
    }
}
