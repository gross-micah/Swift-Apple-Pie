//
//  ViewController.swift
//  Apple Pie
//
//  Created by Micah Grossman on 1/21/18.
//  Copyright © 2018 Micah Grossman. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
	var listOfWords = ["pilfer", "enthusiasm", "clown", "shakshuka", "calvin", "hobbes", "peanuts"]
	let incorrectMovesAllowed = 7
	var totalWins = 0
	var totalLosses = 0
	var currentGame: Game!
	
	override func viewDidLoad() {
		super.viewDidLoad()
		newRound()
	}
	
	func newRound() {
		let newWord = listOfWords.removeFirst()
		currentGame = Game(word: newWord, incorrectMovesRemaining: incorrectMovesAllowed, guessedLetters: [])
		updateUI()
	}
	
	func updateUI() {
		correctWordLabel.text = currentGame.formattedWord
		scoreLabel.text = "Wins: \(totalWins), Losses: \(totalLosses)"
		treeImageView.image = UIImage(named: "Tree \(currentGame.incorrectMovesRemaining)")
	}

	@IBOutlet weak var treeImageView: UIImageView!
	@IBOutlet weak var correctWordLabel: UILabel!
	@IBOutlet weak var scoreLabel: UILabel!
	
	@IBOutlet var letterButtons: [UIButton]!
	@IBAction func buttonPressed(_ sender: UIButton) {
		sender.isEnabled = false
		let letterString = sender.title(for: .normal)!
		let letter = Character(letterString.lowercased())
		currentGame.playerGuessed(letter: letter)
		updateUI()
	}
	override func didReceiveMemoryWarning() {
		super.didReceiveMemoryWarning()
		// Dispose of any resources that can be recreated.
	}


}

