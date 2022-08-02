//
//  CustomPageIndicator.swift
//  Unipay
//
//  Created by Bilel Bouricha on 16/01/2022.
//

import SwiftUI

struct CustomPageIndicator: View {
    @Binding var current: OnboardingType
    
    var body: some View {
        HStack(spacing: 4){
            ForEach(OnboardingType.allCases,id: \.self) { index in
                ZStack {
                    if current == index {
                        Rectangle()
                            .frame(width: 35, height: 4)
                            .foregroundColor(UColor.primary)
                            .cornerRadius(8)
                    } else {
                        Rectangle()
                            .frame(width: 35, height: 4)
                            .foregroundColor(UColor.white.opacity(0.08))
                            .cornerRadius(8)
                    }
                }
            }
        }
    }
}

struct CustomPageIndicator_Previews: PreviewProvider {
    static var previews: some View {
        CustomPageIndicator(current: .constant(.secure))
            .previewLayout(.sizeThatFits)
            .padding()
            .background(
                UColor.background
            )
    }
}
