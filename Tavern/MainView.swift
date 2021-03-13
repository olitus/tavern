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

struct MenuView: View {
    var body: some View {
        NavigationView {
            List {
                NavigationLink(destination: TapsView()) {
                    Label(
                        "Taps",
                        systemImage: "bag" //antenna.radiowaves.left.and.right"
                    )
                }
                .font(.title3)
                .padding(.vertical, 5)
                
                NavigationLink(destination: AppsView()) {
                    Label(
                        "Apps",
                        systemImage: "app.badge"
                    )
                }
                .font(.title3)
                .padding(.vertical, 5)
                
                NavigationLink(destination: CommandsView()) {
                    Label(
                        "Commands",
                        systemImage: "command"
                    )
                }
                .font(.title3)
                .padding(.vertical, 5)
                
                Spacer()
                
                NavigationLink(destination: InstalledView()) {
                    Label(
                        "Installed",
                        systemImage: "square.and.arrow.down"
                    )
                }
                .font(.title3)
                .padding(.vertical, 5)
            }
            .listStyle(SidebarListStyle())
        }
    }
}
