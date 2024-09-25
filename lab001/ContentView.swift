//
//  ContentView.swift
//  lab001
//
//  Created by belharra64 on 25/09/2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        HStack{
            CardView(isFaceUp: true)
            CardView()
            CardView()
            CardView()
        }
        .foregroundColor(.orange)
        .padding()
    }
}

struct CardView: View {
    var isFaceUp: Bool = false
    
    var body: some View {
        ZStack(content: {
            if isFaceUp {
                RoundedRectangle(cornerRadius: 12)
                    .strokeBorder(lineWidth: 5)
                Text("👻").font(.largeTitle)
            } else {
                RoundedRectangle(cornerRadius: 12)

            }

        })
    }
   
}

#Preview {
    ContentView()
}

