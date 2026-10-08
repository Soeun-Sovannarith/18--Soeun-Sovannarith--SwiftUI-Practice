import Foundation

struct Recipe: Identifiable, Hashable {
    let id: UUID
    let name: String
    let category: String
    let cookingTimeMinutes: Int
    let baseServings: Int
    let description: String
    let imageName: String
    let ingredients: [Ingredient]
    let steps: [MethodStep]

    init(
        id: UUID = UUID(),
        name: String,
        category: String,
        cookingTimeMinutes: Int,
        baseServings: Int,
        description: String,
        imageName: String,
        ingredients: [Ingredient],
        steps: [MethodStep]
    ) {
        self.id = id
        self.name = name
        self.category = category
        self.cookingTimeMinutes = cookingTimeMinutes
        self.baseServings = baseServings
        self.description = description
        self.imageName = imageName
        self.ingredients = ingredients
        self.steps = steps
    }
}
