//
//  SettingsViewController.swift
//  Settings
//
//  Created by lijia xu on 7/21/21.
//

import UIKit

class SettingsViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        tableView.delegate = self
        // Do any additional setup after loading the view.
    }
    
    
    

}//End Of VC

// MARK: - UITableview Related
extension SettingsViewController: UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        SettingsController.shared.settings.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "settingCell", for: indexPath)
                as? SettingsTableViewCell else { return  UITableViewCell() }

        let setting = SettingsController.shared.settings[indexPath.row]
        
        cell.delegate = self
        cell.updateViews(with: setting)
        
        return cell
    }
     
}

extension SettingsViewController: SettingCellDelegate {
    
    func settingSwitchTapped(for cell: SettingsTableViewCell) {
        guard let indexPath = tableView.indexPath(for: cell) else { return }
        let setting = SettingsController.shared.settings[indexPath.row]
        setting.isOn.toggle()
        cell.updateViews(with: setting)
    }
    
}
