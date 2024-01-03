//
//  ContentView.swift
//  Veegil_Test_Bank_App
//
//  Created by Travis Okonicha on 30/11/2023.
//

import SwiftUI

struct ContentView: View {
    @State var selectedTabItem: Int = 0
    
    var body: some View {
        NavigationStack {
            Group {
                TabView(selection: $selectedTabItem) {
                    NavigationStack {
                        DashBoardView()
                    }
                    .tabItem {
                        Image(systemName: "house.fill")
                            .font(.title)
                        Text("Home")
                    }
                    .tag(0)
                
                    TransactionsView()
                    .tabItem {
                        Image(systemName: "arrow.up.right")
                            .font(.title)
                        Text("Browse")
                    }
                    .tag(1)
                
                PerformanceAnalyticsView()
                    .tabItem {
                        Image(systemName: "chart.line.uptrend.xyaxis")
                            .font(.title)
                        Text("Profile")
                    }
                    .tag(2)
                }
                .tabViewStyle(.automatic)
            }
            .navigationBarItems(
                    leading: NavigationLink(
                        destination: TransactionHistoryView(),
                        label: {
                            MenuButton()
                        }
                    ),
                    
                    trailing:    NavigationLink(
                        destination: TransactionHistoryView(),
                        label: {
                            CircluarHolder()
                           
                        }
                    )
                    .accentColor(.red)
            )
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}





struct AppBar: View {
    var body: some View {
        HStack {
            MenuButton()
            Spacer()
            CircluarHolder()
            
        }
    }
}

struct CircluarHolder: View {
        
        var body: some View {
            HStack(spacing: 15) {
                Button(action: {
                   
                }, label: {
                    Circle()
                         .frame(width: 45, height: 45)
                         .overlay(
                             Image(systemName: "bell")
                                .font(.headline)
                                 .foregroundColor(Color.white)
                         )
                })

                Button(action: {
                   
                }, label: {
                    Circle()
                         .frame(width: 45, height: 45)
                         
                         .overlay(
                             Image(systemName: "person")
                                 .font(.headline)
                                 .foregroundColor(Color.white)
                         )
                })
            
            }
            .foregroundColor(Color.gray)
         
        }
}

struct MenuButton: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 5) {
            Rectangle()
                .frame(width: 25, height: 2)
                .cornerRadius(30)
            Rectangle()
                .frame(width: 35, height: 2)
                .cornerRadius(30)
            Rectangle()
                .frame(width: 18, height: 2)
                .cornerRadius(30)
        }
    }
}

struct SecondNavigationViewScreen: View {
    
    @Environment(\.presentationMode) var presenmtationMode
    
    var body: some View {
        ZStack {
            Color.purple
                .ignoresSafeArea()
            
                .navigationTitle("Second Screen")
                
            VStack {
                Text("Second Screen")
                    .foregroundColor(Color.white)
                    .font(.title)
                    .fontWeight(.bold)
                    .padding(.bottom, 30)
                
                Button(action: {
                    presenmtationMode.wrappedValue.dismiss()
                }, label: {
                    Image(systemName: "heart")
                        .font(.largeTitle)
                        .foregroundColor(Color.white)
                })
            }
        }
    }
}


struct SectionTitleWidget: View {
    
    let smallTitle: String
    let largeSubTitle: String
    let smallTitleFontSize: Font? = nil
    let largeTitleFontSize: Font?  = nil
    let largeTitleFontWeight: Font.Weight? = nil
 
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(smallTitle)
                .font(smallTitleFontSize ?? .headline)
                .fontWeight(.light)
            
            HStack {
                Text(largeSubTitle)
                    .font(largeTitleFontSize ?? .system(size: 44))
                    .fontWeight(largeTitleFontWeight ?? .medium)
            }
        }
        .frame(maxWidth: .infinity, alignment: .leading)
    }
}


struct VirtualCardWidget: View {
    var body: some View {
        Rectangle()
            .overlay {
                VStack {
                    HStack {
                        Text("**** 7578")
                            .font(.title)
                            .foregroundColor(Color.black)
                        Spacer()
                        Image(systemName: "creditcard")
                            .font(.title)
                            .foregroundColor(Color.black)
                        
                    }
                    Spacer()
                    
                    SectionTitleWidget(
                                smallTitle: "Card owner",
                                largeSubTitle: "Jordan Smith"
                              )
                    .foregroundColor(Color.black)
                }
                .padding(20)

            }
           
            .frame(height: 200)
            .cornerRadius(18)
            .foregroundColor(.blue.opacity(0.7))
    }
}


struct TransactionHistoryTileWidget: View {
    var body: some View {
        NavigationStack {
            NavigationLink(
                destination: TransactionHistoryDetailsView(),
                label: {
                    HStack {
                        Image(systemName: "arrow.down")
                            .font(.body)
                            .foregroundColor(Color.white)
                            .padding(.trailing, 20)
                            .padding(.leading, 10)
                        
                        VStack(alignment: .leading, spacing: 3) {
                            Text("From Jordan R.")
                                .font(.subheadline)
                                .fontWeight(.regular)
                            Text(  "Today, 17:10")
                                .font(.body)
                                .fontWeight(.regular)
                        }
                        Spacer()
                        Text("+$220")
                            .font(.subheadline)
                            .fontWeight(.light)
                    }
                    .padding(23)
                    .frame(maxWidth: .infinity)
                    .background(.gray.opacity(0.3))
                    .foregroundColor(Color.black)
                }
            )
        .cornerRadius(20)
        }
       
    }
}







struct CustomerInfomationWidget: View {
    let widgetLabel: String
    let childWidget: Image
    
    var body: some View {
        VStack {
            Button(action: {
                
            }, label: {
                Circle()
                    .fill(Color.black.opacity(0.1))
                    .frame(width: 70, height: 70)
                    .overlay(
                        childWidget
                    )
            })
            Text(widgetLabel)
                .font(.subheadline)
                .fontWeight(.light)
                .foregroundColor(Color.black)
        }
                    .padding(.vertical, 10)
    }
}




