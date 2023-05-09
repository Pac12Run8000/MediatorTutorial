//
//  ContentView.swift
//  MediatorTutorial
//
//  Created by Michelle Grover on 5/9/23.
//

import SwiftUI

struct ContentView: View {
    @StateObject var mediator = Mediator()
    
    var body: some View {
        VStack {
            SenderView()
            ReceiverView()
        }
        .environmentObject(mediator)
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
