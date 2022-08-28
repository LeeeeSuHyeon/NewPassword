//
//  AppendSiteViewController.swift
//  SitePassword
//
//  Created by 이수현 on 2022/08/13.
//

import UIKit

class AppendSiteViewController: UIViewController {
    

    
   // @IBOutlet weak var lbltitle: UILabel!
    var idDictinary = [String? : String?]()
    var site = [String]()
   // let idpw = IdPasswordViewController()
    let tableview = MainTableViewController()
    let tableviewcell = MainTableViewCell()
    
    @IBOutlet weak var txtSiteAddress: UITextField!
    @IBOutlet weak var txtSiteID: UITextField!
    @IBOutlet weak var txtSitePassword: UITextField!
    
    @IBAction func btnSite(_ sender: UIButton) {
         performSegue(withIdentifier: "gotoMain", sender: nil)  // segue로 MainTableController로 이동

    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    
    // https://zeddios.tistory.com/43 viewlifecycle 참고 사이트
    override func viewWillAppear(_ animated: Bool) {
        print(site)
    }

    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "gotoMain"{
            idDictinary.updateValue(txtSitePassword.text, forKey: txtSiteID.text)
            if let Address = txtSiteAddress.text{
                site.append(Address)
                //print(site)
            }
            if let vc = segue.destination as? MainTableViewController{
                vc.items.append(contentsOf: site)
                vc.reciveDictinary = idDictinary
            }
        }
    }
    
    
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//
//        if segue.identifier == "gotoMain"{
//            idDictinary.updateValue(txtSitePassword.text, forKey: txtSiteID.text)
//            if let vc = segue.destination as? MainTableViewController{
//                vc.receivedText = txtSiteAddress.text
//                vc.reciveDictinary = idDictinary
//
//         //       idpw.get = idDictinary
//            }
////            if let text = txtSiteAddress.text{
////                tableview.items.append(text)
////                tableview.tableView.reloadData()
////            }
//
////
//////                ip.getID.text = idDictinary.keys ?? nil
//////                ip.getpw = idDictinary.values
////
//////
////                print(ip.get, idDictinary)
//
////            idpw.get = idDictinary
////            self.present(idpw, animated: false, completion: nil)
//
////            }
//        }
//    }
}
