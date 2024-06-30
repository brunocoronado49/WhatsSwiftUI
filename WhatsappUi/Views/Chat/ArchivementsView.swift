//
//  ArchivementsView.swift
//  WhatsappUi
//
//  Created by Bruno  on 28/06/24.
//

import SwiftUI

struct ArchivementsView: View {
    var body: some View {
        NavigationStack {
            VStack {
                Text("Estos chats permanecen archivados cuando se reciben mensajes nuevos. Pulsa para cambiar")
                    .multilineTextAlignment(.center)
                    .padding(.horizontal, 20)
                    .font(.footnote)
                    .foregroundStyle(.gray)
                
                Divider()
                
                List {
                    Section {
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
            }
            .navigationBarTitle("Archivados", displayMode: .inline)
            .toolbar {
                Button(action: {}) {
                    Text("Editar")
                }
            }
        }
    }
}

#Preview {
    ArchivementsView()
}
