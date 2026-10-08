import SwiftUI

struct ServingControl: View {
    /// Owned by RecipeDetailView; this child reads and changes it through the binding.
    @Binding var servings: Int

    var body: some View {
        HStack {
            Text("Servings")
                .font(.system(size: 17))
                .foregroundStyle(Color.appInk)

            Spacer()

            HStack(spacing: 12) {
                Button {
                    if servings > 1 { servings -= 1 }
                } label: {
                    stepIcon("minus")
                }
                .disabled(servings <= 1)
                .accessibilityLabel("Fewer servings")

                Text("\(servings)")
                    .font(.system(size: 17, weight: .semibold))
                    .frame(minWidth: 22)

                Button {
                    servings += 1
                } label: {
                    stepIcon("plus")
                }
                .accessibilityLabel("More servings")
            }
            .buttonStyle(.plain)
        }
        .padding(.vertical, 10)
        .padding(.leading, 16)
        .padding(.trailing, 12)
        .background(Color.white)
        .clipShape(RoundedRectangle(cornerRadius: 16))
    }

    private func stepIcon(_ systemName: String) -> some View {
        Image(systemName: systemName)
            .font(.system(size: 14, weight: .bold))
            .foregroundStyle(Color.appInk)
            .frame(width: 32, height: 32)
            .background(Color.appFill)
            .clipShape(Circle())
    }
}
