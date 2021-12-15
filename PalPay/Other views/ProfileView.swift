//
//  ProfileView.swift
//  PalPay
//
//  Created by Luigi Minniti on 13/12/21.
//

import SwiftUI

struct ProfileView: View {
    var profilePic: String
    var profileName : String
    var body: some View {
        VStack{
        ZStack{
        Image(profilePic)
    }
            Text(profileName)
                .font(.caption)
                .foregroundColor(Color(red: 91/256, green: 86/256, blue: 86/256))
                .multilineTextAlignment(.center)
    }
}
}
struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView(profilePic: "PietroStorti", profileName:"Pietro \nStorti")
    }
}
