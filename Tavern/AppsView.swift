//
//  AppsView.swift
//  Tavern
//
//  Created by Oleksandr Litus on 3/13/21.
//

import SwiftUI

struct AppsView: View {
    @State var apps = Brew.casks()
    
    var body: some View {
        List(apps, id: \.self) { app in
            Text(app.name)
        }
    }
}

struct AppsView_Previews: PreviewProvider {
    static var previews: some View {
        CommandsView()
    }
}

