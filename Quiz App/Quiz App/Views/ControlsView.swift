//
//  ControlsView.swift
//  Quiz App
//
//  Created by Miranda Stewart on 9/29/22.
//

import SwiftUI

struct ControlsView: View {
    @State var name = "user"
    @State var shapeCount = 5
    
    var body: some View {
        ZStack {
            Color(red: 221/255, green: 222/255, blue: 212/255, opacity: 0.5)
                .ignoresSafeArea()
        VStack {
            Text("Controls")
                .font(.system(.largeTitle,
                        design: .rounded))
                .foregroundColor(Color(red: 72/255, green: 103/255, blue: 125/255))
                .bold()
            Text("Welcome \(name)!")
                .font(.system(.title3,
                        design: .rounded))
                .foregroundColor(Color(red: 72/255, green: 103/255, blue: 125/255))
            Spacer()
            Spacer()
            Spacer()
            HStack {
                ForEach(0..<shapeCount, id: \.self) { _ in
                    Circle()
                        .foregroundColor(Color(red: 171/255, green: 190/255, blue: 139/255, opacity: 0.9))
                }
            }
            Form {
                TextField("Johnny Appleseed", text: $name)
                Stepper("Number of Shapes : \(shapeCount)", value: $shapeCount, in: 1...6)
            }
        }
    }
}
}
struct ControlsView_Previews: PreviewProvider {
    static var previews: some View {
        ControlsView()
    }
}
