//
//  HomeCard.swift
//  Unipay
//
//  Created by Bilel Bouricha on 01/02/2022.
//

import SwiftUI

struct HomeCard: View {
    var body: some View {
        ZStack {
            Rectangle()
                .fill(
                    .linearGradient(UColor.blueGradient, startPoint: UnitPoint(x: 0.75, y: 0.5), endPoint:UnitPoint(x: 0.25, y: 0.5))
                )
                .frame(width: 160, height: 200)
                .cornerRadius(16)
        }
    }
}

struct HomeCard_Previews: PreviewProvider {
    static var previews: some View {
        HomeCard()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
