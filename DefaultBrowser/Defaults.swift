//
//  Defaults.swift
//  DefaultBrowser
//
//  Created by Cameron Little on 11/2/15.
//  Copyright © 2015 Cameron Little. All rights reserved.
//

import Foundation

enum DefaultKey: String {
    case OpenWindowOnLaunch
    case DetailedAppNames
    case PrimaryBrowser
}

let defaultSettings: [String: AnyObject] = [
    DefaultKey.OpenWindowOnLaunch.rawValue: true,
    DefaultKey.DetailedAppNames.rawValue: false,
    DefaultKey.PrimaryBrowser.rawValue: ""
]

class ThisDefaults: NSUserDefaults {
    var openWindowOnLaunch: Bool {
        get {
            return boolForKey(DefaultKey.OpenWindowOnLaunch.rawValue)
        }
        set (value) {
            setBool(value, forKey: DefaultKey.OpenWindowOnLaunch.rawValue)
        }
    }
    var detailedAppNames: Bool {
        get {
            return boolForKey(DefaultKey.DetailedAppNames.rawValue)
        }
        set (value) {
            setBool(value, forKey: DefaultKey.DetailedAppNames.rawValue)
        }
    }
    var primaryBrowser: String {
        get {
            return stringForKey(DefaultKey.PrimaryBrowser.rawValue)!
        }
        set (value) {
            setObject(value, forKey: DefaultKey.PrimaryBrowser.rawValue)
        }
    }
}