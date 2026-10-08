import SwiftUI

struct IngredientRow: View {
    let ingredient: Ingredient
    let servings: Int
    let baseServings: Int

    var body: some View {
        HStack(spacing: 12) {
            Text(ingredient.displayAmount(servings: servings, baseServings: baseServings))
                .font(.system(size: 16, weight: .semibold))
                .foregroundStyle(Color.appAccent)
                .frame(width: 74, alignment: .leading)

            Text(ingredient.name)
                .font(.system(size: 16))
                .foregroundStyle(Color.appInk)

            Spacer()
        }
        .padding(.vertical, 11)
        .padding(.horizontal, 16)
    }
}
