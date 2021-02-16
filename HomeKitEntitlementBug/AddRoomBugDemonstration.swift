//
//  AddRoomBugDemonstration.swift
//  HomeKitEntitlementBug
//
//  Created by Shaheen Gandhi on 2/15/21.
//

import Foundation
import HomeKit

class AddRoomBugDemonstration : NSObject, HMHomeManagerDelegate {
    private(set) public var homeManager: HMHomeManager
    
    override init() {
        self.homeManager = HMHomeManager()
        super.init()
        homeManager.delegate = self
    }
    
    func homeManagerDidUpdateHomes(_ manager: HMHomeManager) {
        // Home manager is ready, so we can do stuff now
        guard let home = manager.primaryHome else {
            print("Primary home must exist to demonstrate bug")
            return
        }
        
        home.addRoom(withName: "Example Room", completionHandler: { room, error in
            if let error = error {
                print("BUG: Encountered error when adding room:")
                print(error)
                return
            }
            
            print("EXPECTED: getting to this line means the room was successfully added")
        })
    }
}
