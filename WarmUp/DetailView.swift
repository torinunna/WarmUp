//
//  DetailView.swift
//  WarmUp
//
//  Created by YUJIN KWON on 3/18/24.
//

import SwiftUI

struct DetailView: View {
    @Binding var isPresented: Bool
    
    var body: some View {
        Text("Detail Page")
        
        Button {
            isPresented = false
        } label: {
            Text("cancel")
        }
    }
}

#Preview {
    DetailView(isPresented: .constant(true))
}
