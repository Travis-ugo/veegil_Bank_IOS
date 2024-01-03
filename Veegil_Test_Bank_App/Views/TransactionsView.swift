//
//  TransactionsView.swift
//  Veegil_Test_Bank_App
//
//  Created by Travis Okonicha on 09/12/2023.
//

import SwiftUI

struct TransactionsView: View {
    var body: some View {
        ScrollView {
            VStack(spacing: 10) {
                SectionTitleWidget(
                    smallTitle: "Credit card",
                    largeSubTitle:  "Total Balance"
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
                
                Text("40,540.74 USD")
                    .font(.title)
                    .fontWeight(.medium)
                    .padding(.top, 10)
                
                HStack(alignment: .center) {
                    CustomerInfomationWidget(
                        widgetLabel: "send",
                        childWidget: Image(systemName: "arrow.up")
                    )
                    CustomerInfomationWidget(
                        widgetLabel: "with draw",
                        childWidget: Image(systemName: "arrow.down")
                    )
                    CustomerInfomationWidget(
                        widgetLabel: "add",
                        childWidget: Image(systemName: "plus")
                    )
                 
                }   .font(.body)
                    .foregroundColor(Color.white)
                
                SectionTitleWidget(
                    smallTitle: "Last Receipients",
                    largeSubTitle: "Send to"
                )
                .padding(.top, 15)
                
                HStack {
                    ForEach (0..<3) { index in
                        CustomerInfomationWidget(
                            widgetLabel: "anna",
                            childWidget: Image(systemName: "person")
                        )
                        .font(.body)
                        .foregroundColor(Color.white)
                    }
                    Spacer()
                }
                
                VStack(spacing: 10) {
                    ForEach (0 ..< 4) { index in TransactionHistoryTileWidget()
                    }
                }
                    
                Spacer()
            }
            .padding(.top, 40)
            .padding(20)
            .background( Color.purple.opacity(0.4))
        }
    }
}
struct TransactionsView_Previews: PreviewProvider {
    static var previews: some View {
        TransactionsView()
    }
}
