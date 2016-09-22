//
//  Main-Layout.swift
//  Farah
//
//  Created by Adar Butel on 9/21/16.
//  Copyright © 2016 com.adarbutel. All rights reserved.
//

import Foundation
import UIKit

// MARK: Layout Views
extension MainViewController {
    
    func setupViews() {
        view.addSubview(talkButton)
        view.addSubview(textView)
        
        view.addConstraint(NSLayoutConstraint(item: talkButton, attribute: .centerX, relatedBy: .equal, toItem: view, attribute: .centerX, multiplier: 1.0, constant: 0.0))
        //        view.addConstraint(NSLayoutConstraint(item: talkButton, attribute: .centerY, relatedBy: .equal, toItem: view, attribute: .centerY, multiplier: 1.0, constant: 0.0))
        
        view.addConstraints(withFormat: "H:|-25-[v0]-25-|", views: textView)
        view.addConstraints(withFormat: "V:|-45-[v0]-30-[v1]-25-|", views: textView, talkButton)
    }
}
