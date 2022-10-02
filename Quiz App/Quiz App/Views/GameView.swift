//
//  ContentView.swift
//  Quiz App
//
//  Created by Miranda Stewart on 9/28/22.
//

import SwiftUI

struct GameView: View {
    @StateObject var viewModel = GameViewModel()
    
    var body: some View {
        ZStack {
            GameColor.main.ignoresSafeArea()
            VStack {
                Text(viewModel.progressText)
                    .padding()
                    .foregroundColor(Color(red: 72/255, green: 103/255, blue: 125/255))
                Spacer()
                Text(viewModel.questionText)
                    .font(.system(.title,
                        design: .rounded))
                    .multilineTextAlignment(.center)
                    .padding()
                    .foregroundColor(Color(red: 046/255, green: 089/255, blue: 120/255))
                Spacer()
                Spacer()
                HStack {
                    ForEach(viewModel.answerIndices) { index in
                        AnswerButton(text: viewModel.answerText(for: index)) {
                            viewModel.makeSelectionForCurrentQuestion(at: index)
                        }
                        .background(viewModel.colorForButton(at: index))
                        .font(.footnote)
                        .foregroundColor(Color(red: 043/255, green: 051/255, blue: 064/255))
                        .disabled(viewModel.selectionWasMade)
                        .multilineTextAlignment(.center)
                    }
                }
                if viewModel.selectionWasMade {
                    Button(action: viewModel.advancedGameState, label: { BottomText(str: "Next")
                            .foregroundColor(Color.white)
                    })
                }
            } .padding(.bottom)
        }
        .navigationBarHidden(true)
        .background(resultsNavigationLink)
    }
    private var resultsNavigationLink: some View {
        NavigationLink(
            destination: ResultsView(viewModel: ResultsViewModel(selectionCount: viewModel.selectionCount, gameStartTime: viewModel.gameStartTime, gameEndTime: Date())),
            isActive: .constant(viewModel.gameIsOver),
            label: { EmptyView() })
    }
}
    
struct AnswerButton: View {
    let text: String
    let onClick: () -> Void
    var body: some View {
        Button(action: {
            onClick()
        }) {
            Text(text)
        }
            .padding()
            .border(Color(red: 171/255, green: 190/255, blue: 139/255, opacity: 0.9), width: 4)
            .background(Color.clear)
        }
}
    
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            GameView()
        }
    }
}
