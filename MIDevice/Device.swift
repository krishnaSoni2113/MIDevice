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
    
    public static var safeAreaHeight: CGFloat {
        
        guard let window: UIWindow = UIApplication.shared.windows.first else {
            return 0
        }
        
        if #available(iOS 11.0, *),
            UIWindow.instancesRespond(to: #selector(getter: window.safeAreaInsets)) {
            return UIScreen.main.bounds.height - window.safeAreaInsets.bottom - window.safeAreaInsets.top
        } else {
            return UIScreen.main.bounds.height - UIApplication.shared.statusBarFrame.height
        }
    }
    
    public static var safeAreaWidth: CGFloat {
        
        guard let window: UIWindow = UIApplication.shared.windows.first else {
            return 0
        }
        
        if #available(iOS 11.0, *),
            UIWindow.instancesRespond(to: #selector(getter: window.safeAreaInsets)) {
            return UIScreen.main.bounds.width - window.safeAreaInsets.left - window.safeAreaInsets.right
        } else {
            return UIScreen.main.bounds.width
        }
    }
    
    public static var tabBarHeight: CGFloat {
        return 65 + Device.safeAreaInsets.bottom
    }
    
    public static var isIPhoneSE: Bool {
        return Device.screenWidth == 320
    }
    
    public static var safeAreaInsets: UIEdgeInsets {
        guard let window: UIWindow = UIApplication.shared.windows.first else {
            return .zero
        }
        
        if #available(iOS 11.0, *),
            UIWindow.instancesRespond(to: #selector(getter: window.safeAreaInsets)) {
            return window.safeAreaInsets
        }
        
        return .zero
    }
    
    public static var safeAreaLayoutGuide: UILayoutGuide {
        
        guard let window: UIWindow = UIApplication.shared.windows.first else {
            return UILayoutGuide()
        }
        
        if #available(iOS 11.0, *) {
            return window.safeAreaLayoutGuide
        }
        
        return UILayoutGuide()
    }
    
    public static var isIOS10: Bool {
        let device = UIDevice.current
        let iosVersion = NSString(string: device.systemVersion).doubleValue
        
        return iosVersion >= 10 && iosVersion < 11
    }
    
    public static var isIOS9: Bool {
        let device = UIDevice.current
        let iosVersion = NSString(string: device.systemVersion).doubleValue
        
        return iosVersion >= 9 && iosVersion < 10
    }
    
    public static var isSimulator: Bool {
        return TARGET_OS_SIMULATOR != 0
    }
}
