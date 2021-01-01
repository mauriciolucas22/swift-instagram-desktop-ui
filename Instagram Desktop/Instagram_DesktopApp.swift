//
//  Instagram_DesktopApp.swift
//  Instagram Desktop
//
//  Created by Mac on 01/01/21.
//

import SwiftUI

@main
struct Instagram_DesktopApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }.windowStyle(HiddenTitleBarWindowStyle())
    }
}

// Hiding focus ring...
extension NSTextField {
    open override var focusRingType: NSFocusRingType {
        get{.none}
        set{}
    }
}
