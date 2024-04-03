//
//  ContentView.swift
//  SwiftfulSwitUIinPractice
//
//  Created by Weerawut Chaiyasomboon on 28/3/2567 BE.
//

import SwiftUI
import SwiftfulUI
import SwiftfulRouting

struct ContentView: View {
    
    @Environment(\.router) var router

    var body: some View {
        List {
            Button(action: {
                router.showScreen(.fullScreenCover) { _ in
                    SpotifyHomeView()
                }
            }, label: {
                Text("Open Spotify")
            })
        }
    }
}


#Preview {
    RouterView{ _ in
        ContentView()
    }
}
