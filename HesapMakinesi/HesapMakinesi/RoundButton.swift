//
//  RoundButton.swift
//  HesapMakinesi
//
//  Created by Duygu Yesiloglu on 24.09.2023.
//

import UIKit

class RoundButton: UIButton {
    
    @IBInspectable var roundbutton:Bool = false {
        didSet {
            if roundbutton {
                layer.cornerRadius = frame.height / 2
            }
        }
    }

    override func prepareForInterfaceBuilder() {
        if roundbutton {
            layer.cornerRadius = frame.height / 2
        }
    }
}
