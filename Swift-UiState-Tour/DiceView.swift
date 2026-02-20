import SwiftUI

struct DiceView: View {
    @State private var numberOfPips: Int = 1
    @State private var scale: CGFloat = 1.0

    var body: some View {
        Image(systemName: "die.face.\(numberOfPips)")
            .resizable()
            .frame(width: 100, height: 100)
            .scaleEffect(scale)

        Button("Roll") {
            numberOfPips = Int.random(in: 1...6)
            scale = 1.2
            withAnimation {
                scale = 1.0
            }
        }
        .buttonStyle(.bordered)
        .padding()
    }

}

#Preview {
    DiceView()
}
