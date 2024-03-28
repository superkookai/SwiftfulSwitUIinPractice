//
//  SpotifyHomeView.swift
//  SwiftfulSwitUIinPractice
//
//  Created by Weerawut Chaiyasomboon on 28/3/2567 BE.
//

import SwiftUI

struct SpotifyHomeView: View {
    @State private var currentUser: User? = nil
    @State private var selectedCategory: Category? = nil
    
    var body: some View {
        ZStack{
            Color.spotifyBlack
                .ignoresSafeArea()
            
            ScrollView {
                LazyVStack(pinnedViews: [.sectionHeaders], content: {
                    Section {
                        ForEach(0..<20){ _ in
                            Rectangle()
                                .fill(.red)
                                .frame(width: 200, height: 200)
                        }
                    } header: {
                        header
                    }
                })
                
            }
            .scrollIndicators(.hidden)
            .clipped()
        }
        .toolbar(.hidden, for: .navigationBar)
        .task {
            await getData()
        }
    }
    
    private func getData() async {
        do{
            currentUser = try await DatabaseHelper().getUsers().first
//            products = try await DatabaseHelper().getProducts()
        }
        catch{
            
        }
    }
    
    private var header: some View{
        HStack(spacing: 0){
            ZStack{
                if let currentUser{
                    ImageLoaderView(urlString: currentUser.image)
                        .background(.spotifyWhite)
                        .clipShape(Circle())
                        .onTapGesture {
                            //do something
                        }
                }
            }
            .frame(width: 35,height: 35)
            
            ScrollView(.horizontal) {
                HStack(spacing: 8, content: {
                    ForEach(Category.allCases, id: \.self){ category in
                        SpotifyCategoryCell(
                            title: category.rawValue.capitalized,
                            isSelected: selectedCategory == category
                        )
                        .onTapGesture {
                            selectedCategory = category
                        }
                    }
                })
                .padding(.horizontal,16)
            }
            .scrollIndicators(.hidden)
        }
        .padding(.vertical, 24)
        .padding(.leading, 8)
        .background(.spotifyBlack)
    }
}

#Preview {
    SpotifyHomeView()
}
