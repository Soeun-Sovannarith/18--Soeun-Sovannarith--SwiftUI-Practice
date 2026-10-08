import SwiftUI

struct RecipeHomeView: View {
    @State private var searchText = ""

    /// Derived from the original array, which is never modified.
    private var filteredRecipes: [Recipe] {
        searchText.isEmpty
            ? sampleRecipes
            : sampleRecipes.filter { $0.name.localizedCaseInsensitiveContains(searchText) }
    }

    private let columns = [
        GridItem(.flexible(), spacing: 12),
        GridItem(.flexible(), spacing: 12),
    ]

    var body: some View {
        NavigationStack {
            ScrollView {
                VStack(alignment: .leading, spacing: 16) {
                    headerSection
                    searchField
                    recipeGrid
                }
                .padding(.horizontal, 20)
                .padding(.top, 8)
                .padding(.bottom, 24)
            }
            .background(Color.appBackground)
            .toolbar(.hidden, for: .navigationBar)
            .navigationDestination(for: Recipe.self) { recipe in
                RecipeDetailView(recipe: recipe)
            }
        }
    }

    private var headerSection: some View {
        VStack(alignment: .leading, spacing: 2) {
            Text(dateLabel)
                .font(.system(size: 13, weight: .semibold))
                .kerning(0.4)
                .foregroundStyle(Color.appSecondary)

            Text("What’s cooking?")
                .font(.serifTitle(34))
                .foregroundStyle(Color.appInk)
        }
        .padding(.top, 8)
    }

    private var dateLabel: String {
        let formatter = DateFormatter()
        formatter.locale = Locale(identifier: "en_US")
        formatter.dateFormat = "EEEE, MMM d"
        return formatter.string(from: Date()).uppercased()
    }

    private var searchField: some View {
        HStack(spacing: 8) {
            Image(systemName: "magnifyingglass")
                .foregroundStyle(Color.appSecondary)
            TextField("Search recipes", text: $searchText)
                .font(.system(size: 17))
        }
        .padding(.horizontal, 12)
        .frame(height: 40)
        .background(Color.appFill)
        .clipShape(RoundedRectangle(cornerRadius: 12))
    }

    private var recipeGrid: some View {
        LazyVGrid(columns: columns, spacing: 18) {
            ForEach(filteredRecipes) { recipe in
                NavigationLink(value: recipe) {
                    RecipeCard(recipe: recipe)
                }
                .buttonStyle(.plain)
            }
        }
    }
}
