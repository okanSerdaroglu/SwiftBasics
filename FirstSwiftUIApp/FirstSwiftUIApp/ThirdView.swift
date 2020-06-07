//
//  ThirdView.swift
//  FirstSwiftUIApp
//
//  Created by Okan Serdaroğlu on 7.06.2020.
//  Copyright © 2020 Okan Serdaroğlu. All rights reserved.
//

import SwiftUI

struct ThirdView: View {
    
    let myArray = ["Talisca","Quaresma","Cenk"]
    
    var body: some View {
        List(myArray, id:\.self) { element in
            Image("sergen")
            .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width:30,height: 30)
            
            Text(element).font(.largeTitle)
        }
        
        /*List {
            ForEach(myArray,id:\.self) {
                Text(element)
            }
        }*/
    }
}

struct ThirdView_Previews: PreviewProvider {
    static var previews: some View {
        ThirdView()
    }
}
