//
//  ViewController.swift
//  Apple Pie
//
//  Created by Micah Grossman on 1/21/18.
//  Copyright © 2018 Micah Grossman. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

	override func viewDidLoad() {
		super.viewDidLoad()
		// Do any additional setup after loading the view, typically from a nib.
	}

	@IBOutlet weak var treeImageView: UIImageView!
	@IBOutlet weak var correctWordLabel: UILabel!
	@IBOutlet weak var scoreLabel: UILabel!
	
	@IBOutlet var letterButtons: [UIButton]!
	@IBAction func buttonPressed(_ sender: UIButton) {
		sender.isEnabled = false
		
	}
	override func didReceiveMemoryWarning() {
		super.didReceiveMemoryWarning()
		// Dispose of any resources that can be recreated.
	}


}

