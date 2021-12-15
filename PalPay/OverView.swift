//
//  OverView.swift
//  PalPay
//
//  Created by Luigi Minniti on 13/12/21.
//

import SwiftUI

struct OverView: View {
    var body: some View {
        ScrollView(.vertical, showsIndicators: false){
            ZStack{
                Rectangle()
                    .frame(width: 414, height: 670)
                    .foregroundColor(Color(red: 229/256, green: 229/256, blue: 229/256))
                    .ignoresSafeArea(edges: .top)
                VStack(spacing:0){
                    HStack{
                        Text("Overview").font(.largeTitle).fontWeight(.bold).padding(.leading, 30).padding(.top)
                        Spacer()
                        UserProfileView(profilePic: "UserPic").padding(.trailing).padding(.top)
                    }.padding(.horizontal)
                    VStack{
                        CardView()
                        HStack{
                            PayButtonView(imageName: "PayIconas", actionName: "Pay")
                            ReceiveButtonView(imageName: "ReceiveIcon-1", actionName: "Get Paid")
                        }
                    }.padding()
                    ZStack{
                        Rectangle()
                            .frame(width: 450, height: 170)
                            .foregroundColor(.white)
                        VStack(alignment: .leading){
                            Text("Recent Contacts")
                                .font(.title3)
                                .foregroundColor(Color(red: 91/256, green: 86/256, blue: 86/256))
                                .padding(.leading, 30)
                            ScrollView(.horizontal, showsIndicators: false){
                                HStack(spacing: 15){
                                    ProfileView(profilePic: "PietroStorti", profileName: "Pietro \nStorti").padding(.leading)
                                    ProfileView(profilePic: "PietroSmusi", profileName: "Pietro \nSmusi")
                                    ProfileView(profilePic: "PieroArmenti", profileName: "Piero \nArmenti")
                                    ProfileView(profilePic: "PietroSermonti", profileName: "Pietro \nSermonti")
                                    ProfileView(profilePic: "PietroSavastano", profileName: "Pietro \nSavastano")
                                    SearchContactView()
                                }
                            }.padding(.horizontal, 20)
                        }
                    }
                    
                    VStack{
                        ZStack{
                            Rectangle()
                                .frame(width: 414, height: 330)
                                .foregroundColor(.white)
                                .padding(.vertical)
                            VStack(alignment: .leading){
                                Text("Last Transactions")
                                    .font(.title3)
                                    .foregroundColor(Color(red: 91/256, green: 86/256, blue: 86/256))
                                    .padding(.top)
                                
                                TransactionView(transPic: "Spotyficon", transName: "Spotify Inc.", transDate: "08 Dec - Automatic payment")
                                Divider().frame(width: 390)
                                TransactionView(transPic: "Ubericon", transName: "Uber Payments BV", transDate: "08 Dec - Automatic payment")
                                Divider().frame(width: 390)
                                TransactionView(transPic: "Spotyficon", transName: "Spotify Inc.", transDate: "08 Dec - Automatic payment")
                                Divider().frame(width: 390)
                                TransactionView(transPic: "Spotyficon", transName: "Spotify Inc.", transDate: "08 Dec - Automatic payment")
                                Divider().frame(width: 390)
                                Text("Show all")
                                    .font(.headline)
                                    .foregroundColor(Color(red: 40/256, green: 53/256, blue: 106/256))
                                    .padding(.top, 5)
                                    .padding(.bottom, 20)
                                    .padding(.leading, 150)
                            }
                            
                        }
                        
                    }
//                    Spacer()
                }
            }
        }
    }
}
struct OverView_Previews: PreviewProvider {
    static var previews: some View {
        OverView()
    }
}
