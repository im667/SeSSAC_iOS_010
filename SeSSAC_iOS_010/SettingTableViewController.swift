//
//  SettingTableViewController.swift
//  SeSSAC_iOS_010
//
//  Created by mac on 2021/10/12.
//

import UIKit

var publicSetting:[String] = ["공지사항","실험실","버전정보"]

var privateSetting:[String] = ["개인/보안","알림","채팅","멀티프로필"]

var etcSetting:[String] = ["고객센터/도움말"]

class SettingTableViewController: UITableViewController {

    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 3
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        if section == 0 {
            return publicSetting.count
        } else if section == 1 {
            return privateSetting.count
        } else {
            return etcSetting.count
        }
        
    }

    //옵션: 섹션 타이틀설정:titleForHeaderInSection
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        
        if section == 0{
            return "전체설정"
        } else if section == 1{
            return "개인설정"
        } else {
            return "기타"
        }
        

    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

        guard let cell = tableView.dequeueReusableCell(withIdentifier: "SettingCell") else{
            return UITableViewCell()
        }
        
        if indexPath.section == 0 {
            cell.textLabel?.text = publicSetting[indexPath.row]
            cell.textLabel?.font = .systemFont(ofSize: 12)
            cell.textLabel?.textColor = .white
        } else if indexPath.section == 1 {
            cell.textLabel?.text = privateSetting[indexPath.row]
            cell.textLabel?.font = .systemFont(ofSize: 12)
            cell.textLabel?.textColor = .white
        } else {
            cell.textLabel?.text = etcSetting[indexPath.row]
            cell.textLabel?.font = .systemFont(ofSize: 12)
            cell.textLabel?.textColor = .white
        }
        
        
        return cell


    }
    
    //옵션(default = 44px) 필수 권장 3. 셀의 높이: heightForRowAt
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
//
        return 44
    }
}
