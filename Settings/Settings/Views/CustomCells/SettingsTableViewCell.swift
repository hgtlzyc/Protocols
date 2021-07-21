//
//  SettingsTableViewCell.swift
//  Settings
//
//  Created by lijia xu on 7/21/21.
//

import UIKit

protocol SettingCellDelegate: AnyObject {
    
    func settingSwitchTapped(for cell: SettingsTableViewCell)
    
}


class SettingsTableViewCell: UITableViewCell {
    
    @IBOutlet weak var settingIconImgeView: UIImageView!
    @IBOutlet weak var settingNameLabel: UILabel!
    @IBOutlet weak var settingSwitch: UISwitch!
    
    weak var delegate: SettingCellDelegate?
    
    @IBAction func switchToggled(_ sender: Any) {
        delegate?.settingSwitchTapped(for: self)
    }
    
    func updateViews(with setting: Setting) {
        settingIconImgeView.image = setting.icon
        settingNameLabel.text = setting.settingName
        settingSwitch.isOn = setting.isOn
        backgroundColor = setting.isOn ? .cyan : .red
    }
    
    
    
}

