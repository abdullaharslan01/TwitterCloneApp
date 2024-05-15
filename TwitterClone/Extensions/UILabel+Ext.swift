//
//  UILabel+Ext.swift
//  TwitterClone
//
//  Created by abdullah on 15.05.2024.
//

import UIKit


extension UILabel {

    convenience public init(text: String = "", font: UIFont? = UIFont.systemFont(ofSize: 12), textColor: UIColor = .secondaryLabel, textAlignment: NSTextAlignment = .left, numberofLines: Int = 1, minimumScaleFactor: CGFloat? = nil, adjustsFontSizeToFitWidth:Bool = false){
        self.init()
        self.text                      = text
        self.font                      = font
        self.textColor                 = textColor
        self.textAlignment             = textAlignment
        self.numberOfLines             = numberofLines
        if let minimumScaleFactor = minimumScaleFactor {
            self.minimumScaleFactor        = minimumScaleFactor
        }
        self.adjustsFontSizeToFitWidth = adjustsFontSizeToFitWidth
    }
}
