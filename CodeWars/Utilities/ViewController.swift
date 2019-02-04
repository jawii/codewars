//
//  ViewController.swift
//  CodeWars
//
//  Created by Jaakko Kenttä on 24/01/2019.
//  Copyright © 2019 Jaakko Kenttä. All rights reserved.
//

import Cocoa

class ViewController: NSViewController {

	override func viewDidLoad() {
		super.viewDidLoad()
		print("Start")
		// Do any additional setup after loading the view.

		print(game(807))
//		XCTAssertEqual(game(204), "[20808]")
//		XCTAssertEqual(game(807), "[651249, 2]")
//		XCTAssertEqual(game(1808), "[1634432]")
	}

	override var representedObject: Any? {
		didSet {
		// Update the view, if already loaded.
		}
	}


}

