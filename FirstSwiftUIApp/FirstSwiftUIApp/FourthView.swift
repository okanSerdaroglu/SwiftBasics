//
//  FourthView.swift
//  FirstSwiftUIApp
//
//  Created by Okan Serdaroğlu on 7.06.2020.
//  Copyright © 2020 Okan Serdaroğlu. All rights reserved.
//

import SwiftUI

struct FourthView: View {
    
    @State var myName = "okan"
    
    var body: some View {
        VStack{
            Text(myName).font(.largeTitle).padding()
            Button(action: {
                self.myName = "osman"
            }) {
                Text("MyButton")
            }
        }
        
    }
}

struct FourthView_Previews: PreviewProvider {
    static var previews: some View {
        FourthView()
    }
}
