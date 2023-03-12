//
//  ChoiceTextView.swift
//  RL4English
//
//  Created by Hoang Tien Cong  on 3/12/23.
//

import SwiftUI

struct ChoiceTextView: View {
    let choiceText: String
 
    var body: some View {
        Text(choiceText)
          .font(.body)
          .bold()
          .multilineTextAlignment(.center)
          .padding()
          .border(GameColor.accent, width: 4)
    }
}

struct ChoiceTextView_Previews: PreviewProvider {
    static var previews: some View {
        ChoiceTextView(choiceText: "Choice Text!")
    }
}
