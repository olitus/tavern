//
//  ContentView.swift
//  Tavern
//
//  Created by Oleksandr Litus on 3/10/21.
//

import SwiftUI

struct ContentView: View {
    
    @State private var search: String = ""
    
    var body: some View {
        HStack {
            List {
                TextField(
                    "Search",
                    text: $search
                )
                .textFieldStyle(
                    RoundedBorderTextFieldStyle()
                )
                .onHover(perform: { hovering in
                    if hovering {
                        NSCursor.iBeam.set()
                    } else {
                        NSCursor.arrow.set()
                    }
                })
                
                Text("Formulae")
                Text("Casks")
                Text("Services")
            }
            .listStyle(SidebarListStyle())
            .frame(
                width: 220,
                alignment: .top
            )
//            .padding(.top, 16)
            
            Text("Content")
            .frame(
                minWidth: 100,
                idealWidth: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/,
                maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/,
                minHeight: 100,
                idealHeight: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/,
                maxHeight: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/,
                alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/
            )
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
        }
    }
}

struct Sidebar: View {
  var body: some View {
    List {
        Text("1")
        Text("2")
        Text("3")
    }
    .listStyle(SidebarListStyle())
    .frame(minWidth: 150, idealWidth: 150, maxWidth: 200, maxHeight: .infinity)
    .padding(.top, 16)
  }
}

struct ItemsListView: View {
  var body: some View {
    return view
      .frame(minWidth: 400, minHeight: 600)
      .toolbar {
        ToolbarItem(placement: .automatic) {
          Button(action: {
            NSApp.keyWindow?.firstResponder?.tryToPerform(#selector(NSSplitViewController.toggleSidebar(_:)), with: nil)
          }) {
            Image(systemName: "sidebar.right")
          }
          .keyboardShortcut("S", modifiers: .command)
        }
      }
  }

  @ViewBuilder
  private var view: some View {
    List{
        Text("a")
        Text("b")
        Text("c")
    }
  }
}

//List {
//TextField(
//    "Search",
//    text: $search
//)
//.textFieldStyle(
//    RoundedBorderTextFieldStyle()
//)
//.onHover(perform: { hovering in
//    if hovering {
//        NSCursor.iBeam.set()
//    } else {
//        NSCursor.arrow.set()
//    }
//})
//}
//.listStyle(SidebarListStyle())
//.frame(minWidth: 150, idealWidth: 150, maxWidth: 200, maxHeight: .infinity)
//.padding(.top, 16)


let (forms, err, exit) = runCommand(cmd: "/usr/local/bin/brew", args: "formulae")

let formuls: [Formulae] = forms.enumerated().map { id, name in
    Formulae(id: id, name: name)
}

func runCommand(cmd: String, args: String...) -> (output: [String], error: [String], exitCode: Int32) {

    var output: [String] = []
    var error: [String] = []

    let task = Process()
    task.launchPath = cmd
    task.arguments = args

    let outpipe = Pipe()
    task.standardOutput = outpipe
    let errpipe = Pipe()
    task.standardError = errpipe

    task.launch()

    let outdata = outpipe.fileHandleForReading.readDataToEndOfFile()
    if var string = String(data: outdata, encoding: .utf8) {
        string = string.trimmingCharacters(in: .newlines)
        output = string.components(separatedBy: "\n")
    }

    let errdata = errpipe.fileHandleForReading.readDataToEndOfFile()
    if var string = String(data: errdata, encoding: .utf8) {
        string = string.trimmingCharacters(in: .newlines)
        error = string.components(separatedBy: "\n")
    }

    task.waitUntilExit()
    let status = task.terminationStatus
    
    print(error)

    return (output, error, status)
}
