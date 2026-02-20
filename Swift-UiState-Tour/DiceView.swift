import SwiftUI

struct DiceView: View {
    @State private var numberOfPips: Int = 1
    @State private var scale: CGFloat = 1.0

    var body: some View {
        VStack {
            Image(systemName: "die.face.\(numberOfPips)")
                .resizable()
                .frame(maxWidth: 100, maxHeight: 100)
                .aspectRatio(contentMode: .fit)
                .scaleEffect(scale).foregroundStyle(.black, .white)
            Button("Roll") {
                numberOfPips = Int.random(in: 1...6)
                scale = 1.1
                withAnimation {
                    scale = 1.0
                }
            }
            .buttonStyle(.bordered)
        }
    }

}

#Preview {
    DiceView()
}
