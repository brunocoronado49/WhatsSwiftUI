//
//  ContentView.swift
//  WhatsappUi
//
//  Created by Bruno  on 28/06/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            StatusView()
                .tabItem {
                    Label("Novedades", systemImage: "newspaper")
                }
            
            CallsView()
                .tabItem {
                    Label("Llamadas", systemImage: "phone")
                }
            
            CommunityView()
                .tabItem {
                    Label("Comunidades", systemImage: "person.3")
                }
            
            ChatsView()
                .tabItem {
                    Label("Chats", systemImage: "message")
                }
            
            SettingsView()
                .tabItem {
                    Label("Configuracion", systemImage: "gear")
                }
        }
    }
}

#Preview {
    ContentView()
}
