//
//  MyTabView.swift
//  WarmUp
//
//  Created by YUJIN KWON on 3/19/24.
//

import SwiftUI

struct MyTabView: View {
    var body: some View {
        TabView {
            Text("Tab1")
                .tabItem {
                    Label("Item1", systemImage: "star")
                }
            
            ListView()
                .tabItem {
                    Label("Item2", systemImage: "book")
                }
        }
        
//        Onboarding page
        
//        TabView {
//            Text("Onboarding1")
//            
//            Text("Onboarding2")
//        }
//        .tabViewStyle(.page(indexDisplayMode: .always))
        
    }
}

#Preview {
    MyTabView()
}
