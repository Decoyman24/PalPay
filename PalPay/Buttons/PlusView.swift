//
//  PlusView.swift
//  PalPay
//
//  Created by Luigi Minniti on 14/12/21.
//

import SwiftUI

struct PlusView: View {
    var imageName: String
    var body: some View {
        VStack{
        ZStack{
        Circle().frame(width: 30, height: 30)
            Image(imageName).resizable().frame(width:30, height:30)
    }
    }
}
}

struct PlusView_Previews: PreviewProvider {
    static var previews: some View {
        PlusView(imageName:"plus")
    }
}
