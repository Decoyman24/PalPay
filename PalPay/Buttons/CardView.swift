//
//  CardView.swift
//  PalPay
//
//  Created by Luigi Minniti on 13/12/21.
//

import SwiftUI

struct CardView: View {
    var body: some View {
        ZStack{
        RoundedRectangle(cornerRadius: 10)
            .frame(width: 352, height: 97)
            .foregroundColor(Color(.white))
            .shadow(radius: 2)
            ZStack{
                Circle()
                    .fill(Color(red: 229/256, green: 229/256, blue: 229/256))
                    .frame(width:40, height:40)
                Image("PayPal")
            }.offset(x:-140, y:-8).padding(.leading, 0)
            Text("0,00 EUR")
                .foregroundColor(.black)
                .font(.largeTitle)
                .fontWeight(.semibold)
                .offset(x: -35, y: -12)
            Text("PayPal credit")
                .foregroundColor(.black)
                .font(.caption)
                .offset(x: -68, y:18)
    }
}
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView().preferredColorScheme(.dark)
    }
}
