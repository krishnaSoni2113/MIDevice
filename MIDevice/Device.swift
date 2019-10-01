//
//  Device.swift
//  MIDevice
//
//  Created by mac-0005 on 01/10/19.
//  Copyright © 2019 mac-0005. All rights reserved.
//

import Foundation

open class Device: NSObject {
    
    public static var screenWidth: CGFloat {
        return UIScreen.main.bounds.width
    }
    
    public static var screenHeight: CGFloat {
        return UIScreen.main.bounds.height
    }
    
    public static var isSimulator: Bool {
        return TARGET_OS_SIMULATOR != 0
    }
}
