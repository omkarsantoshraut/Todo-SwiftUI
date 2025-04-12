import SwiftUI

/**
 The onboarding screen
 */
struct OnboardingFirstScreenView: View {

    // MARK: - Properties

    private static let skipButtonText = "SKIP"
    private static let backButtonText = "BACK"
    private static let nextButtonText = "NEXT"
    private static let titleText = "Manage your tasks"
    private static let subtitleText = "You can easily manage all of your daily tasks in DoMe for free"

    @Binding var onboardingScreenType: OnboardingScreenTypes

    // MARK: - Body

    var body: some View {
        TDOnboardingBaseView(
            currentIndex: 0,
            leftBarButtonTitle: OnboardingFirstScreenView.skipButtonText,
            leftBarButtonAction: {
                // no-op
            },
            bottonLeftBarButtonTitle: OnboardingFirstScreenView.backButtonText,
            bottonLeftBarButtonAction: {
                // no-op
            },
            bottonRightBarButtonTitle: OnboardingFirstScreenView.nextButtonText,
            bottonRightBarButtonAction: {
                onboardingScreenType = .second
            },
            content: {
                VStack(spacing: 42, content: {
                    TDLargeTitleText(text: OnboardingFirstScreenView.titleText)
                    TDSubtitleText(text: OnboardingFirstScreenView.subtitleText)

                })
                .padding([.leading, .trailing], 38)
            })
    }
}

// MARK: - Preview

#Preview {
    OnboardingFirstScreenView(onboardingScreenType: .constant(.first))
        .colorScheme(.dark)
}

#Preview {
    OnboardingFirstScreenView(onboardingScreenType: .constant(.first))
}
