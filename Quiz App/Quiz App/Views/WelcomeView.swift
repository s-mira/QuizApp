//
//  WelcomeView.swift
//  Quiz App
//
//  Created by Miranda Stewart on 9/29/22.
//

import SwiftUI

struct WelcomeView: View {
    var body: some View {
        NavigationView {
            ZStack {
                Color(red: 221/255, green: 222/255, blue: 212/255, opacity: 0.5)
                    .ignoresSafeArea()
                VStack {
                    Spacer()
                    Text("Movie Trivia!")
                        .font(.system(.largeTitle,
                                design: .rounded))
                        .foregroundColor(Color(red: 72/255, green: 103/255, blue: 125/255))
                        .bold()
                        .padding()
                    Text ("Select the Correct Answer to Each Question.")
                        .font(.system(.title3,
                            design: .rounded))
                        .foregroundColor(Color(red: 72/255, green: 103/255, blue: 125/255))
                        .multilineTextAlignment(.center)
                    Spacer()
                    NavigationLink(
                        destination: GameView(),
                        label: {
                            BottomText(str: "Let's Go!")
                                .font(.system(.body, design: .rounded))
                                .foregroundColor(Color.white)
                                .padding()
                        })
                }
            }
        }
    }
}
struct WelcomeView_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeView()
    }
}
