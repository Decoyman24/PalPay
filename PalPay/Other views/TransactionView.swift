//
//  TransactionView.swift
//  PalPay
//
//  Created by Luigi Minniti on 13/12/21.
//

import SwiftUI

struct TransactionView: View {
    var transPic: String
    var transName: String
    var transDate: String
    var body: some View {
        
        HStack(spacing: 5){
            ZStack{
                Circle()
                    .frame(width: 40, height: 40)
                Image(transPic)
            }.padding(.leading, 5)
            VStack(alignment: .leading, spacing: 0){
                Text(transName)
                    .font(.title2)
                    .foregroundColor(Color(red: 91/256, green: 86/256, blue: 86/256))
//                    .padding(.leading)
                Text(transDate)
                    .font(.caption)
                    .foregroundColor(Color(red: 91/256, green: 86/256, blue: 86/256))
            }.multilineTextAlignment(.leading)
        }
    }
}

struct TransactionView_Previews: PreviewProvider {
    static var previews: some View {
        TransactionView(transPic: "Ubericon", transName: "Uber Payments BV", transDate: "08 Dec - Automatic payment")
    }
}
