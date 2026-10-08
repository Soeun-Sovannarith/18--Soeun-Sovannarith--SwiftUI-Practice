import SwiftUI

struct Recipe: Identifiable {
    let id: UUID
    let name: String
    let category: String
    let cookingTimeMinutes: Int
    let baseServings: Int
    let description: String
    let emoji: String
    let accentColor: Color
    let ingredients: [Ingredient]
    let steps: [MethodStep]

    init(
        id: UUID = UUID(),
        name: String,
        category: String,
        cookingTimeMinutes: Int,
        baseServings: Int,
        description: String,
        emoji: String,
        accentColor: Color,
        ingredients: [Ingredient],
        steps: [MethodStep]
    ) {
        self.id = id
        self.name = name
        self.category = category
        self.cookingTimeMinutes = cookingTimeMinutes
        self.baseServings = baseServings
        self.description = description
        self.emoji = emoji
        self.accentColor = accentColor
        self.ingredients = ingredients
        self.steps = steps
    }
}
