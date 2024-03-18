//
//  NavigationView.swift
//  WarmUp
//
//  Created by YUJIN KWON on 3/18/24.
//

import SwiftUI

struct NavigationView: View {
   
    @State var showModal: Bool = false
    
    var body: some View {
        NavigationStack {
            NavigationLink {
                Text("Detail Page")
            } label: {
                Text("Move to Detail")
            }
            .toolbar {
                ToolbarItem {
                    Button {
                        showModal = true
                    } label: {
                        Text("Add")
                    }
                }
            }
            .sheet(isPresented: $showModal) {
                Text("Add Button Tapped")
            }
            .navigationTitle("Navigation")
        }
    }
}

#Preview {
    NavigationView()
}
