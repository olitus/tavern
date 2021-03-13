//
//  Brew.swift
//  Tavern
//
//  Created by Oleksandr Litus on 3/13/21.
//

import Foundation

struct BrewTap: Hashable {
    var name: String
}

struct BrewCask: Hashable {
    var name: String
}

struct BrewFormulae: Hashable {
    var name: String
}

struct Brew {
    
    static let cmd = "/usr/local/bin/brew"
    
    static func casks() -> [BrewCask] {
        let (result, _, _) = Terminal.run(cmd: cmd, args: "casks")
        return result.map { name in
            BrewCask(name: name)
        }
    }
    
    static func formulae() -> [BrewFormulae] {
        let (result, _, _) = Terminal.run(cmd: cmd, args: "formulae")
        return result.map { name in
            BrewFormulae(name: name)
        }
    }
    
    // ...
    static func taps() -> [BrewTap] {
        let (result, _, _) = Terminal.run(cmd: cmd, args: "tap")
        return result.map { name in
            BrewTap(name: name)
        }
    }
    
    static func installedCasks() -> [BrewCask] {
        let (result, _, _) = Terminal.run(cmd: cmd, args: "list")
        return result.map { name in
            BrewCask(name: name)
        }
    }
}
