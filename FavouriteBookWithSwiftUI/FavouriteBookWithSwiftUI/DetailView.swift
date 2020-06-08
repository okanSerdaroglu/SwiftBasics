//
//  DetailView.swift
//  FavouriteBookWithSwiftUI
//
//  Created by Okan Serdaroğlu on 8.06.2020.
//  Copyright © 2020 Okan Serdaroğlu. All rights reserved.
//

import SwiftUI

struct DetailView: View {
    
    var choosenFavoriteElement:FavouriteElemenst
    
    var body: some View {
        
        VStack {
            Image(choosenFavoriteElement.imageName).resizable().aspectRatio(contentMode: .fit)
            Text(choosenFavoriteElement.name).font(.largeTitle).padding()
            Text(choosenFavoriteElement.description).padding()
        }
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(choosenFavoriteElement: theDarkNight)
    }
}
