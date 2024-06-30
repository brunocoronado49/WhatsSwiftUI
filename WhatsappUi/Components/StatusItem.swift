//
//  StatusItem.swift
//  WhatsappUi
//
//  Created by Bruno  on 29/06/24.
//

import SwiftUI

struct StatusItem: View {
    let user: Chat
    
    var body: some View {
        VStack {
            AsyncImage(url: URL(string: user.avatar)) { result in
                result.resizable()
                    .scaledToFit()
                    .frame(width: 60, height: 60)
                    .clipShape(Circle())
            } placeholder: {
                ProgressView()
            }
            .padding(.bottom, 8)
            
            Text(user.username)
                .font(.footnote)
        }
    }
}

#Preview {
    StatusItem(user: Chat(username: "Bruce", message: messages[0], Date: "5:23a.m.", avatar: avatars[0]))
}
