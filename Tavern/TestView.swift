//
//  TestView.swift
//  Tavern
//
//  Created by Oleksandr Litus on 3/13/21.
//

import SwiftUI

struct TestView: View {
    var body: some View {
        NavigationView {
            Text("SwiftUI")
                .navigationTitle("Welcome")
                .toolbar {
                    Button("Help") {
                        print("Help tapped!")
                    }
                }
        }
    }
}

struct TestView_Previews: PreviewProvider {
    static var previews: some View {
        TestView()
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
