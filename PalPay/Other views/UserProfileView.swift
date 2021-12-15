//
//  UserProfileView.swift
//  PalPay
//
//  Created by Luigi Minniti on 14/12/21.
//

import SwiftUI

struct UserProfileView: View {
    var profilePic: String
    var body: some View {
        VStack{
        ZStack{
        Circle().frame(width: 40, height: 40)
            Image(profilePic).resizable().frame(width:40, height:40)
    }
    }
}
}

struct UserProfileView_Previews: PreviewProvider {
    static var previews: some View {
        UserProfileView(profilePic: "UserPic")
    }
}
