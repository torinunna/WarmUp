//
//  ModalView.swift
//  WarmUp
//
//  Created by YUJIN KWON on 3/18/24.
//

import SwiftUI

struct ModalView: View {
    @State var showModal: Bool = false
    
    var body: some View {
        VStack {
            Text("Main Page")
            
            Button {
                showModal = true
            } label: {
                Text("화면 전환")
            }
        }
        .sheet(isPresented: $showModal) {
            DetailView(isPresented: $showModal)
        }
    }
}

#Preview {
    ModalView()
}
