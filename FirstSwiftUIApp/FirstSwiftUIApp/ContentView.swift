//
//  ContentView.swift
//  FirstSwiftUIApp
//
//  Created by Okan Serdaroğlu on 7.06.2020.
//  Copyright © 2020 Okan Serdaroğlu. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        VStack{ // vertical stack
            Text("okan").foregroundColor(Color.blue).padding()
            
            Text("Hello, Swift UI!").font(.footnote).foregroundColor(Color.red).multilineTextAlignment(.center)
            
            HStack{ // horizontal stack
                Text("okan").foregroundColor(Color.blue).padding()
                
                Text("Hello, Swift UI!").font(.footnote).foregroundColor(Color.red).multilineTextAlignment(.center)

                       
            }
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
