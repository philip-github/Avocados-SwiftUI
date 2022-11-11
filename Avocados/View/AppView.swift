//
//  AppView.swift
//  Avocados
//
//  Created by Philip Al-Twal on 10/26/22.
//

import SwiftUI

struct AppView: View {
    
    //MARK: - PROPERTIES
    
    //MARK: - BODY
    
    var body: some View {
        TabView {
            AvocadosView()
                .tabItem {
                    Image("tabicon-branch")
                    Text("Avocados")
                }
            ContentView()
                .tabItem {
                    Image("tabicon-book")
                    Text("Recipes")
                }
           RipeningStagesView()
                .tabItem {
                    Image("tabicon-avocado")
                    Text("Ripening")
                }
            SettingsView()
                .tabItem {
                    Image("tabicon-settings")
                    Text("Settings")
                }
        }//: TABVIEW
        .edgesIgnoringSafeArea(.top)
        .accentColor(.primary)
        .onAppear {
//            UITabBar.appearance().barTintColor = UIColor.white
            UITabBar.appearance().backgroundColor = UIColor(named: "ColorAppearanceAdaptive")
        }
    }//: BODY
}

//MARK: - PREVIEW

struct AppView_Previews: PreviewProvider {
    static var previews: some View {
        AppView()
            .environment(\.colorScheme, .dark)
    }
}
