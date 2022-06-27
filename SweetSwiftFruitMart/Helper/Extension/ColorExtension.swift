//
//  ColorExtension.swift
//  SweetSwiftFruitMart
//
//  Created by 강대민 on 2022/06/27.
//

import SwiftUI

extension Color {
    static let peach = Color("peach")
    static let primaryShadow = Color.primary.opacity(0.2) //그림자에 사용할 색
    
    init(hex: String) {
        let scanner = Scanner(string: hex) //문자열 파서
        _ = scanner.scanString("#") //scanString은 iOS13부터, "#"문자 제거
        
        var rgb: UInt64 = 0
        //문자열을 Int64타입으로 저장해 rgb변수에 저장, 변환할 수 없다면 0
        scanner.scanHexInt64(&rgb)
        
        let r = Double((rgb >> 16) & 0xFF) / 255.0 //좌측 문자열 2개
        let g = Double((rgb >> 8) & 0xFF) / 255.0 //중간 문자열 2개
        let b = Double((rgb >> 0 ) & 0xFF) / 255.0
        self.init(red: r, green: g, blue: b)
    }
    
    static let secondaryText = Color(hex: "#6e6e6e")
    static let background = Color(UIColor.systemGray6)
    
}
