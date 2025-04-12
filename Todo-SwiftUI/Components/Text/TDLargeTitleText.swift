import SwiftUI

struct TDLargeTitleText: View {

    // MARK: - Properties

    let text: String
    var foregroundColor = TDColors.primaryTextColor

    // MARK: - Body

    var body: some View {
        Text(text)
            .font(.system(size: 32))
            .fontWeight(.bold)
            .foregroundStyle(foregroundColor)
    }
}

// MARK: - Preview

#Preview {
    TDLargeTitleText(text: "Demo Text")
}
