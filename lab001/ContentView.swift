//
//  ContentView.swift
//  lab001
//
//  Created by }64 on 25/09/2024.
//

import SwiftUI

struct ContentView: View {
    let emojis: [String] = ["👻", "🕷️", "🎃", "💀", "😰","👍🏼","😉","🏇🏻"]
    @State var cardCount: Int = 4
    
    var body: some View {
        VStack {
            cards
            cardCountAdjuster
        }
        .padding()
    }
    
    var cards: some View {
        LazyVGrid(columns: [GridItem(),GridItem(),GridItem()]) {
            ForEach(0..<cardCount, id:\.self) { index in
                CardView(content: emojis[index])
            }
        }
        .foregroundColor(.orange)
    }
    
    var cardCountAdjuster: some View {
        HStack {
            cardRemover
            Spacer()
            cardAdder
        }
        .imageScale(.medium)
        .font(.largeTitle)
    }
    
    func cartCountAdjuster(by offset: Int, emoji symbol: String ) -> some View {
        Button(action: {
                cardCount += offset
           
        }, label: {
            Image(systemName: symbol)
        } )
        .disabled(cardCount + offset < 1 || cardCount + offset > emojis.count)
    }
    
    
    var cardRemover: some View {
        cartCountAdjuster(by: -1, emoji: "rectangle.stack.badge.minus.fill")
    }
    
    var cardAdder: some View {
        cartCountAdjuster(by: 1, emoji: "rectangle.stack.badge.plus.fill")
    }
}
    
    struct CardView: View {
        let content: String
        @State var isFaceUp = true
        
        
        var body: some View {
            ZStack {
                let base = RoundedRectangle(cornerRadius: 12)
                if isFaceUp {
                    base.fill(Color.white)
                    base.strokeBorder(lineWidth: 5)
                    Text(content).font(.largeTitle)
                } else {
                    base.fill(Color.orange)
                }
            }
            .onTapGesture {
                isFaceUp.toggle()
            }
        }
        
    }


#Preview {
    ContentView()
}

