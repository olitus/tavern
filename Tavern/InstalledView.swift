//
//  InstalledView.swift
//  Tavern
//
//  Created by Oleksandr Litus on 3/13/21.
//

import SwiftUI

struct InstalledView: View {
    @State var casks = Brew.installedCasks()
    
    var body: some View {
        HStack {
            VStack {
                List(casks, id: \.self) { cask in
                    Text(cask.name)
                }
            }
        }.navigationTitle("Hello")
    }
}
