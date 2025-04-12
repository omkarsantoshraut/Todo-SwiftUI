import SwiftUI

struct TDPrimaryButtonView: View {

    // MARK: - Properties

    let title: String
    var backgroundColor: Color = TDColors.primaryButtonBackgroundColor
    var foregroundColor: Color = TDColors.primaryTextColor
    var cornerRadius: CGFloat = 10
    let action: () -> Void

    // MARK: - Body

    var body: some View {
        Button(
            action: action,
            label: {
                Text(title)
                    .padding([.leading, .trailing], 25)
                    .padding([.top, .bottom], 12)
                    .font(.system(size: 16))
                    .fontWeight(.semibold)
                    .background(backgroundColor)
                    .foregroundStyle(foregroundColor)
                    .cornerRadius(cornerRadius)
            })
    }
}

// MARK: - Preview

#Preview {
    TDPrimaryButtonView(title: "Demo Title", action: {})
}
