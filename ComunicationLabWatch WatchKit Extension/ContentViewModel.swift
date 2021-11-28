//
//  ContentViewModel.swift
//  ComunicationLabWatch WatchKit Extension
//
//  Created by Erik Flores on 27/11/21.
//

import Foundation
import WatchConnectivity
import SwiftUI
import Combine

class ContentViewModel: NSObject, WCSessionDelegate, ObservableObject {
    var session: WCSession
    @Published var dataFromiPhone: String = "loading"

    init(session: WCSession = .default) {
        self.session = session
        super.init()
        session.delegate = self
        session.activate()
    }

    func session(_ session: WCSession, activationDidCompleteWith activationState: WCSessionActivationState, error: Error?) {

    }

    func session(_ session: WCSession, didReceiveMessage message: [String : Any]) {
        DispatchQueue.main.async {
            self.dataFromiPhone = message["data"] as! String
        }
    }
}
