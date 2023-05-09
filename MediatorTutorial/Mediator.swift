//
//  Mediator.swift
//  MediatorTutorial
//
//  Created by Michelle Grover on 5/9/23.
//

import SwiftUI

// Mediator
class Mediator: ObservableObject {
    @Published var message: String = ""
    
    func sendMessage(_ message: String) {
        self.message = message
    }
}

// Sender View
struct SenderView: View {
    @EnvironmentObject var mediator: Mediator
    
    var body: some View {
        VStack {
            Text("I'm sending you a message")
            Button("Send Message") {
                mediator.sendMessage("Hello from Sender View")
            }
        }
    }
}

// Receiver View
struct ReceiverView: View {
    @EnvironmentObject var mediator: Mediator
    
    var body: some View {
        VStack {
            Text("Receiver View")
            Text("Received Message: \(mediator.message)")
        }
    }
}
