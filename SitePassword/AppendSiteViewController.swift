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
    var x = 1
    @IBOutlet weak var txtSiteAddress: UITextField!
    @IBOutlet weak var txtSiteID: UITextField!
    @IBOutlet weak var txtSitePassword: UITextField!
    
    @IBAction func btnSite(_ sender: UIButton) {
         performSegue(withIdentifier: "gotoMain", sender: nil)  // segue로 MainTableController로 이동
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "gotoMain"{
            if let vc = segue.destination as? MainTableViewController{
                vc.receivedText = txtSiteAddress.text
            }
            idDictinary.updateValue(txtSitePassword.text, forKey: txtSiteID.text)
            print(idDictinary)
        }
    }

    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
