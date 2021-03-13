//
//  MainView.swift
//  Tavern
//
//  Created by Oleksandr Litus on 3/13/21.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        MenuView()
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}


// Left menu of the app
struct MenuView: View {
    var body: some View {
        NavigationView {
            List {
                NavigationLink(destination: ContentView()) {
                    Label(
                        "Casks",
                        systemImage: "app.badge"
                    )
                }
                NavigationLink(destination: ContentView()) {
                    Label(
                        "Formulae",
                        systemImage: "cloud.sun"
                    )
                }
            }
            .listStyle(SidebarListStyle())
        }
    }
}
