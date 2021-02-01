//
//  FooterView.swift
//  UdineseCalcio
//
//  Created by Romesh Singhabahu on 11/01/21.
//

import SwiftUI

struct FooterView: View {
    // MARK: - PROPERTIES
    
    // MARK: - BODY
    var body: some View {
        
        VStack(alignment: .center, spacing: 10) {
            
            Text("We offer the most cutting edge, comfortable, lightweight and durable udinese soccer items for all.")
                .foregroundColor(.gray)
                .multilineTextAlignment(.center)
                .layoutPriority(2)
            
            Image("logo-lineal")
                .renderingMode(.original)
                .foregroundColor(.gray)
                .layoutPriority(0)
            
            Text("Copyright @ Udinese Calcio\nAll right reseverd")
                .font(.footnote)
                .fontWeight(.bold)
                .foregroundColor(.gray)
                .multilineTextAlignment(.center)
                .layoutPriority(1)
            
        } //: VSTACK
        .padding()
    }
}


// MARK: - PREVIEW
struct FooterView_Previews: PreviewProvider {
    static var previews: some View {
        FooterView()
            .previewLayout(.sizeThatFits)
            .background(colorBackground)
    }
}
