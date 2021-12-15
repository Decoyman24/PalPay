//
//  SearchContactView.swift
//  PalPay
//
//  Created by Luigi Minniti on 13/12/21.
//

import SwiftUI

struct SearchContactView: View {
    var body: some View {
            VStack{
            ZStack{
            Circle()
                    .strokeBorder(.black, lineWidth: 0.5)
                .frame(width:60, height: 60)
                .foregroundColor(.white)
                
                Image(systemName: "magnifyingglass")
                    .foregroundColor(.black)
                    .font(.largeTitle)
        }
                Text("Search \n Contacts")
                    .font(.caption)
                    .foregroundColor(Color(red: 91/256, green: 86/256, blue: 86/256))
                    .multilineTextAlignment(.center)
        }
    }
}

struct SearchContactView_Previews: PreviewProvider {
    static var previews: some View {
        SearchContactView()
    }
}
