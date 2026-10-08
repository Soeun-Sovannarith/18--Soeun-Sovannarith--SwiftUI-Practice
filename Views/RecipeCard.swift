import SwiftUI

struct RecipeCard: View {
    let recipe: Recipe

    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            recipeImage
                .frame(height: 130)
                .clipped()

            VStack(alignment: .leading, spacing: 2) {
                Text(recipe.name)
                    .font(.subheadline)
                    .fontWeight(.semibold)
                    .foregroundStyle(.primary)
                    .lineLimit(1)

                Text("\(recipe.cookingTimeMinutes) min · Serves \(recipe.baseServings)")
                    .font(.caption)
                    .foregroundStyle(.secondary)
            }
            .padding(8)
        }
        .background(Color(.systemBackground))
        .clipShape(RoundedRectangle(cornerRadius: 12))
        .shadow(color: .black.opacity(0.08), radius: 4, x: 0, y: 2)
    }

    private var recipeImage: some View {
        ZStack {
            LinearGradient(
                colors: [
                    recipe.accentColor.opacity(0.5),
                    recipe.accentColor.opacity(0.85)
                ],
                startPoint: .topLeading,
                endPoint: .bottomTrailing
            )
            Text(recipe.emoji)
                .font(.system(size: 52))
        }
    }
}
