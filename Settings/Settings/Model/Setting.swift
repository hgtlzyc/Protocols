//
//  Setting.swift
//  Settings
//
//  Created by lijia xu on 7/21/21.
//

import UIKit




class Setting {

    let settingName: String
    let icon: UIImage
    var isOn: Bool
    
    init(name settingName: String, icon: UIImage, isOn: Bool = false) {
        self.settingName = settingName
        self.icon = icon
        self.isOn = isOn
    }

}//End Of Setting
