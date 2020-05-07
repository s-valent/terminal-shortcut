//
//  AppDelegate.swift
//  Terminal Shortcut
//
//  Created by Valentin on 07.05.2020.
//  Copyright © 2020 Valentin Shinkarev. All rights reserved.
//

import Cocoa
import SwiftUI

@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate {

    func applicationDidFinishLaunching(_ aNotification: Notification) {
        NSApp.servicesProvider = self
        NSRegisterServicesProvider(TerminalLauncher(), NSServiceProviderName("Terminal Shortcut"))
    }
}
