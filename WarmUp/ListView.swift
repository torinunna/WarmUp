//
//  ListView.swift
//  WarmUp
//
//  Created by YUJIN KWON on 3/17/24.
//

import SwiftUI

struct Color: Hashable {
    var name: String
    var match: String
    var level: Int
}

struct ListView: View {
    @State var myColors: [[Color]] = [
        [Color(name: "blue", match: "gray", level: 6),
         Color(name: "black", match: "white", level: 8)],
        [Color(name: "pink", match: "brown", level: 3)],
        [Color(name: "orange", match: "green", level: 1)]
    ]
    
    @State var colorName: String = ""
    
    var body: some View {
        
        NavigationStack {
            VStack {
                HStack {
                    TextField("input color name", text: $colorName)
                    
                    Button {
                        
                    } label: {
                        Text("+")
                            .padding()
                            .background(.blue)
                            .foregroundStyle(.white)
                            .clipShape(.circle)
                    }
                }
                .padding(.horizontal)
                
                List {
                    ForEach(myColors, id: \.self) { section in
                        Section {
                            ForEach(section, id: \.self) { item in
                                VStack(alignment: .leading) {
                                    Text(item.name)
                                    Text("with \(item.match)")
                                    Text("levle: \(item.level)")
                                }
                            }
                        }
                    }.onDelete(perform: { indexSet in
                        myColors.remove(atOffsets: indexSet)
                    })
                }
            }
            .navigationTitle("Match My Colors")
        }
    }
}

#Preview {
    ListView()
}
