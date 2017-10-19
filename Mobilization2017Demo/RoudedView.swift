//
//  RoudedView.swift
//  Mobilization2017Demo
//
//  Created by Jakub Mazur on 19/10/2017.
//  Copyright © 2017 Jakub Mazur. All rights reserved.
//

import UIKit

public class RoudedView: UIView {
    
    override func layoutSubviews() {
        super.layoutSubviews()
        self.backgroundColor = UIColor.red
        self.layer.cornerRadius = self.frame.size.height/2
    }
}
