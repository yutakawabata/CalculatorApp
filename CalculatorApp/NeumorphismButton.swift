//
//  NeumorphismButton.swift
//  CalculatorApp
//
//  Created by 川畑雄太 on 2020/05/15.
//  Copyright © 2020 yuta. All rights reserved.
//

import Foundation
import UIKit
@IBDesignable
class NeumorphismButton: UIButton {
 
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupAttributes()
    }
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setupAttributes()
    }
    override func prepareForInterfaceBuilder() {
        super.prepareForInterfaceBuilder()
        setupAttributes()
    }
    
    private func setupAttributes() {
        setTitleColor(UIColor(displayP3Red: 85/255, green: 97/255, blue: 111/255,alpha: 1.0), for: .normal)
        Neumorphism(r: 233, g:241, b:250, roundCorner: 10)
    }
}
