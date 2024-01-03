//
//  TransactionHistoryDetails.swift
//  Veegil_Test_Bank_App
//
//  Created by Travis Okonicha on 09/12/2023.
//

import SwiftUI

struct TransactionHistoryDetailsView: View {
    var body: some View {
        NavigationStack {
            VStack {
                CustomerInfomationWidget(
                             widgetLabel: "Sent",
                             childWidget: Image(systemName: "arrow.up")
                ).foregroundColor(Color.white)
                Text("- 4,540.0 USD")
                    .font(.title)
                    .fontWeight(.medium)
                    .padding(.vertical, 8)
                
                Text( "Travis Ugochukwu Okonicha")
                    .font(.headline)
                    .fontWeight(.regular)
                
                HStack {
                    Text("Add")
                        .font(.headline)
                    Image(systemName: "plus.circle.fill")
                        .font(.largeTitle)
                        .foregroundColor(Color.black.opacity(0.2))
                }
                .foregroundColor(Color.white)
                .padding(.vertical, 5)
                .padding(.horizontal, 12)
                .background(Color.pink)
                .cornerRadius(30)
           
                .padding(.vertical, 15)

                
                Text("Transaction Details")
                    .font(.title2)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .fontWeight(.regular)
                    .padding(.vertical, 10)
                
                ForEach (0..<4) { index in
                    TransactionInfoWidget()
                        .padding(.vertical, 5)
                }
                
               
                
                Button (
                    action: {},
                    label: {
                    Text("Download reciept")
                            .foregroundColor(Color.white)
                            .padding(.vertical, 18)
                            .padding(.horizontal, 25)
                            .background(Color.pink)
                            .cornerRadius(15)
                            .padding(.vertical, 60)
                })
                Spacer()
            }
            .padding(.horizontal, 20)
            .navigationBarItems(
                    leading: NavigationLink(
                        destination: TransactionHistoryView(),
                        label: {
                            Image(systemName: "xmark.circle.fill")
                                .font(.title)
                                .foregroundColor(Color.black.opacity(0.2))
                        }
                    ),
                    
                    trailing:    NavigationLink(
                        destination: TransactionHistoryView(),
                        label: {
                            HStack {
                                Image(systemName: "questionmark.circle.fill")
                                    .font(.title)
                                    .foregroundColor(Color.black.opacity(0.2))
                                
                                Image(systemName: "ellipsis")
                                    .font(.title)
                                    .foregroundColor(Color.black.opacity(0.2))
                            }
                           
                        }
                    )
                    .accentColor(.red)
            )
        }
        
    }
}


struct  TransactionInfoWidget: View {
    var body: some View {
        HStack {
            Text("First Text")
                .font(.subheadline)
                .fontWeight(.regular)
            
            Spacer()
            
            Text("Second text")
                .font(.subheadline)
                .fontWeight(.light)
        }
    }
}


struct TransactionHistoryDetails_Previews: PreviewProvider {
    static var previews: some View {
        TransactionHistoryDetailsView()
    }
}
