import SwiftUI

/**
 A custom button to show in the tool bar of navigation view.
 */
struct TDToolBarButton: View {

    // MARK: - Properties

    let title: String
    let foregroundColor: Color
    let action: () -> Void

    // MARK: - Body

    var body: some View {
        Button(
            action: action,
            label: {
                Text(title)
                    .font(.system(size: 16))
                    .fontWeight(.semibold)
                    .foregroundStyle(foregroundColor)
                    .opacity(0.44)
            })
    }
}

// MARK: - Preview

#Preview {
    VStack {
        TDToolBarButton(title: "Demo Text", foregroundColor: .black, action: {})
    }
    .padding()
}
