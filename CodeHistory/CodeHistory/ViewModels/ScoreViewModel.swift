//
//  ScoreViewModel.swift
//  RL4English
//
//  Created by Hoang Tien Cong  on 3/12/23.
//

import Foundation
 
struct ScoreViewModel {
    let correctGuesses: Int
    let incorrectGuesses: Int
   
    var percentage: Int {
      (correctGuesses * 100 / (correctGuesses + incorrectGuesses))
    }
}
