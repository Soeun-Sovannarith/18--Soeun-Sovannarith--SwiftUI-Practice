import SwiftUI

struct MethodStepCard: View {
    let step: MethodStep

    var body: some View {
        HStack(alignment: .top, spacing: 12) {
            Text("\(step.stepNumber)")
                .font(.system(size: 13, weight: .bold))
                .foregroundStyle(Color.appAccent)
                .frame(width: 24, height: 24)
                .background(Color.appAccent.opacity(0.12))
                .clipShape(Circle())

            VStack(alignment: .leading, spacing: 6) {
                Text(step.description)
                    .font(.system(size: 15))
                    .foregroundStyle(Color.appInk)
                    .fixedSize(horizontal: false, vertical: true)

                if let minutes = step.timerMinutes {
                    Label("\(minutes) min timer", systemImage: "clock")
                        .font(.system(size: 12, weight: .semibold))
                        .foregroundStyle(Color.appSecondary)
                }
            }

            Spacer()
        }
        .padding(.vertical, 14)
        .padding(.horizontal, 16)
        .background(Color.white)
        .clipShape(RoundedRectangle(cornerRadius: 16))
    }
}
