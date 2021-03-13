//
//  TapsView.swift
//  Tavern
//
//  Created by Oleksandr Litus on 3/13/21.
//

import SwiftUI

struct TapsView: View {
    @State var taps = Brew.taps()
    
    var body: some View {
        List(taps, id: \.self) { tap in
            Text(tap.name)
        }
    }
}

struct TapsView_Previews: PreviewProvider {
    static var previews: some View {
        TapsView()
    }
}
