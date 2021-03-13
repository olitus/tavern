//
//  FormulaeView.swift
//  Tavern
//
//  Created by Oleksandr Litus on 3/10/21.
//

import SwiftUI

struct FormulaeView: View {
    var body: some View {
        List(formuls, id: \.id) { formulae in
            FormulaeRow(formulae: formulae)
        }
    }
}

struct FormulaeView_Previews: PreviewProvider {
    static var previews: some View {
        FormulaeView()
    }
}
