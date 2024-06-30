//
//  CommunityView.swift
//  WhatsappUi
//
//  Created by Bruno  on 28/06/24.
//

import SwiftUI

struct CommunityView: View {
    var body: some View {
        NavigationStack {
            VStack {
                Image(systemName: "person.3.fill")
                    .resizable()
                    .frame(width: 230, height: 120)
                    .foregroundStyle(.green)
                
                Text("Usa una comunidad para mantenerte en contacto")
                    .font(.title)
                    .padding(.bottom, 20)
                
                Button(action: {}) {
                    Text("Ver ejemplos de comunidades")
                        .foregroundStyle(.green)
                }
                .padding(.bottom, 40)
                
                Button(action: {}) {
                    HStack {
                        Image(systemName: "plus")
                        Text("Nueva comunidad")
                            .bold()
                    }
                    .foregroundStyle(.white)
                    .font(.title3)
                    .padding()
                    .padding(.horizontal, 50)
                    .background(.green)
                    .cornerRadius(16)
                }
                    
            }
            .navigationTitle("Comunidades")
        }
    }
}

#Preview {
    CommunityView()
}
