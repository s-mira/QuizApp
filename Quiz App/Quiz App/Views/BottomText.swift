//
//  BottomText.swift
//  Quiz App
//
//  Created by Miranda Stewart on 9/28/22.
//

import SwiftUI

struct BottomText: View {
    let str: String
    
    var body: some View {
        HStack {
            Spacer()
            Text(str)
                .font(.body)
                .fontWeight(.bold)
                .padding(.all)
            Spacer()
        }.background(Color(red: 171/255, green: 190/255, blue: 139/255, opacity: 0.9))
    }
}

struct BottomText_Previews: PreviewProvider {
    static var previews: some View {
        BottomText(str: "This is Test Text")
            .foregroundColor(Color.white)
    }
}
