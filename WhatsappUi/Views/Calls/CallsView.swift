//
//  CallsView.swift
//  WhatsappUi
//
//  Created by Bruno  on 28/06/24.
//

import SwiftUI

struct CallsView: View {
    @State var call: String = ""
    
    var body: some View {
        NavigationStack {
            VStack {
                
                HStack {
                    Image(systemName: "link.circle")
                        .resizable()
                        .frame(width: 40, height: 40)
                        .foregroundStyle(.gray)
                    
                    VStack(alignment: .leading) {
                        Text("Crear enlace de llamada")
                            .font(.title2)
                        
                        Text("Comparte un enlace para tu llamada de WhatsApp")
                            .font(.footnote)
                            .foregroundStyle(.gray)
                    }
                    
                }
                
                List {
                    VStack {
                        ForEach(calls, id: \.username) { cal in
                            CallItem(call: cal)
                            Divider()
                        }
                    }
                    .padding(5)
                }
                .navigationTitle("Llamadas")
                .searchable(text: $call, prompt: Text("Buscar..."))
            }
            .toolbar {
                ToolbarItem(placement: .topBarLeading) {
                    Button(action: {}) {
                        Image(systemName: "ellipsis")
                            .tint(.green)
                    }
                }
                
                ToolbarItem(placement: .principal) {
                    HStack {
                        Button(action: {}) {
                            Text("Todas")
                        }
                        
                        Button(action: {}) {
                            Text("Perdidas")
                        }
                    }
                    .bold()
                    .foregroundStyle(.green)
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
    CallsView()
}
