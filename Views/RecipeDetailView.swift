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
            VStack(spacing: 0) {
                heroSection

                VStack(alignment: .leading, spacing: 18) {
                    infoSection
                    servingSection
                    ingredientSection
                    methodSection
                }
                .padding(.horizontal, 20)
                .padding(.top, 24)
                .padding(.bottom, 32)
                .background(Color.appBackground)
                .clipShape(RoundedRectangle(cornerRadius: 28))
                .padding(.top, -28)
            }
        }
        .background(Color.appBackground)
        .ignoresSafeArea(edges: .top)
        .toolbar(.hidden, for: .navigationBar)
        .overlay(alignment: .topLeading) {
            backButton
        }
    }

    private var heroSection: some View {
        Image(recipe.imageName)
            .resizable()
            .scaledToFill()
            .frame(height: 330)
            .frame(maxWidth: .infinity)
            .clipped()
    }

    private var backButton: some View {
        Button {
            dismiss()
        } label: {
            Image(systemName: "chevron.left")
                .font(.system(size: 17, weight: .semibold))
                .foregroundStyle(Color.appInk)
                .frame(width: 44, height: 44)
                .background(.ultraThinMaterial)
                .clipShape(Circle())
        }
        .padding(.leading, 16)
        .padding(.top, 4)
        .accessibilityLabel("Back")
    }

    private var infoSection: some View {
        VStack(alignment: .leading, spacing: 6) {
            HStack(spacing: 10) {
                Text(recipe.category.uppercased())
                    .kerning(0.5)
                    .foregroundStyle(Color.appAccent)

                Label("\(recipe.cookingTimeMinutes) min", systemImage: "clock")
                    .foregroundStyle(Color.appSecondary)
            }
            .font(.system(size: 13, weight: .semibold))

            Text(recipe.name)
                .font(.serifTitle(32))
                .foregroundStyle(Color.appInk)

            Text(recipe.description)
                .font(.system(size: 15))
                .foregroundStyle(Color.appSecondary)
                .fixedSize(horizontal: false, vertical: true)
        }
    }

    private var servingSection: some View {
        VStack(alignment: .leading, spacing: 6) {
            ServingControl(servings: $servings)

            Text("Recipe serves \(recipe.baseServings) · amounts scaled ×\(scalingLabel)")
                .font(.system(size: 12))
                .foregroundStyle(Color.appSecondary)
                .padding(.horizontal, 4)
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
            HStack(alignment: .firstTextBaseline) {
                Text("Ingredients")
                    .font(.system(size: 20, weight: .semibold))
                Spacer()
                Text("\(recipe.ingredients.count) items")
                    .font(.system(size: 13))
                    .foregroundStyle(Color.appSecondary)
            }
            .padding(.horizontal, 4)

            VStack(spacing: 0) {
                ForEach(recipe.ingredients) { ingredient in
                    IngredientRow(
                        ingredient: ingredient,
                        servings: servings,
                        baseServings: recipe.baseServings
                    )
                    if ingredient.id != recipe.ingredients.last?.id {
                        Divider()
                            .overlay(Color.appSeparator)
                    }
                }
            }
            .background(Color.white)
            .clipShape(RoundedRectangle(cornerRadius: 18))
        }
    }

    private var methodSection: some View {
        VStack(alignment: .leading, spacing: 8) {
            Text("Method")
                .font(.system(size: 20, weight: .semibold))
                .padding(.horizontal, 4)

            ForEach(recipe.steps) { step in
                MethodStepCard(step: step)
            }
        }
    }
}
