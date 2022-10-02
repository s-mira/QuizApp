//
//  ResultsView.swift
//  Quiz App
//
//  Created by Miranda Stewart on 9/29/22.
//

import SwiftUI

struct ResultsView: View {
    let viewModel: ResultsViewModel
    var body: some View {
        ZStack {
            GameColor.main.ignoresSafeArea()
            VStack {
                Spacer()
                HStack {
                    Text("Final Score: ")
                    Text (viewModel.finalPercentText)
                }
                .font(.system(.title, design: .rounded))
                .foregroundColor(Color(red: 72/255, green: 103/255, blue: 125/255))
                .padding()
                HStack {
                    Text("Letter Grade:")
                    Text(viewModel.letterGradeText)
                }
                    .padding(.bottom)
                    .font(.system(.title, design: .rounded))
                    .foregroundColor(Color(red: 72/255, green: 103/255, blue: 125/255))
                    Text (viewModel.correctSelectionText)
                        .font(.system(size: 30))
                        .foregroundColor(Color(red: 72/255, green: 103/255, blue: 125/255))
                    Text (viewModel.incorrectSelectionText)
                        .font(.system(size: 30))
                        .foregroundColor(Color(red: 72/255, green: 103/255, blue: 125/255))
                Text("Total time: \(viewModel.totalGameTimeText)")
                    .padding()
                    .font(.system(.body, design: .rounded))
                    .foregroundColor(Color(red: 72/255, green: 103/255, blue: 125/255))
                Spacer()
                NavigationLink(
                    destination: GameView(),
                    label: {
                        BottomText(str: "Try Again!")
                            .font(.system(.body, design: .rounded))
                            .foregroundColor(Color.white)
                            .padding()
                    })
            }
        }
        .navigationBarHidden(true)
    }
}

struct ResultsView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            ResultsView(viewModel: ResultsViewModel(selectionCount: (3, 1), gameStartTime: Date(), gameEndTime: Date()))
        }
    }
}
