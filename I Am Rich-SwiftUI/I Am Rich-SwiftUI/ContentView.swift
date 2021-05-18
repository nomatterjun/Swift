//
//  ContentView.swift
//  I Am Rich-SwiftUI
//
//  Created by 이창준 on 2021/05/18.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Text("Hello, world!")
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().previewDevice(PreviewDevice(rawValue: "iPhone SE"))
    }
}
