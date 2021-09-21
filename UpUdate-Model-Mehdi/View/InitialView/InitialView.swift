//
//  InitialView.swift
//  UpUdate-Model-Mehdi
//
//  Created by Mehdi MMS on 23/05/2020.
//  Copyright © 2020 Mehdi Safari. All rights reserved.
//

import SwiftUI
import Foundation

struct InitialView: View {

   @EnvironmentObject public var session: SessionStore
    
    func listen() {
        session.listenAuthenticationState()
        session.logout()
    }
    
    var body: some View {
        Group {
            if session.isLoggedIn {
                MainView()
            } else {
                SigninView()
            }
        }.onAppear(perform: listen)
    }
}


