//
//  ContentView.swift
//  transitions
//
//  Created by JFJ on 26/01/2020.
//  Copyright © 2020 JFJ. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State private var isShowingRed = false
    
    var body: some View {
        VStack {
            Button("Tap Me") {
                withAnimation {
                self.isShowingRed.toggle()
            }
            }
            
            if isShowingRed{
            
            Rectangle ()
                .fill(Color.red)
                .frame(width: 200, height: 200)
                .transition(.asymmetric(insertion: .scale, removal: .opacity))
        }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
