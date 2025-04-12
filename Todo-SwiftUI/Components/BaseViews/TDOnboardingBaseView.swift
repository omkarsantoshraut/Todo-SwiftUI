import SwiftUI

/**
 A base class for the onboarding screens.
 */
struct TDOnboardingBaseView<Content: View>: View {

    // MARK: - Properties

    let content: Content
    let leftBarButtonTitle: String?
    let leftBarButtonAction: (() -> Void)?
    let bottonLeftBarButtonTitle: String?
    let bottonLeftBarButtonAction: (() -> Void)?
    let bottonRightBarButtonTitle: String?
    let bottonRightBarButtonAction: (() -> Void)?
    @State private var currentIndex: Int

    // MARK: - Initializer

    init(currentIndex: Int,
        leftBarButtonTitle: String? = nil,
         leftBarButtonAction: (() -> Void)? = nil,
         bottonLeftBarButtonTitle: String? = nil,
         bottonLeftBarButtonAction: (() -> Void)? = nil,
         bottonRightBarButtonTitle: String? = nil,
         bottonRightBarButtonAction: (() -> Void)? = nil,
         @ViewBuilder content: () -> Content) {
        self.currentIndex = currentIndex
        self.leftBarButtonTitle = leftBarButtonTitle
        self.leftBarButtonAction = leftBarButtonAction
        self.bottonLeftBarButtonTitle = bottonLeftBarButtonTitle
        self.bottonLeftBarButtonAction = bottonLeftBarButtonAction
        self.bottonRightBarButtonTitle = bottonRightBarButtonTitle
        self.bottonRightBarButtonAction = bottonRightBarButtonAction
        self.content = content()
    }

    // MARK: - Body

    var body: some View {
        ZStack {
            LinearGradient(
                colors: [TDColors.appBackgroundColor],
                startPoint: .top,
                endPoint: .bottom)
            .ignoresSafeArea()

            NavigationView(content: {
                ScrollView {
                    VStack(spacing: 50) {
                        TDImageCarouselView(images: ["carousel1", "carousel2", "carousel3"], currentIndex: $currentIndex)
                        content
                        Spacer()
                    }
                }
                .scrollIndicators(.never)
//                .toolbarBackground(Color.blue, for: .bottomBar)
                .toolbar(content: {
                    if let leftBarButtonTitle, let leftBarButtonAction {
                        ToolbarItem(placement: .topBarLeading, content: {
                            TDToolBarButton(
                                title: leftBarButtonTitle,
                                foregroundColor: TDColors.primaryTextColor,
                                action: leftBarButtonAction)
                        })
                    }

                    if let bottonLeftBarButtonTitle, let bottonLeftBarButtonAction {
                        ToolbarItem(placement: .bottomBar, content: {
                            TDToolBarButton(
                                title: bottonLeftBarButtonTitle,
                                foregroundColor: TDColors.primaryTextColor,
                                action: bottonLeftBarButtonAction)
                        })
                        ToolbarItem(placement: .bottomBar, content: {
                            Spacer()
                        })
                    }

                    if let bottonRightBarButtonTitle, let bottonRightBarButtonAction {
                        ToolbarItem(placement: .bottomBar, content: {
                            Spacer()
                        })
                        ToolbarItem(placement: .bottomBar, content: {
                            TDPrimaryButtonView(
                                title: bottonRightBarButtonTitle,
                                action: bottonRightBarButtonAction)
                            .padding(.bottom, 5)
                        })
                    }
                })
            })
        }
        
        
    }
}

// MARK: - Preview

#Preview {
    TDOnboardingBaseView(
        currentIndex: 0,
        leftBarButtonTitle: "Demo",
        leftBarButtonAction: {},
        bottonLeftBarButtonTitle: "Demo",
        bottonLeftBarButtonAction: {},
        bottonRightBarButtonTitle: "Demo",
        bottonRightBarButtonAction: {},
        content: {})
}
