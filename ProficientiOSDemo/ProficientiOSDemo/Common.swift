//
//  Common.swift
//  ProficientiOSDemo
//
//  Created by glimmerlu on 16/8/21.
//  Copyright © 2016年 huihui. All rights reserved.
//

import Foundation
import UIKit

func OSVersion() -> Double {
    return (UIDevice.current.systemVersion as NSString).doubleValue
}

func isIos7OrLater() -> Bool {
    return OSVersion() >= 7.0
}
