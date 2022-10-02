//
//  MainTabView.swift
//  Quiz App
//
//  Created by Miranda Stewart on 9/29/22.
//

import SwiftUI

struct MainTabView: View {
    var body: some View {
        TabView {
            WelcomeView()
                .tabItem { Label("Quiz", systemImage: "pencil")}
            ControlsView()
                .tabItem { Label("Controls", systemImage: "gear") }
        }
        .accentColor(Color.black)
    }
}

struct MainTabView_Previews: PreviewProvider {
    static var previews: some View {
        MainTabView()
    }
}
