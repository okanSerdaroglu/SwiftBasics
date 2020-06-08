//
//  ContentView.swift
//  FavouriteBookWithSwiftUI
//
//  Created by Okan Serdaroğlu on 8.06.2020.
//  Copyright © 2020 Okan Serdaroğlu. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView{
            List {
                ForEach(myFavorites) { favorite in
                    Section (header: Text(favorite.title)){
                        ForEach(favorite.elements) { element in
                            NavigationLink(destination: DetailView()) {
                                Text(element.name)
                            }
                        }
                    }
                }
            }.navigationBarTitle(Text("Favorite Book"))
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
