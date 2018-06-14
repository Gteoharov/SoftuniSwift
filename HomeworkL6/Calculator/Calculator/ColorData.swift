//
//  ColorData.swift
//  Calculator
//
//  Created by Georgi Teoharov on 14.06.18.
//  Copyright © 2018 Rapid Development Crew. All rights reserved.
//

import Foundation

enum SegmentColorProperty {
    case backroundColor
    case tintColor
    case textColor
}

class ColorData {
    static var color: [SegmentColorProperty: [Float]] =
    [
        SegmentColorProperty.backroundColor: [0.1, 1.0, 0.2],
        SegmentColorProperty.tintColor: [0.2, 0.4, 0.5],
        SegmentColorProperty.textColor: [1.0, 0.1, 1.0]
    ]
}
