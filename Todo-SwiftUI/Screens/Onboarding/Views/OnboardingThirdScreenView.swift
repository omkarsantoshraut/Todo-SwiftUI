import SwiftUI

/**
 The onboarding screen
 */
struct OnboardingThirdScreenView: View {

    // MARK: - Properties

    private static let skipButtonText = "SKIP"
    private static let backButtonText = "BACK"
    private static let nextButtonText = "GET STARTED"
    private static let titleText = "Organize your tasks"
    private static let subtitleText = "You can organize your daily tasks by adding your tasks into separate categories"

    @Binding var onboardingScreenType: OnboardingScreenTypes

    // MARK: - Body

    var body: some View {
        TDOnboardingBaseView(
            currentIndex: 2,
            leftBarButtonTitle: OnboardingThirdScreenView.skipButtonText,
            leftBarButtonAction: {
                // no-op
            },
            bottonLeftBarButtonTitle: OnboardingThirdScreenView.backButtonText,
            bottonLeftBarButtonAction: {
                onboardingScreenType = .second
            },
            bottonRightBarButtonTitle: OnboardingThirdScreenView.nextButtonText,
            bottonRightBarButtonAction: {
                // no-op
            },
            content: {
                VStack(spacing: 42, content: {
                    TDLargeTitleText(text: OnboardingThirdScreenView.titleText)
                    TDSubtitleText(text: OnboardingThirdScreenView.subtitleText)
                })
                .padding([.leading, .trailing], 38)
            })
    }
}

// MARK: - Preview

#Preview {
    OnboardingThirdScreenView(onboardingScreenType: .constant(.third))
        .colorScheme(.dark)
}

#Preview {
    OnboardingThirdScreenView(onboardingScreenType: .constant(.third))
}
