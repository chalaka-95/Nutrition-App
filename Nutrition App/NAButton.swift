//
//  NAButton.swift
//  Nutrition App
//
//  Created by Chalaka Hasantha on 2022-11-21.
//

import UIKit

class NAButton: UIButton {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init has not been implemented")
    }
    
    init(color: UIColor, title: String, systemImageName: String? = nil) {
        super.init(frame: .zero)
        
        configuration = .tinted()
        configuration?.title = title
        configuration?.baseForegroundColor = color
        configuration?.baseBackgroundColor = color
        configuration?.cornerStyle = .medium
        
        configuration?.image = UIImage(systemName: systemImageName!)
        configuration?.imagePadding = 5
        configuration?.imagePlacement = .trailing
        translatesAutoresizingMaskIntoConstraints = false
    }

}
