import SwiftUI

/**
 The onboarding screen
 */
struct OnboardingSecondScreenView: View {

    // MARK: - Properties

    private static let skipButtonText = "SKIP"
    private static let backButtonText = "BACK"
    private static let nextButtonText = "NEXT"
    private static let titleText = "Create daily routine"
    private static let subtitleText = "In Uptodo you can create your personalized routine to stay productive"

    @Binding var onboardingScreenType: OnboardingScreenTypes

    // MARK: - Body

    var body: some View {
        TDOnboardingBaseView(
            currentIndex: 1,
            leftBarButtonTitle: OnboardingSecondScreenView.skipButtonText,
            leftBarButtonAction: {
                // no-op
            },
            bottonLeftBarButtonTitle: OnboardingSecondScreenView.backButtonText,
            bottonLeftBarButtonAction: {
                onboardingScreenType = .first
            },
            bottonRightBarButtonTitle: OnboardingSecondScreenView.nextButtonText,
            bottonRightBarButtonAction: {
                onboardingScreenType = .third
            },
            content: {
                VStack(spacing: 42, content: {
                    TDLargeTitleText(text: OnboardingSecondScreenView.titleText)
                    TDSubtitleText(text: OnboardingSecondScreenView.subtitleText)
                })
                .padding([.leading, .trailing], 38)
            })
    }
}

// MARK: - Preview

#Preview {
    OnboardingSecondScreenView(onboardingScreenType: .constant(.second))
        .colorScheme(.dark)
}

#Preview {
    OnboardingSecondScreenView(onboardingScreenType: .constant(.second))
}
