//
//  hkserverApp.swift
//  hkserver
//
//  Created by Shaheen Gandhi on 1/17/21.
//

import ArgumentParser
import HomeKit

@main
struct HKServerCommand : ParsableCommand {
    mutating func run() throws {
        let bugDemonstrator = AddRoomBugDemonstration()
        RunLoop.current.run()
    }
}
