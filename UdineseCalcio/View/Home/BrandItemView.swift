//
//  BrandItemView.swift
//  UdineseCalcio
//
//  Created by Romesh Singhabahu on 29/01/21.
//

import SwiftUI

struct BrandItemView: View {
    // MARK: - PROPERTIES
    
    let brands: Brand
    
    // MARK: - BODY
    var body: some View {
        Image(brands.image)
            .resizable()
            .scaledToFit()
            .padding(3)
            .background(Color.white.cornerRadius(12))
            .background(RoundedRectangle(cornerRadius: 12).stroke(Color.gray, lineWidth: 1))
    }
}


// MARK: - PREVIEW
struct BrandItemView_Previews: PreviewProvider {
    static var previews: some View {
        BrandItemView(brands: brands[0])
            .previewLayout(.sizeThatFits)
            .padding()
            .background(colorBackground)
    }
}
