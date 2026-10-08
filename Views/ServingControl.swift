import SwiftUI

struct ServingControl: View {
    @Binding var servings: Int

    var body: some View {
        HStack {
            Text("Servings")
                .font(.subheadline)
                .foregroundStyle(.primary)

            Spacer()

            HStack(spacing: 16) {
                Button {
                    if servings > 1 { servings -= 1 }
                } label: {
                    Image(systemName: "minus")
                        .font(.caption.bold())
                        .frame(width: 28, height: 28)
                        .background(Color(.systemGray5))
                        .clipShape(Circle())
                }
                .buttonStyle(.plain)
                .disabled(servings <= 1)

                Text("\(servings)")
                    .font(.subheadline.weight(.medium))
                    .frame(minWidth: 20)

                Button {
                    servings += 1
                } label: {
                    Image(systemName: "plus")
                        .font(.caption.bold())
                        .frame(width: 28, height: 28)
                        .background(Color(.systemGray5))
                        .clipShape(Circle())
                }
                .buttonStyle(.plain)
            }
        }
        .padding(12)
        .background(Color(.systemBackground))
        .clipShape(RoundedRectangle(cornerRadius: 10))
        .overlay(
            RoundedRectangle(cornerRadius: 10)
                .stroke(Color(.systemGray4), lineWidth: 1)
        )
    }
}
