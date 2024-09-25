//
//  ContentView.swift
//  lab001
//
//  Created by belharra64 on 25/09/2024.
//

import SwiftUI

struct ContentView: View {
    let emojis: [String] = ["👻", "🕷️", "🎃", "💀"]
    
    var body: some View {
       
        HStack{
            ForEach(emojis.indices, id:\.self) { index in
                CardView(content: emojis[index])
            }
        }
        .foregroundColor(.orange)
        .padding()
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

