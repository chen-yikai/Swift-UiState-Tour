import SwiftUI

struct ContentView: View {
    @State private var numberOfDice = 1
    var body: some View {
        VStack {
            VStack {
                Text("Dice Roller").font(.largeTitle.lowercaseSmallCaps())
            }
            .padding()
            HStack(spacing: 20) {
                ForEach(1...numberOfDice, id: \.self) { _ in
                    VStack {
                        DiceView()
                    }
                }
            }.padding()
            HStack(spacing: 20) {
                Button("Add", systemImage: "plus.circle") {
                    withAnimation {
                        numberOfDice += 1
                    }
                }.buttonStyle(.glass).labelStyle(.iconOnly).disabled(
                    numberOfDice == 5
                )
                Button("Remove", systemImage: "minus.circle") {
                    withAnimation {
                        numberOfDice -= 1
                    }
                }.buttonStyle(.glass).labelStyle(.iconOnly).disabled(
                    numberOfDice == 1
                )
            }
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(.teal)
    }
}

#Preview {
    ContentView()
}
