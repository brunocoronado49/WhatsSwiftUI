//
//  StatusView.swift
//  WhatsappUi
//
//  Created by Bruno  on 28/06/24.
//

import SwiftUI

struct StatusView: View {
    @State private var news = ""
    
    var body: some View {
        NavigationStack {
            VStack {
                HStack {
                    Text("Estados")
                        .font(.title2)
                        .bold()
                    
                    Spacer()
                    
                    Button(action: {}) {
                        Image(systemName: "camera.fill")
                            .resizable()
                            .frame(width: 25, height: 20)
                            .foregroundStyle(.black)
                    }
                    .padding(.trailing, 8)
                    
                    Button(action: {}) {
                        Image(systemName: "pencil")
                            .resizable()
                            .frame(width: 25, height: 20)
                            .foregroundStyle(.black)
                    }
                }
                .padding(.horizontal, 10)
                .padding(.top, 10)
                
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack {
                        ForEach(users, id: \.username) { user in
                            StatusItem(user: user)
                                .padding(.horizontal, 10)
                        }
                    }
                }
                .padding(.top, 10)
                
                Spacer()
            }
            .navigationTitle("Novedades")
            .searchable(text: $news, prompt: Text("Buscar..."))
            .toolbar {
                ToolbarItem(placement: .topBarLeading) {
                    Button(action: {}) {
                        Image(systemName: "ellipsis")
                            .tint(.green)
                    }
                }
            }
        }
    }
}

#Preview {
    StatusView()
}
