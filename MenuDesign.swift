//
//  MenuDesign.swift
//  sixthproject
//
//  Created by Aravind Subramanian on 11/6/17.
//  Copyright © 2017 Aravind Subramanian. All rights reserved.
//

import UIKit

@IBDesignable class MenuDesign: UIView {
    
    @IBInspectable public var cornerRadius: CGFloat = 0 {
        didSet{
            layer.cornerRadius = cornerRadius
        }
    }
   
}
