import SwiftUI

struct IngredientRow: View {
    let ingredient: Ingredient
    let servings: Int
    let baseServings: Int

    var body: some View {
        HStack(spacing: 12) {
            Text(ingredient.displayAmount(servings: servings, baseServings: baseServings))
                .font(.subheadline.weight(.medium))
                .foregroundStyle(.orange)
                .frame(width: 64, alignment: .leading)

            Text(ingredient.name)
                .font(.subheadline)
                .foregroundStyle(.primary)

            Spacer()
        }
        .padding(.vertical, 10)
        .padding(.horizontal, 12)
    }
}
