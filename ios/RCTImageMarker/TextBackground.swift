//
//  TextBackground.swift
//  RCTImageMarker
//
//  Created by Jimmydaddy on 2023/6/22.
//  Copyright © 2023 Jimmy. All rights reserved.
//

import Foundation
import UIKit
import React

class TextBackground: Padding {
    var typeBg: String?
    var colorBg: UIColor?

    init?(textBackgroundStyle textBackground: [AnyHashable: Any]?) throws {
        guard let textBackground = textBackground, !Utils.isNULL(textBackground) else {
            return nil
        }
        try super.init(paddingData: textBackground)
        self.typeBg = textBackground["type"] as? String
        self.colorBg = UIColor(hex: textBackground["color"] as! String) ?? UIColor.clear
    }
}
