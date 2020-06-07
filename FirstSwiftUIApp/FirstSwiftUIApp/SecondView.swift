//
//  SecondView.swift
//  FirstSwiftUIApp
//
//  Created by Okan Serdaroğlu on 7.06.2020.
//  Copyright © 2020 Okan Serdaroğlu. All rights reserved.
//

import SwiftUI

struct SecondView: View {
    var body: some View {
        Image("sergen").resizable().aspectRatio(contentMode: .fit)
            .frame(width:UIScreen.main.bounds.width * 0.5, height:UIScreen.main.bounds.height * 0.4)
    }
}

// UIScreen.main.bounds.width get device width

struct SecondView_Previews: PreviewProvider {
    static var previews: some View {
        SecondView()
    }
}
