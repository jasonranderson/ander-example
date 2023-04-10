//
//  ResourceManager.swift
//  WhiteLabelConfigTest
//
//  Created by Jason Anderson on 4/7/23.
//

import UIKit

final public class ResourceManager {
    public static let shared = ResourceManager()
    
    public static let defaultFontProvider = FontProvider()
    public static let defaultColorProvider = ColorProvider()
    
    var fontProvider: FontProvider {
        precondition(_fontProvider != nil, "You must call configureWithProviders() before accessing this property")
        return _fontProvider!
    }
    var colorProvider: ColorProvider {
        precondition(_fontProvider != nil, "You must call configureWithProviders() before accessing this property")
        return _colorProvider!
    }
    
    private var _fontProvider: FontProvider? = nil
    private var _colorProvider: ColorProvider? = nil
    
    public func configureWithProviders(fontProvider: FontProvider = defaultFontProvider, colorProvider: ColorProvider = defaultColorProvider) {
        precondition(self._fontProvider == nil && self._colorProvider == nil, "Providers should only be set once during the life of the app")
        
        self._fontProvider = fontProvider
        self._colorProvider = colorProvider
    }
    
    private init() {}
}
