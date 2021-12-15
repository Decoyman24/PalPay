//
//  ButtonView.swift
//  PalPay
//
//  Created by Luigi Minniti on 13/12/21.
//

import SwiftUI

struct PayButtonView: View {
    var imageName: String
    var actionName: String
    var body: some View {
        ZStack{
        RoundedRectangle(cornerRadius: 10)
            .frame(width: 165, height: 59)
            .foregroundColor(Color(red: 119/255, green: 201/255, blue: 249/255))
            .shadow(radius: 1)
            HStack(spacing: 20){
                Image(imageName)
            }.offset(x:-60).padding(.leading, 50)
            Text(actionName)
                .font(.title2)
                .fontWeight(.semibold)
                .foregroundColor(Color(red: 40/256, green: 53/256, blue: 106/256))
                .padding(.leading)
    }
    }
}

struct ButtonView_Previews: PreviewProvider {
    static var previews: some View {
        PayButtonView(imageName: "PayIconas", actionName: "Pay").preferredColorScheme(.dark)
    }
}
