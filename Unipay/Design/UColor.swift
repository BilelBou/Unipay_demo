import SwiftUI

public struct UColor {
    public static let gray100 = Color(hex: "1A1B27")
    public static let gray80 = Color(hex: "1A1B27").opacity(0.80)
    public static let gray60 = Color(hex: "222433")
    public static let gray40 = Color(hex: "ADAEB3")
    
    public static let white = Color(hex: "FCFCFC")
    
    public static let primary = Color(hex: "423FFF")
    
    public static let success = Color(hex: "20BC56")
    public static let warning = Color(hex: "C1CD39")
    public static let alert = Color(hex: "BF3D35")
    
    public static let blueGradient = Gradient(colors: [Color(hex: "547AFF"), Color(hex: "413DFF")])
    public static let redGradient = Gradient(colors: [Color(hex: "FF7D54"), Color(hex: "FF3D3D")])
    
    public static let background = Color(hex: "1A1B27")

}
