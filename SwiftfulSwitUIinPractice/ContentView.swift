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
    @State private var users: [User] = []
    @State private var products: [Product] = []
    
    var body: some View {
        ScrollView {
            VStack {
                ForEach(products) { product in
                    Text(product.title)
                }
            }
            .padding()
            .task {
                await getData()
        }
        }
    }
    
    private func getData() async {
        do{
            users = try await DatabaseHelper().getUsers()
            products = try await DatabaseHelper().getProducts()
        }
        catch{
            
        }
    }
}

#Preview {
    ContentView()
}
