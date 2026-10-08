import SwiftUI

struct RecipeHomeView: View {
    @State private var searchText = ""

    private var filteredRecipes: [Recipe] {
        searchText.isEmpty
            ? sampleRecipes
            : sampleRecipes.filter { $0.name.localizedCaseInsensitiveContains(searchText) }
    }

    private let columns = [
        GridItem(.flexible()),
        GridItem(.flexible())
    ]

    var body: some View {
        NavigationStack {
            ScrollView {
                VStack(alignment: .leading, spacing: 16) {
                    headerSection
                    searchField
                    recipeGrid
                }
                .padding(.horizontal, 16)
                .padding(.top, 8)
                .padding(.bottom, 24)
            }
            .background(Color(.systemGroupedBackground))
            .navigationBarHidden(true)
        }
    }

    private var headerSection: some View {
        VStack(alignment: .leading, spacing: 2) {
            Text(dateLabel)
                .font(.caption.weight(.semibold))
                .foregroundStyle(.secondary)
                .kerning(0.5)

            Text("What's cooking?")
                .font(.largeTitle.bold())
                .foregroundStyle(.primary)
        }
        .padding(.top, 8)
    }

    private var dateLabel: String {
        let formatter = DateFormatter()
        formatter.dateFormat = "EEEE, MMM d"
        return formatter.string(from: Date()).uppercased()
    }

    private var searchField: some View {
        HStack(spacing: 8) {
            Image(systemName: "magnifyingglass")
                .foregroundStyle(.secondary)
            TextField("Search recipes", text: $searchText)
                .font(.subheadline)
        }
        .padding(.horizontal, 12)
        .padding(.vertical, 10)
        .background(Color(.systemBackground))
        .clipShape(RoundedRectangle(cornerRadius: 10))
    }

    private var recipeGrid: some View {
        LazyVGrid(columns: columns, spacing: 16) {
            ForEach(filteredRecipes) { recipe in
                NavigationLink {
                    RecipeDetailView(recipe: recipe)
                } label: {
                    RecipeCard(recipe: recipe)
                }
                .buttonStyle(.plain)
            }
        }
    }
}
