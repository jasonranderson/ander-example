//
//  FontProvider.swift
//  WhiteLabelConfigTest
//
//  Created by Jason Anderson on 4/7/23.
//

import UIKit

open class FontProvider {
    class var lightPostScriptName: String {
        "HelveticaNeue-Light"
    }
    
    class var regularPostScriptName: String {
        "HelveticaNeue"
    }
    
    class var italicPostScriptName: String {
        "HelveticaNeue-Italic"
    }
    
    class var boldPostScriptName: String {
        "HelveticaNeue-Bold"
    }
    
    class var buttonLabel: UIFont {
        .style(.body, weight: .regular, isScaled: false)
    }
}

extension UIFont {
    enum FontName {
        case light
        case regular
        case italic
        case bold
        
        var postScriptName: String {
            switch self {
            case .light:
                return FontProvider.lightPostScriptName
            case .regular:
                return FontProvider.regularPostScriptName
            case .italic:
                return FontProvider.italicPostScriptName
            case .bold:
                return FontProvider.boldPostScriptName
            }
        }
    }
    
    enum FontStyle {
        case title1
        case title2
        case body
        case caption
        
        var defaultName: FontName {
            .regular
        }
        
        var defaultSize: CGFloat {
            switch self {
            case .title1:
                return 24.0
            case .title2:
                return 20.0
            case .body:
                return 14.0
            case .caption:
                return 11.0
            }
        }
        
        func fontNameForWeight(_ weight: UIFont.Weight, isItalic: Bool = false) -> FontName? {
            switch weight {
            case .light:
                return .light
            case .regular:
                return isItalic ? .italic : .regular
            case .bold:
                return .bold
            case .semibold:
                return .bold
            case .heavy:
                return .bold
            default:
                return nil
            }
        }
    }
    
    static func style(_ style: FontStyle, size: CGFloat? = nil, weight: UIFont.Weight = .regular, isItalic: Bool = false, isScaled: Bool = true) -> UIFont {
        let name = style.fontNameForWeight(weight, isItalic: isItalic) ?? style.defaultName
        
        guard let retval = UIFont(name: name, size: size ?? style.defaultSize) else {
            fatalError(String(format: "Unable to create font with name=%@", name.postScriptName))
        }
        guard isScaled else {
            return retval
        }
        
        return UIFontMetrics.default.scaledFont(for: retval)
    }
    
    convenience init?(name: FontName, size: CGFloat) {
        self.init(name: name.postScriptName, size: size)
    }
}
