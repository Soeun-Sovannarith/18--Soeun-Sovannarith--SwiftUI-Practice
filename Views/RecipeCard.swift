import SwiftUI

struct RecipeCard: View {
    let recipe: Recipe

    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            Image(recipe.imageName)
                .resizable()
                .scaledToFill()
                .frame(height: 148)
                .frame(maxWidth: .infinity)
                .clipShape(RoundedRectangle(cornerRadius: 18))

            VStack(alignment: .leading, spacing: 2) {
                Text(recipe.name)
                    .font(.system(size: 15, weight: .semibold))
                    .foregroundStyle(Color.appInk)
                    .lineLimit(1)

                Text("\(recipe.cookingTimeMinutes) min · Serves \(recipe.baseServings)")
                    .font(.system(size: 13))
                    .foregroundStyle(Color.appSecondary)
            }
            .padding(.horizontal, 2)
        }
    }
}
