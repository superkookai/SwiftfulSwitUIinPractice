//
//  SpotifyRecentsCell.swift
//  SwiftfulSwitUIinPractice
//
//  Created by Weerawut Chaiyasomboon on 2/4/2567 BE.
//

import SwiftUI

struct SpotifyRecentsCell: View {
    var imageName: String = Constants.randomImage
    var title: String = "Some Random Title"
    
    var body: some View {
        HStack(spacing: 16, content: {
            ImageLoaderView(urlString: imageName)
                .frame(width: 55,height: 55)
            
            Text(title)
                .font(.callout)
                .fontWeight(.semibold)
                .lineLimit(2)
                
        })
        .padding(.trailing, 8)
        .frame(maxWidth: .infinity, alignment: .leading)
        .themeColors(isSelected: false)
        .cornerRadius(6)
    }
}

#Preview {
    ZStack{
        Color.black.ignoresSafeArea()
        
        VStack{
            HStack{
                SpotifyRecentsCell()
                SpotifyRecentsCell()
            }
            
            HStack{
                SpotifyRecentsCell()
                SpotifyRecentsCell()
            }
        }
    }
}
