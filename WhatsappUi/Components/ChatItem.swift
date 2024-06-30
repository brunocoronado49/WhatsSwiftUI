//
//  ChatItem.swift
//  WhatsappUi
//
//  Created by Bruno  on 28/06/24.
//

import SwiftUI

struct ChatItem: View {
    let chat: Chat
    
    var body: some View {
        HStack {
            AsyncImage(url: URL(string: chat.avatar)) { result in
                result.resizable()
                    .scaledToFit()
                    .frame(width: 50, height: 50)
                    .clipShape(Circle())
            } placeholder: {
                ProgressView()
            }
            
            Spacer().frame(width: 10)
            
            VStack(alignment: .leading) {
                Text(chat.username)
                    .bold()
                Text(chat.message)
                    .foregroundStyle(.gray)
            }
            
            Spacer()
            
            Text(chat.Date)
                .font(.footnote)
                .foregroundStyle(.gray)
        }
    }
}

#Preview {
    ChatItem(chat: Chat(username: "Bruce", message: messages[0], Date: "5:23a.m.", avatar: avatars[0]))
}
