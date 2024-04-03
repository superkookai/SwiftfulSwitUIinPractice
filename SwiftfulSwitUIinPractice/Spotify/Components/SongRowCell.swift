//
//  SongRowCell.swift
//  SwiftfulSwitUIinPractice
//
//  Created by Weerawut Chaiyasomboon on 3/4/2567 BE.
//

import SwiftUI

struct SongRowCell: View {
    var imageSize: CGFloat = 50
    var imageName: String = Constants.randomImage
    var title: String = "Some song name goes here"
    var subtitle: String? = "Some artist name"
    var onCellPressed: (()->Void)? = nil
    var onEllipsisPressed: (()->Void)? = nil
    
    var body: some View {
        HStack {
            HStack(alignment: .top, spacing: 8){
                ImageLoaderView(urlString: imageName)
                    .frame(width: imageSize, height: imageSize)
                
                VStack(alignment: .leading, spacing: 4){
                    Text(title)
                        .font(.body)
                        .fontWeight(.medium)
                        .foregroundStyle(.spotifyWhite)
                    
                    Text(subtitle ?? "No sub title")
                        .font(.callout)
                        .foregroundStyle(.spotifyLightGray)
                }
                .lineLimit(2)
                .frame(maxWidth: .infinity, alignment: .leading)
            }
            
            HStack(alignment: .center) {
                Image(systemName: "ellipsis")
                    .font(.subheadline)
                    .foregroundStyle(.spotifyWhite)
                    .padding(16)
                    .background(.black.opacity(0.001))
                    .onTapGesture {
                        onEllipsisPressed?()
                    }
            }
        }
        .onTapGesture {
            onCellPressed?()
        }
    }
}

#Preview {
    ZStack {
        Color.black.ignoresSafeArea()
        
        VStack {
            SongRowCell()
            SongRowCell()
            SongRowCell()
            SongRowCell()
        }
    }
}
