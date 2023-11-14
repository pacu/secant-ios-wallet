//
//  SwiftUIView.swift
//  
//
//  Created by Lukáš Korba on 10.11.2023.
//

import SwiftUI
import Generated
import ZcashLightClientKit

public struct AvailableBalanceView: View {
    let balance: Zatoshi
    let tokenName: String
    
    public init(balance: Zatoshi, tokenName: String) {
        self.balance = balance
        self.tokenName = tokenName
    }
    
    public var body: some View {
        HStack(spacing: 3) {
            Text(L10n.Balance.availableTitle)
                .font(.custom(FontFamily.Inter.regular.name, size: 14))
                .underline()
            
            Balance8FloatingDigitsView(
                balance: balance,
                fontName: FontFamily.Inter.bold.name,
                mainFontSize: 14,
                restFontSize: 7
            )
            
            Text(tokenName)
                .font(.custom(FontFamily.Inter.regular.name, size: 14))
        }
    }
}

#Preview {
    AvailableBalanceView(balance: Zatoshi(25_793_456), tokenName: "TAZ")
}