//
//  ViewController.swift
//  SimbaBirthdayDemo
//
//  Created by Jack Kelly on 6/8/19.
//  Copyright © 2019 Jack Kelly. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    private var viewModel = BirthdayViewModel()
    
    @IBOutlet weak var currentImage: UIImageView!
    
    @IBOutlet weak var dateLabel: UILabel!
    
    @IBAction func btnChangeImage(_ sender: Any) {
        
        currentImage.image = viewModel.getNextImage()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        dateLabel.text = viewModel.getBirthday(withFormat: "d MMMM yyyy")
    }


}

