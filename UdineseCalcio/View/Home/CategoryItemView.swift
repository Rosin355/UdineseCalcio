//
//  CategoryItemView.swift
//  UdineseCalcio
//
//  Created by Romesh Singhabahu on 19/01/21.
//

import SwiftUI

struct CategoryItemView: View {
    // MARK: - PROPERTIES
    let category: Category
    // MARK: - BODY
    var body: some View {
        Button(action: {}, label: {
            HStack(alignment: .center, spacing: 6) {
                Image(category.image)
                    .renderingMode(.template)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 30, height: 30, alignment: .center)
                    .foregroundColor(.gray)
                
                
                Text(category.name)
                    .fontWeight(.light)
                    .foregroundColor(.gray)
                
                Spacer()
            }//: HSTACK
            .padding()
            .background(Color.white.cornerRadius(12))
            .background(
                RoundedRectangle(cornerRadius: 12)
                    .stroke(Color.gray, lineWidth: 1)
            )
        })//: BUTTON
    }
}

// MARK: - PREVIEW
struct CategoryItemView_Previews: PreviewProvider {
    static var previews: some View {
        CategoryItemView(category: categories[10])
            .previewLayout(.sizeThatFits)
            .padding()
            .background(colorBackground)
    }
}
