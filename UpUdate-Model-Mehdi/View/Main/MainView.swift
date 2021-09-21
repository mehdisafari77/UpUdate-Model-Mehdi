//
//  MainView.swift
//  UpUdate-Model-Mehdi
//
//  Created by Mehdi MMS on 23/05/2020.
//  Copyright © 2020 Mehdi Safari. All rights reserved.
//

import SwiftUI

struct MainView: View {
    @EnvironmentObject var session: SessionStore
    func logout() {
        session.logout()
    }
    
    var body: some View {
        
        TabView {
            HomeView().tabItem({
                Image(systemName: "house.fill").imageScale(.large)
            }).tag(0)
            SearchView().tabItem({
                Image(systemName: "magnifyingglass").imageScale(.large)
            }).tag(1)
            CameraView().tabItem({
                Image(systemName: "camera.viewfinder").imageScale(.large)
            }).tag(2)
            NotificationView().tabItem({
                Image(systemName: "bell.fill").imageScale(.large)
            }).tag(3)
            ProfileView().tabItem({
                Image(systemName: "person.fill").imageScale(.large)
            }).tag(4)
        }.accentColor(.black)
        
//        Group {
//            Text((session.userSession == nil) ? "Loading..." : session.userSession!.email)
//            Button(action: logout) {
//                Text("Log out")
//            }
//        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
