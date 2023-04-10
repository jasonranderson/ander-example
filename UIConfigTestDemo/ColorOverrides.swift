//
//  ColorOverrides.swift
//  UIConfigTestDemo
//
//  Created by Jason Anderson on 4/10/23.
//

import UIKit
import WhiteLabelConfigTest

final class ColorOverrides : ColorProvider {
    init() {
        super.init(primary1Color: UIColor.red, primary2Color: UIColor.orange)
    }
}
