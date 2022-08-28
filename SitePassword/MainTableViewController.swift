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
    
    }
    
//    override func viewDidAppear(_ animated: Bool) {
//        if let item = receivedText{
//            items.append(item)
//            self.tableView.reloadSections(IndexSet(0...0), with: .automatic) // 섹션 1번을 새로고침 한다.
//            print(reciveDictinary)       // AppendSiteController에서 dictionary 제대로 받아옴.
//        }
//    }

    
    override func tableView(_ tableView: UITableView, editingStyleForRowAt indexPath: IndexPath) -> UITableViewCell.EditingStyle {
        return .delete
    }
    
    override func tableView(_ tableView: UITableView, commit editingStyleForRowAt: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath){
        if editingStyleForRowAt == .delete{
            tableView.beginUpdates()
            items.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .fade)
            tableView.endUpdates()
        }
    }

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count // 아마 배열로 바꿔서 여러개로 늘어나게 해야하는 듯? 몰라
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let row = items[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: "SiteAddress", for: indexPath) as! MainTableViewCell
        cell.List.text = row
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if let ip = storyboard?.instantiateViewController(withIdentifier: "idPasswordViewController") as? IdPasswordViewController{
            ip.get = reciveDictinary
            self.navigationController?.pushViewController(ip, animated: true)
            }
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        let title = "사이트 주소"
        return title
    }
    
    // https://velog.io/@dvhuni/UITableView-Header-Footer-View-한번에-만들기      headerfooter layout 블로그
    override func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let myLabel = UILabel()
        myLabel.frame = CGRect(x:0, y:0, width: view.bounds.width, height: 40)
        myLabel.font = UIFont.boldSystemFont(ofSize: 20)
        myLabel.backgroundColor = UIColor.lightGray
        myLabel.textAlignment = .center
        myLabel.text = self.tableView(tableView, titleForHeaderInSection: section)
        
        let headerView = UIView()
        headerView.addSubview(myLabel)
        headerView.layoutIfNeeded()
        
        return headerView
    }
}

