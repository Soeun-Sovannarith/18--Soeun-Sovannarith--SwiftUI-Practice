import SwiftUI

struct MethodStepCard: View {
    let step: MethodStep

    var body: some View {
        HStack(alignment: .top, spacing: 12) {
            Text("\(step.stepNumber)")
                .font(.caption.bold())
                .foregroundStyle(.white)
                .frame(width: 22, height: 22)
                .background(Color.orange)
                .clipShape(Circle())

            VStack(alignment: .leading, spacing: 4) {
                Text(step.description)
                    .font(.subheadline)
                    .foregroundStyle(.primary)
                    .fixedSize(horizontal: false, vertical: true)

                if let minutes = step.timerMinutes {
                    Label("\(minutes) min timer", systemImage: "timer")
                        .font(.caption)
                        .foregroundStyle(.secondary)
                }
            }

            Spacer()
        }
        .padding(12)
        .background(Color(.systemBackground))
        .clipShape(RoundedRectangle(cornerRadius: 10))
    }
}
