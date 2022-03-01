//
//  galleryView.swift
//  LazyVGrid20220228
//
//  Created by 桃井優太 on 2022/03/01.
//

import SwiftUI

struct galleryView: View {
    var hGridItem: [GridItem] = Array(repeating: .init(.fixed(200)), count: 1)
    
    @State var galleryString = ""
    var body: some View {
        NavigationView {
            VStack {
                TextField("検索", text: $galleryString)
                ScrollView(.horizontal) {
                    LazyHGrid(rows: hGridItem, spacing: 12) {
                        
                        ForEach((1...40), id: \.self) { id in
                            VStack {
                                
                                Text("ショートカット\(id)")
                                Image("")
                            }
                            
                        }
                        .background(Color.gray)
                    }
                    
                }
                
            }
            .navigationTitle(Text("ギャラリー"))
        }
    }
}

struct galleryView_Previews: PreviewProvider {
    static var previews: some View {
        galleryView()
    }
}
