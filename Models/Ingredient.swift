import Foundation

struct Ingredient: Identifiable, Hashable {
    let id: UUID
    let baseAmount: Double
    let unit: String
    let name: String

    init(id: UUID = UUID(), baseAmount: Double, unit: String = "", name: String) {
        self.id = id
        self.baseAmount = baseAmount
        self.unit = unit
        self.name = name
    }

    /// Scales the base amount to the chosen servings without changing the original recipe data.
    func displayAmount(servings: Int, baseServings: Int) -> String {
        let scaled = baseAmount * Double(servings) / Double(baseServings)
        let rounded = scaled.rounded()
        let numericPart = abs(scaled - rounded) < 0.001
            ? String(Int(rounded))
            : String(format: "%.1f", scaled)
        return unit.isEmpty ? numericPart : "\(numericPart) \(unit)"
    }
}
