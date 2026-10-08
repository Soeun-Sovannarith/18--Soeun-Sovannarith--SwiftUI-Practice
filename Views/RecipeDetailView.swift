import SwiftUI

struct RecipeDetailView: View {
    let recipe: Recipe
    @State private var servings: Int
    @Environment(\.dismiss) private var dismiss

    init(recipe: Recipe) {
        self.recipe = recipe
        self._servings = State(initialValue: recipe.baseServings)
    }

    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 0) {
                heroSection

                VStack(alignment: .leading, spacing: 20) {
                    infoSection
                    servingSection
                    ingredientSection
                    methodSection
                }
                .padding(16)
                .padding(.bottom, 24)
            }
        }
        .ignoresSafeArea(edges: .top)
        .toolbar(.hidden, for: .navigationBar)
        .overlay(alignment: .topLeading) {
            Button {
                dismiss()
            } label: {
                Image(systemName: "chevron.left")
                    .font(.body.bold())
                    .foregroundStyle(.white)
                    .frame(width: 36, height: 36)
                    .background(.black.opacity(0.35))
                    .clipShape(Circle())
            }
            .padding(.top, 54)
            .padding(.leading, 16)
        }
    }

    private var heroSection: some View {
        ZStack {
            LinearGradient(
                colors: [
                    recipe.accentColor.opacity(0.5),
                    recipe.accentColor.opacity(0.9)
                ],
                startPoint: .topLeading,
                endPoint: .bottomTrailing
            )
            Text(recipe.emoji)
                .font(.system(size: 110))
        }
        .frame(height: 280)
    }

    private var infoSection: some View {
        VStack(alignment: .leading, spacing: 6) {
            HStack(spacing: 10) {
                Text(recipe.category)
                    .font(.caption.weight(.semibold))
                    .foregroundStyle(recipe.accentColor)

                HStack(spacing: 4) {
                    Image(systemName: "clock")
                        .font(.caption)
                    Text("\(recipe.cookingTimeMinutes) min")
                        .font(.caption)
                }
                .foregroundStyle(.secondary)
            }

            Text(recipe.name)
                .font(.title.bold())
                .foregroundStyle(.primary)

            Text(recipe.description)
                .font(.subheadline)
                .foregroundStyle(.secondary)
                .fixedSize(horizontal: false, vertical: true)
        }
    }

    private var servingSection: some View {
        VStack(alignment: .leading, spacing: 6) {
            ServingControl(servings: $servings)

            Text("Recipe serves \(recipe.baseServings) · amounts scaled ×\(scalingLabel)")
                .font(.caption)
                .foregroundStyle(.secondary)
        }
    }

    private var scalingLabel: String {
        let multiplier = Double(servings) / Double(recipe.baseServings)
        let rounded = multiplier.rounded()
        if abs(multiplier - rounded) < 0.001 {
            return String(Int(rounded))
        }
        return String(format: "%.1f", multiplier)
    }

    private var ingredientSection: some View {
        VStack(alignment: .leading, spacing: 8) {
            HStack {
                Text("Ingredients")
                    .font(.headline)
                Spacer()
                Text("\(recipe.ingredients.count) items")
                    .font(.caption)
                    .foregroundStyle(.secondary)
            }

            VStack(spacing: 0) {
                ForEach(Array(recipe.ingredients.enumerated()), id: \.element.id) { index, ingredient in
                    IngredientRow(
                        ingredient: ingredient,
                        servings: servings,
                        baseServings: recipe.baseServings
                    )
                    if index < recipe.ingredients.count - 1 {
                        Divider()
                            .padding(.horizontal, 12)
                    }
                }
            }
            .background(Color(.systemBackground))
            .clipShape(RoundedRectangle(cornerRadius: 10))
            .overlay(
                RoundedRectangle(cornerRadius: 10)
                    .stroke(Color(.systemGray5), lineWidth: 1)
            )
        }
    }

    private var methodSection: some View {
        VStack(alignment: .leading, spacing: 10) {
            Text("Method")
                .font(.headline)

            ForEach(recipe.steps) { step in
                MethodStepCard(step: step)
            }
        }
    }
}
