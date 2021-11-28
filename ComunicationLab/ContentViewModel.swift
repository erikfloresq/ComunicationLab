//
//  ContentViewModel.swift
//  ComunicationLab
//
//  Created by Erik Flores on 27/11/21.
//

import Foundation
import WatchConnectivity

class ContentViewModel: NSObject, WCSessionDelegate {
    var session: WCSession

    init(session: WCSession = .default) {
        self.session = session
        super.init()
        session.delegate = self
        session.activate()
    }

    func session(_ session: WCSession, activationDidCompleteWith activationState: WCSessionActivationState, error: Error?) {

    }

    func sessionDidBecomeInactive(_ session: WCSession) {

    }

    func sessionDidDeactivate(_ session: WCSession) {

    }
}
