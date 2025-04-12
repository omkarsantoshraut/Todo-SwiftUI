import SwiftUI

enum OnboardingScreenTypes {
    case first
    case second
    case third
}

/**
 The app launcher view.
 */
struct AppLauncherView: View {

    @State private var onboardingScreenType: OnboardingScreenTypes = .first

    // MARK: - Body

    var body: some View {
        switch onboardingScreenType {
        case .first:
            OnboardingFirstScreenView(onboardingScreenType: $onboardingScreenType)
        case .second:
            OnboardingSecondScreenView(onboardingScreenType: $onboardingScreenType)
        case .third:
            OnboardingThirdScreenView(onboardingScreenType: $onboardingScreenType)
        }
    }
}

// MARK: - Preview

#Preview {
    AppLauncherView()
}
