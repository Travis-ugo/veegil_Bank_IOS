//
//  PerformanceAnalyticsView.swift
//  Veegil_Test_Bank_App
//
//  Created by Travis Okonicha on 09/12/2023.
//

import SwiftUI

struct PerformanceAnalyticsView: View {
    var body: some View {
        ScrollView {
            VStack(spacing: 10) {
                SectionTitleWidget(
                    smallTitle: "Optimize perfoemances",
                    largeSubTitle: "Analytics"
                )
                
                HStack {
                    
                    Image(systemName: "car")
                    Text("**** 5432")
                    Image(systemName: "chevron.down")
                }
                .font(.body)
                .fontWeight(.light)
                .padding(13)
                .background(Color.white.opacity(0.3))
                .cornerRadius(30)
                .padding(.vertical, 10)
                
                SectionTitleWidget(
                            smallTitle: "Total Amount",
                            largeSubTitle: "21,023.45 USD"
                          )
                
                Rectangle()
                    .frame(height: 200)
                    .foregroundColor(Color.black.opacity(0.1))
                
                SectionTitleWidget(
                    smallTitle: "Credit Card",
                    largeSubTitle: "History"
                )
                .padding(.vertical, 15)
                
                VStack(spacing: 10) {
                    ForEach (0 ..< 4) { index in TransactionHistoryTileWidget()
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

struct PerformanceAnalyticsView_Previews: PreviewProvider {
    static var previews: some View {
        PerformanceAnalyticsView()
    }
}
