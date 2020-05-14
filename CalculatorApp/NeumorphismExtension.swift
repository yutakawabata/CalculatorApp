//
//  NeumorphismExtension.swift
//  CalculatorApp
//
//  Created by 川畑雄太 on 2020/05/15.
//  Copyright © 2020 yuta. All rights reserved.
//

import Foundation
// NeumorphismExtension.swift
import UIKit
public extension UIButton {
    
    func NeumorphismShadow(_ defaultcolor: UIColor, _ shadowType: String)->UIColor{
        var color: UIColor = defaultcolor
var hue : CGFloat = 0
        var saturation : CGFloat = 0
        var brightness : CGFloat = 0
        var alpha : CGFloat = 0
if color.getHue(&hue, saturation: &saturation, brightness: &brightness, alpha: &alpha) {
            let brightRate:CGFloat = shadowType == "dark" ? 0.90: 1.10;
            color = UIColor(hue: hue, saturation: saturation, brightness: brightness * brightRate, alpha: alpha)
        }
        return color
    }
func AddShadow(width: CGFloat, height: CGFloat, color: UIColor, roundCorner: CGFloat){
        let btnLayer = CALayer()
        btnLayer.masksToBounds = false
        btnLayer.shadowColor = color.cgColor
        btnLayer.shadowOpacity = 1
        btnLayer.shadowOffset = CGSize(width: width, height: height)
        btnLayer.shadowRadius = 10
        btnLayer.shadowPath = UIBezierPath(roundedRect: self.bounds, cornerRadius: roundCorner).cgPath
        self.layer.insertSublayer(btnLayer, at: 0)
    }
func AddBackground(color : UIColor, roundCorner: CGFloat){
        let background = CALayer()
        background.backgroundColor = color.cgColor
        background.cornerRadius = roundCorner
        background.frame.size = CGSize( width:frame.size.width, height:frame.size.height )
        self.layer.insertSublayer(background, at: 0)
    }
func Neumorphism(r: CGFloat, g: CGFloat, b: CGFloat, roundCorner: CGFloat){
        let backGroundColor = UIColor(displayP3Red: r/255, green: g/255, blue: b/255,alpha: 1.0)
    let darkcolor = NeumorphismShadow(backGroundColor, "dark")
    let lightcolor = NeumorphismShadow(backGroundColor, "light")
AddBackground(color: backGroundColor, roundCorner: roundCorner)
        AddShadow(width: 4.0, height: 4.0, color: darkcolor, roundCorner: roundCorner)
        AddShadow(width: -4.0, height: -4.0, color: lightcolor, roundCorner: roundCorner)
    }
    
}
