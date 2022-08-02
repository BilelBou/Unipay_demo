//
//  BackgroundLightView.swift
//  Unipay
//
//  Created by Bilel Bouricha on 16/01/2022.
//

import SwiftUI

struct BackgroundLightView: View {
    var body: some View {
        HStack(alignment: .top) {
            Circle()
                .frame(width: 272, height: 272, alignment: .topLeading)
                .foregroundColor(Color(hex: "4A5AFF"))
                .opacity(0.32)
                .blur(radius: 110)
                .offset(x: -100, y: -150)
                .ignoresSafeArea()
            Spacer()
        }
        .edgesIgnoringSafeArea(.all)
        
    }
}

struct BackgroundLightView_Previews: PreviewProvider {
    static var previews: some View {
        BackgroundLightView()
    }
}
