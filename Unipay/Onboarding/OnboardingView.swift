//
//  ContentView.swift
//  Unipay
//
//  Created by Bilel Bouricha on 15/01/2022.
//

enum OnboardingType: CaseIterable {
    case secure, add, custom
    
    var number: Int {
        switch self {
        case .secure:
            return 1
        case .add:
            return 2
        case .custom:
            return 3
        }
    }
    
    var title: String {
        switch self {
        case .secure:
            return "Secure payments"
        case .add:
            return "Add any accounts"
        case .custom:
            return "Custom card"
        }
    }
    
    var description: String {
        switch self {
        case .secure:
            return "Our unique payment encryption technology will protect your funds"
        case .add:
            return "You can add any account, card or crypto wallet to the app and make payments"
        case .custom:
            return "You can issue a card without leaving home. Physical and online cards are available in the application"
        }
    }
    
    var image: String {
        switch self {
        case .secure:
            return "main1"
        case .add:
            return "main2"
        case .custom:
            return "main3"
        }
    }
}

import SwiftUI

struct OnboardingView: View {
    
    @State var currentType: OnboardingType = .secure
    
    var body: some View {
        VStack() {
            ZStack(alignment: .top) {
                BackgroundLightView()
                TabView(selection: $currentType) {
                    ForEach(OnboardingType.allCases, id: \.self) { index in
                        VStack(spacing: 50) {
                            ZStack {
                                Image(index.image)
                                    .resizable()
                                    .scaledToFit()
                            }
                            VStack(spacing: 16) {
                                Text(index.title)
                                    .font(.title)
                                    .foregroundColor(.white)
                                Text(index.description)
                                    .multilineTextAlignment(.center)
                                    .font(.body)
                                    .foregroundColor(.gray)
                            }
                            .padding(EdgeInsets(top: 0, leading: 16, bottom: 0, trailing: 16))
                        }
                        .tag(index)
                    }
                }
                .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
            }
            VStack(spacing: 80) {
                CustomPageIndicator(current: $currentType)
                Text("Got it !")
                    .frame(maxWidth: .infinity, maxHeight: 44)
                    .background(
                        LinearGradient(gradient: UColor.blueGradient, startPoint: UnitPoint(x: 0.75, y: 0.5), endPoint: UnitPoint(x: 0.25, y: 0.5))
                    )
                    .foregroundColor(UColor.white)
                    .font(.body)
                    .cornerRadius(16)
            }
            .padding(EdgeInsets(top: 0, leading: 16, bottom: 0, trailing: 16))
        }
        .background(
            UColor.background
                .ignoresSafeArea()
        )
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView()
    }
}
