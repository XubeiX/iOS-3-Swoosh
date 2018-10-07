//
//  BorderButton.swift
//  Swoosh
//
//  Created by Artur on 07/10/2018.
//  Copyright © 2018 Artur. All rights reserved.
//

import UIKit

class BorderButton: UIButton {

    override func awakeFromNib() {
        super.awakeFromNib()
        layer.borderWidth = 2.5
        layer.borderColor = UIColor.white.cgColor
        
    }

}
