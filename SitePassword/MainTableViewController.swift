//
//  MainTableViewController.swift
//  SitePassword
//
//  Created by 이수현 on 2022/08/13.
//

import UIKit

class MainTableViewController: UITableViewController{
//    @IBAction func appendSite(_ sender: Any) {
//    }
    var receivedText : String?              // AppendSiteController에서 prepare로 보낸 텍스트 들어옴. 옵셔널 형
    var items = [String]()                  // String형 배열 생성
    var reciveDictinary = [String? : String?]()
    
    
        override func viewDidLoad() {
        super.viewDidLoad()
            if let item = receivedText{
                items.append(item)
                self.tableView.reloadSections(IndexSet(0...0), with: .automatic) // 섹션 1번을 새로고침 한다.
                print(reciveDictinary)       // AppendSiteController에서 dictionary 제대로 받아옴.
            }

    
    }



    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count// 아마 배열로 바꿔서 여러개로 늘어나게 해야하는 듯? 몰라
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "SiteAddress", for: indexPath) as! MainTableViewCell
        cell.List.text = items[indexPath.row]
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if let ip = storyboard?.instantiateViewController(withIdentifier: "idPasswordViewController") as? IdPasswordViewController{
            ip.get = reciveDictinary
            self.navigationController?.pushViewController(ip, animated: true)
            }
    }
}

