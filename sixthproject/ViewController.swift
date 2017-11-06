//
//  ViewController.swift
//  sixthproject
//
//  Created by Aravind Subramanian on 11/6/17.
//  Copyright © 2017 Aravind Subramanian. All rights reserved.
//
import UIKit

class ViewController: UIViewController {
    
    
    

    
    @IBOutlet weak var MenuView: UIView!
    @IBOutlet weak var DarkCircle: MenuDesign!
    @IBOutlet weak var MenuButton: UIButton!
    
    @IBOutlet weak var FacebookButton: UIButton!
    @IBOutlet weak var TwitterButton: UIButton!
    @IBOutlet weak var SnapchatButton: UIButton!
    @IBOutlet weak var LinkedInButton: UIButton!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
    
    @IBAction func MenuToggle(_ sender: UIButton) {
  
        if DarkCircle.transform == .identity {
            UIView.animate(withDuration:1, animations:{
                self.DarkCircle.transform = CGAffineTransform(scaleX: 30, y: 30)
                self.MenuView.transform = CGAffineTransform(translationX: 0, y: 588)
                self.MenuButton.transform = CGAffineTransform(rotationAngle: self.radians(degrees: 180))
            }) { (true) in
                
            }
        } else {
            UIView.animate(withDuration:1, animations:{
                self.DarkCircle.transform = .identity
                self.MenuView.transform = .identity
                self.MenuButton.transform = .identity
            }) { (true) in
            }
        }
    }
    
   
    
    func radians(  degrees: Double) -> CGFloat{
        return CGFloat(degrees * .pi / degrees)
    }
}

