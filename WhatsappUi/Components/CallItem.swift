//
//  CallItem.swift
//  WhatsappUi
//
//  Created by Bruno  on 28/06/24.
//

import SwiftUI

struct CallItem: View {
    let call: Call
    
    var body: some View {
        HStack {
            AsyncImage(url: URL(string: call.avatarCall)) { result in
                result.resizable()
                    .scaledToFit()
                    .frame(width: 50, height: 50)
                    .clipShape(Circle())
            } placeholder: {
                ProgressView()
            }
            
            Spacer().frame(width: 10)
            
            VStack(alignment: .leading) {
                Text(call.username)
                    .bold()
                Text(call.statusCall)
                    .foregroundStyle(.gray)
            }
            
            Spacer()
            
            Text(call.date)
                .font(.footnote)
                .foregroundStyle(.gray)
            
            Button(action: {}) {
                Image(systemName: "info.circle")
                    .resizable()
                    .frame(width: 20, height: 20)
                    .foregroundStyle(.white)
            }
        }
    }
}

#Preview {
    CallItem(call: Call(username: "Jose", statusCall: "Entrante", date: "27/05/24", avatarCall: avatarsCalls[0]))
}
