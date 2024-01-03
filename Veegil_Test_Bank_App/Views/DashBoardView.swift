//
//  DashBoardView.swift
//  Veegil_Test_Bank_App
//
//  Created by Travis Okonicha on 09/12/2023.
//

import SwiftUI

struct DashBoardView: View {
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 15) {
                SectionTitleWidget(
                    smallTitle: "Your card infomation",
                    largeSubTitle:  "All Credit \nCards(2)"
                )
                
                VirtualCardWidget()
                SectionTitleWidget(
                    smallTitle: "Latest",
                    largeSubTitle: "Transactions"
                )
                .padding(.top, 15)
                
                Text("view all")
                    .foregroundColor(.purple)
                
                VStack {
                    ForEach (0 ..< 4) { index in TransactionHistoryTileWidget()
                        
                    }
                }
                    
                Spacer()
            }
            .padding(.top, 40)
            .padding(20)
            .background( Color.green.opacity(0.4))
            
            
        }
    }
}


struct DashBoardView_Previews: PreviewProvider {
    static var previews: some View {
        DashBoardView()
    }
}
