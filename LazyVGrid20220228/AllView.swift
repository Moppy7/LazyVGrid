//
//  AllView.swift
//  LazyVGrid20220228
//
//  Created by 桃井優太 on 2022/03/01.
//

import SwiftUI

struct AllView: View {
    var body: some View {
        TabView {
            myshortcutView()
                .tabItem {
                    VStack {
                        Image(systemName: "tray.full.fill")
                        Text("マイショートカット")
                    }
                }
            automationView()
                .tabItem {
                    VStack {
                        Image(systemName: "deskclock.fill")
                        Text("オートメーション")
                    }
                }
            galleryView()
                .tabItem {
                    VStack {
                        Image(systemName: "homepod.fill")
                        Text("ギャラリー")
                    }
                }
        }
    }
}

struct AllView_Previews: PreviewProvider {
    static var previews: some View {
        AllView()
    }
}
