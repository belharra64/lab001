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
    @State var isFaceUp = false
        
    var body: some View {
        ZStack {
            let base = RoundedRectangle(cornerRadius: 12)
            if isFaceUp {
                base.fill(Color.white)
                base.strokeBorder(lineWidth: 5)
                Text("👻").font(.largeTitle)
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

