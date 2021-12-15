//
//  ReceiveButtonView.swift
//  PalPay
//
//  Created by Luigi Minniti on 14/12/21.
//

import SwiftUI

struct ReceiveButtonView: View {
    var imageName: String
    var actionName: String
    var body: some View {
        ZStack{
        RoundedRectangle(cornerRadius: 10)
            .frame(width: 165, height: 59)
            .foregroundColor(Color(red: 26/255, green: 43/255, blue: 136/255))
            .shadow(radius: 1)
            HStack(spacing: 20){
                Image(imageName)
            }.offset(x:-60).padding(.leading, 5)
            Text(actionName)
                .font(.title2)
                .fontWeight(.semibold)
                .foregroundColor(.white)
                .padding(.leading)
    }
    }
}

struct ReceiveButtonView_Previews: PreviewProvider {
    static var previews: some View {
        ReceiveButtonView(imageName: "ReceiveIcon-1", actionName: "Receive").preferredColorScheme(.dark)
    }
}
