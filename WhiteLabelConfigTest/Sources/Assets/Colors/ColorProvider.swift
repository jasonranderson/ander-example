//
//  ColorProvider.swift
//  WhiteLabelConfigTest
//
//  Created by Jason Anderson on 4/7/23.
//

import UIKit

open class ColorProvider {
    var buttonStateNormal: UIColor {
        primary1Color
    }
    
    var buttonStateDisabled: UIColor {
        primary2Color
    }
    
    let primary1Color: UIColor
    
    let primary2Color: UIColor
    
    let secondary1Color: UIColor
    
    let secondary2Color: UIColor
    
    public init(
        primary1Color: UIColor = UIColor.blue,
        primary2Color: UIColor = UIColor.gray,
        secondary1Color: UIColor = UIColor.purple,
        secondary2Color: UIColor = UIColor.darkGray
    ) {
        self.primary1Color = primary1Color
        self.primary2Color = primary2Color
        self.secondary1Color = secondary1Color
        self.secondary2Color = secondary2Color
    }
}
