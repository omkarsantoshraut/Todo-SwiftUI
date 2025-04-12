import SwiftUI

struct TDImageCarouselView: View {

    // MARK: - Properties

    let images: [String]
    @Binding var currentIndex: Int
    let timer = Timer.publish(every: 3, on: .main, in: .common).autoconnect()

    // MARK: - Body

    var body: some View {
        VStack {
            TabView(selection: $currentIndex) {
                ForEach(0..<images.count, id: \.self) { index in
                    Image(images[index])
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .tag(index)
                        .clipped()
                }
            }
            .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
            .frame(width: 271, height: 296)

            // Custom dots with 42pt spacing
            HStack(spacing: 8) {
                ForEach(0..<images.count, id: \.self) { index in
                    Capsule()
                        .fill(index == currentIndex ? TDColors.primaryTextColor : TDColors.primaryTextColor.opacity(0.2))
                        .frame(width: 30, height: 4)
                }
            }
            .padding(.top, 42)
        }
        .onReceive(timer) { _ in
            withAnimation {
                currentIndex = (currentIndex + 1) % images.count
            }
        }
        .padding(.top, 50)
    }
}

// MARK: - Preview

#Preview {
    TDImageCarouselView(images: ["carousel1", "carousel2", "carousel3"], currentIndex: .constant(0))
}
