//
//  ViewController.swift
//  Project 12
//
//  Created by John Nyquist on 3/31/19.
//  Copyright © 2019 Nyquist Art + Logic LLC. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        write()
        read()
    }

    func write() {
        let defaults = UserDefaults.standard
        defaults.set(25, forKey: "Age")
        defaults.set(true, forKey: "UseFaceID")
        defaults.set(CGFloat.pi, forKey: "Pi")
        
        defaults.set("Paul Hudson", forKey: "Name")
        defaults.set(Date(), forKey: "LastRun")
        
        let array = ["Hello", "World"]
        defaults.set(array, forKey: "SavedArray")
        
        let dict = ["Name": "Paul", "Country": "UK"]
        defaults.set(dict, forKey: "SavedDict")
    }

    func read() {
        let defaults = UserDefaults.standard
        
        let savedInteger = defaults.integer(forKey: "Age")
        let savedBoolean = defaults.bool(forKey: "UseFaceID")
        
        //NOTE: for arrays and dictionaries use object(forKey:)
        let array = defaults.object(forKey:"SavedArray") as? [String] ?? [String]()
        let dict = defaults.object(forKey: "SavedDict") as? [String: String] ?? [String: String]()
        
        print(savedInteger)
        print(savedBoolean)
        print(array)
        print(dict)
        print()
    }
}

