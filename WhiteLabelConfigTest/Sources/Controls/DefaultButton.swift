//
//  DefaultButton.swift
//  WhiteLabelConfigTest
//
//  Created by Jason Anderson on 4/7/23.
//

import UIKit

open class DefaultButton: UIButton {
    @available(*, unavailable)
    public required init?(coder _: NSCoder) {
        fatalError("init(coder:) unavailable")
    }
    
    public init() {
        super.init(frame: .zero)
        commonInit()
    }
    
    open func commonInit() {
        setTitleColor(ResourceManager.shared.colorProvider.buttonStateNormal, for: .normal)
        setTitleColor(ResourceManager.shared.colorProvider.buttonStateDisabled, for: .disabled)
    }
    
}
