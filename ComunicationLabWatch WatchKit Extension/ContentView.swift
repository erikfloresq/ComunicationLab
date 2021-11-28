//
//  ContentView.swift
//  ComunicationLabWatch WatchKit Extension
//
//  Created by Erik Flores on 27/11/21.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var viewModel = ContentViewModel()

    var body: some View {
        Text(viewModel.dataFromiPhone)
            .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
