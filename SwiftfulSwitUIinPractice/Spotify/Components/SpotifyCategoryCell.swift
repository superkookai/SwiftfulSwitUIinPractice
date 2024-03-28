//
//  SpotifyCategoryCell.swift
//  SwiftfulSwitUIinPractice
//
//  Created by Weerawut Chaiyasomboon on 28/3/2567 BE.
//

import SwiftUI

struct SpotifyCategoryCell: View {
    var title: String = "Music"
    var isSelected: Bool = false
    
    var body: some View {
        Text(title)
            .font(.callout)
            .frame(minWidth: 35)
            .padding(.vertical,8)
            .padding(.horizontal, 10)
            .background(
                isSelected ? .spotifyGreen : .spotifyDarkGray
            )
            .foregroundStyle(isSelected ? .spotifyBlack : .spotifyWhite)
            .cornerRadius(16)
    }
}

#Preview {
    ZStack {
        Color.spotifyBlack.ignoresSafeArea()
        
        VStack(spacing: 40) {
            SpotifyCategoryCell(title: "Title here")
            SpotifyCategoryCell(title: "Title here", isSelected: true)
            SpotifyCategoryCell(isSelected: true)
        }
    }
}
