//
//  WalletView.swift
//  PalPay
//
//  Created by Luigi Minniti on 13/12/21.
//

import SwiftUI

struct WalletView: View {
    @State var move: Bool = false
    @State var tapped: Bool = false
    @State var tapped2: Bool = false
    @State var tapped3: Bool = false
    var payPal = false
    var body: some View {
        ScrollView(.vertical, showsIndicators: false){
            Spacer()
            ZStack{
                Rectangle()
                    .frame(width: 414, height: 800)
                    .foregroundColor(Color(red: 229/256, green: 229/256, blue: 229/256))
                    .ignoresSafeArea(edges: .top)
                    .offset(y:60)
                VStack(spacing:20){
                    HStack{
                        Text("Wallet").font(.largeTitle).fontWeight(.bold).padding(.leading, 10).padding(.top)
                        Spacer()
                        UserProfileView(profilePic: "UserPic").padding(.trailing).padding(.top)
                    }.padding(.horizontal)
                    ZStack{
//                        Rectangle()
//                            .frame(width: 440, height: 40)
//                            .foregroundColor(.white)
//                            .offset(y:-268)
                        VStack(alignment: .center){
                            HStack(){
                                Text("Debit cards and bank accounts")
                                    .font(.title2)
                                    .frame(width: 300, height:30)
                                    .foregroundColor(Color(red: 91/256, green: 86/256, blue: 86/256))
                                
                                PlusView(imageName: "plus").padding(.leading, 60)
                            }.padding(.horizontal)
                            Spacer().frame(height:200)
                            ZStack{
                                
                                Image("PAYPAL CARD")
                                    .offset(x:0, y: move ? -270 : -180)
                                    .onTapGesture{
                                        self.tapped.toggle()
                                    }
                                    .scaleEffect(tapped ? 1.2: 1)
                                    .animation(.easeIn)
                                
                                Image("VisaCard")
                                    .offset(x:0, y: move ? -120 : -130)
                                    .onTapGesture{
                                self.tapped2.toggle()
                            }
                            .scaleEffect(tapped2 ? 1.2: 1)
                            .animation(.easeIn)
                                
                                Image("MasterCard")
                                    .offset(x:0, y: move ? 40 : -80)
                                    .onTapGesture{
                                self.tapped3.toggle()
                            }
                            .scaleEffect(tapped3 ? 1.2: 1)
                            .animation(.easeIn)
                                
                                Image("WalletIcon")
                                    .onTapGesture {
                                        self.move.toggle()
                                    }
                                    .offset(x: 0 , y: move ? 70 : -30)
                                    .offset(x: move ? -270 : 0, y:0)
                                    .scaleEffect(move ? 1.3 : 1)
                            }.padding(.horizontal).offset(y:150).animation(.spring())
                            Spacer().frame(height:160)
                        }
                    }
                    Spacer()
                }
                Spacer()
            }
        }
    }
}

struct WalletView_Previews: PreviewProvider {
    static var previews: some View {
        WalletView()
    }
}
