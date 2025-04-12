import SwiftUI

struct TDSubtitleText: View {

    // MARK: - Properties

    let text: String
    var foregroundColor = TDColors.primaryTextColor

    // MARK: - Body

    var body: some View {
        Text(text)
            .font(.system(size: 16))
            .fontWeight(.medium)
            .foregroundStyle(foregroundColor)
            .multilineTextAlignment(.center)
    }
}

#Preview {
    TDSubtitleText(text: "A demo text of subtitle.")
}
