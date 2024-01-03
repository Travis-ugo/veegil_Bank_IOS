//
//  TransactionHistoryView.swift
//  Veegil_Test_Bank_App
//
//  Created by Travis Okonicha on 09/12/2023.
//

import SwiftUI

struct TransactionHistoryView: View {
    var body: some View {
        ScrollView {
            VStack(spacing: 10) {
                SectionTitleWidget(
                    smallTitle: "current History",
                    largeSubTitle:     "Transactions"
                )
                .padding(.vertical, 15)
                
                VStack(spacing: 10) {
                    ForEach (0 ..< 13) { index in TransactionHistoryTileWidget()
                    }
                }
                    
                Spacer()
            }
            .padding(.top, 40)
            .padding(20)
            .background( Color.blue.opacity(0.4))
        }
    }
}

struct TransactionHistoryView_Previews: PreviewProvider {
    static var previews: some View {
        TransactionHistoryView()
    }
}
