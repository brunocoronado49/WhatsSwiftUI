//
//  ChatsView.swift
//  WhatsappUi
//
//  Created by Bruno  on 28/06/24.
//

import SwiftUI

struct ChatsView: View {
    @State var chat: String = ""
    
    var body: some View {
        NavigationStack {
            VStack {
                List {
                    Section {
                        HStack {
                            Spacer().frame(width: 1)
                            NavigationLink(destination: ArchivementsView()) {
                                HStack {
                                    Image(systemName: "archivebox")
                                        .padding(.horizontal, 15)
                                    Text("Archivados")
                                        .bold()
                                    
                                    Spacer()
                                    
                                    Text("\(users.count)").frame(alignment: .leading)
                                }
                            }
                            .padding(.trailing, 10)
                        }
                        
                        VStack {
                            ForEach(users, id: \.username) { user in
                                ChatItem(chat: user)
                                Divider()
                            }
                        }
                        .padding(10)
                    }
                }
                .listStyle(InsetListStyle())
                .searchable(text: $chat, prompt: Text("Buscar..."))
                .navigationTitle("Chats")
                .navigationBarBackButtonHidden()
                Spacer()
            }
            .toolbar {
                ToolbarItem(placement: .topBarLeading) {
                    Button(action: {}) {
                        Image(systemName: "ellipsis")
                            .tint(.green)
                    }
                }
                
                ToolbarItem(placement: .topBarTrailing) {
                    Button(action: {}) {
                        Image(systemName: "camera.fill")
                            .resizable()
                            .tint(.green)
                    }
                }
                
                ToolbarItem(placement: .topBarTrailing) {
                    Button(action: {}) {
                        Image(systemName: "plus")
                            .tint(.green)
                    }
                }
            }
        }
    }
}

#Preview {
    ChatsView()
}
