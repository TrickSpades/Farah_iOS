//
//  SimpleCases.swift
//  Farah
//
//  Created by Adar Butel on 9/21/16.
//  Copyright © 2016 com.adarbutel. All rights reserved.
//

import Foundation

struct SimpleCases {
    
    static func sayCharacterCount(from string: String) -> (String?, Bool) {
        
        let message = string.lowercased()
        
        if (message.contains("how long") || message.contains("many characters") || message.contains("how many")) {
            return ("Your message is \(string.characters.count) characters long.", true)
        }
        
        return (nil, false)
    }
    
    static func sayDoingWell(from string: String) -> (String?, Bool) {
        
        let message = string.lowercased()
        
        if (message.contains("what's good") || message.contains("how are you") || message.contains("doing")) {
            return ("I'm doing well. Thank you for asking.", true)
        }
        
        return (nil, false)
    }
    
    static func doesNotUnderstand() -> String {
        return "I'm sorry, I do not understand you."
    }
}