//
//  ContentView.swift
//  RL4English
//
//  Created by Hoang Tien Cong  on 2/11/23.
//

import SwiftUI

struct GameView: View {
    @StateObject var viewModel = GameViewModel() // Updated
    
    var body: some View {
        ZStack{
            GameColor.main.ignoresSafeArea()
            VStack {
                Text(viewModel.questionProgressText)
                    .font(.callout)
                    .multilineTextAlignment(.leading)
                    .padding()
                QuestionView(question: viewModel.currentQuestion)
            }
        }
        .background(
        NavigationLink(destination: ScoreView(viewModel: ScoreViewModel(correctGuesses: viewModel.correctGuesses, incorrectGuesses: viewModel.incorrectGuesses)),
                              isActive: .constant(viewModel.gameIsOver),
                               label: { EmptyView() })
        )
        .foregroundColor(.white)
        .navigationBarHidden(true)
        .environmentObject(viewModel)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        GameView()
    }
}
