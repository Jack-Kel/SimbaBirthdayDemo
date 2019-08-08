//
//  BirthdayViewModel.swift
//  SimbaBirthdayDemo
//
//  Created by Jack Kelly on 6/8/19.
//  Copyright © 2019 Jack Kelly. All rights reserved.
//

import Foundation
import UIKit

struct BirthdayViewModel
{
    //this is the model
    private var character: Characters = Characters()
    
    public mutating func getNextImage() -> UIImage?
    {
        let image = UIImage(named: character.getNextImageName())
        return image
    }
    
    func getBirthday(withFormat format: String = "dd-MM-YYYY") -> String?
    {
        guard let date = character.birthday.date else{return nil}
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = format
        return dateFormatter.string(from: date)
    }
}
