//
//  FormulaeRow.swift
//  Tavern
//
//  Created by Oleksandr Litus on 3/10/21.
//

import SwiftUI

struct FormulaeRow: View {
    var formulae: Formulae

    var body: some View {
        HStack {
            Text(formulae.name)
            Spacer()
        }
    }
}

let formulaes = [
    Formulae(id: 0, name: "One"),
    Formulae(id: 2, name: "Three"),
    Formulae(id: 15, name: "Four")
]

struct FormulaeRow_Previews: PreviewProvider {
    static var previews: some View {
        FormulaeRow(formulae: formulaes[0])
            .previewLayout(
                .fixed(width: 200, height: 90)
            )
    }
}
