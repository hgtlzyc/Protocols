//
//  SettingsController.swift
//  Settings
//
//  Created by lijia xu on 7/21/21.
//

import UIKit

class SettingsController {
    
    // MARK: - Shared Instance
    static let shared = SettingsController()
    
    //Source of Truth
    let settings: [Setting] = {
        
            let music = Setting(name: "Music", icon: UIImage(systemName: "music.note.list")! )
            let setting = Setting(name: "Settings", icon: UIImage(systemName: "gearshape")! )
            let friends = Setting(name: "Friends", icon: UIImage(systemName: "person.3.fill")! )
        
        return [music, setting, friends]
    }()
    
    func toggleIsOn(for setting: Setting) {
        setting.isOn.toggle()
    }
    
    
    // MARK: - Private init
    private init() {}
}
