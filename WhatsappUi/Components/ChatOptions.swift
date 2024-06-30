//
//  ChatOptions.swift
//  WhatsappUi
//
//  Created by Bruno  on 28/06/24.
//

import SwiftUI

struct ChatOptions: View {
    var body: some View {
        HStack {
            Button(action: {}) {
                Text("Chats")
                    .foregroundStyle(.green)
            }
            
            Spacer()
            
            Button(action: {}) {
                Text("Nuevo Grupo")
                    .foregroundStyle(.green)
            }
        }
        .padding(.horizontal, 22)
    }
}

#Preview {
    ChatOptions()
}
