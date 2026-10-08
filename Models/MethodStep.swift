import Foundation

struct MethodStep: Identifiable {
    let id: UUID
    let stepNumber: Int
    let description: String
    let timerMinutes: Int?

    init(id: UUID = UUID(), stepNumber: Int, description: String, timerMinutes: Int? = nil) {
        self.id = id
        self.stepNumber = stepNumber
        self.description = description
        self.timerMinutes = timerMinutes
    }
}
