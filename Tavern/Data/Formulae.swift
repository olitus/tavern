//
//  Formulae.swift
//  Tavern
//
//  Created by Oleksandr Litus on 3/10/21.
//

import SwiftUI

struct Formulae: Hashable, Codable {
    
    var id: Int
    var name: String
    
    static func == (lhs: Formulae, rhs: Formulae) -> Bool {
        lhs.id == rhs.id && lhs.name == rhs.name
    }
}
