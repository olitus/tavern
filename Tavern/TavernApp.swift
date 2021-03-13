//
//  TavernApp.swift
//  Tavern
//
//  Created by Oleksandr Litus on 3/10/21.
//

import SwiftUI

@main internal
struct TavernApp: App {
    var body: some Scene {
        WindowGroup {
            MainView()
                .toolbar { Spacer() /* to correctly place window control buttons */ }
        }
        .windowStyle(HiddenTitleBarWindowStyle())
    }
}



//
//# tavern
//Independent app manger for Mac based on brew
//
//
//### Major
//- https://github.com/Homebrew/brew
//- https://github.com/brunophilipe/Cakebrew
//- https://github.com/andrewn/brew-services-menubar
