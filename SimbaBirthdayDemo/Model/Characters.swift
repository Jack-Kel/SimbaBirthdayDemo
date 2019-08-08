//
//  Characters.swift
//  SimbaBirthdayDemo
//
//  Created by Jack Kelly on 6/8/19.
//  Copyright © 2019 Jack Kelly. All rights reserved.
//

import Foundation

struct Characters
{
    private var characters:[String] = []
    private var current:Int = 0
    
    let birthday: CustomDate = CustomDate(day: 2, month: 2, year: 2019)
    
    init()
    {
        populateCharacters()
    }
    
    private mutating func populateCharacters()
    {
        characters.append("doll_one")
        characters.append("doll_two")
        characters.append("doll_three")
        characters.append("doll_four")
    }
    
    public mutating func getNextImageName() -> String
    {
        if current == 3{current = 0}
        else{current += 1}
        return characters[current]
    }
}
