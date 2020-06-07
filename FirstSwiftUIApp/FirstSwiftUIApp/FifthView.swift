//
//  FifthView.swift
//  FirstSwiftUIApp
//
//  Created by Okan Serdaroğlu on 7.06.2020.
//  Copyright © 2020 Okan Serdaroğlu. All rights reserved.
//

import SwiftUI

struct FifthView: View {
    
    @State var myName = "okan"
    
    var body: some View {
        
        VStack {
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/).font(.largeTitle)
            TextField("placeHolder",text:$myName)
        }
       
    }
}

struct FifthView_Previews: PreviewProvider {
    static var previews: some View {
        FifthView()
    }
}
