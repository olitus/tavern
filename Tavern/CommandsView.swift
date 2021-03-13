//
//  CommandsView.swift
//  Tavern
//
//  Created by Oleksandr Litus on 3/13/21.
//

import SwiftUI

struct CommandsView: View {
    @State var commands = Brew.formulae()
    
    var body: some View {
        List(commands, id: \.self) { command in
            Text(command.name)
        }
    }
}

struct CommandsView_Previews: PreviewProvider {
    static var previews: some View {
        CommandsView()
    }
}
