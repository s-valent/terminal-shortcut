//
//  Open Terminal.swift
//  Terminal Shortcut
//
//  Created by Valentin on 06.05.2020.
//  Copyright © 2020 Valentin Shinkarev. All rights reserved.
//

import Foundation
import Cocoa

class TerminalLauncher: NSObject {
    
    @objc func openTerminal(_ pboard: NSPasteboard, userData: String, error: NSErrorPointer) {
        let task = Process()
        task.launchPath = "/usr/bin/open"
        task.currentDirectoryPath = FileManager.default.homeDirectoryForCurrentUser.path
        task.arguments = ["-a", "Terminal", ""]
        task.launch()
    }
}
