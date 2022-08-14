//
//  AppendSiteViewController.swift
//  SitePassword
//
//  Created by 이수현 on 2022/08/13.
//

import UIKit

class AppendSiteViewController: UIViewController {
    
    
    var text : String?
    @IBOutlet weak var lbltitle: UILabel!
    @IBOutlet weak var txtSiteAddress: UITextField!
    @IBAction func btnSite(_ sender: UIButton) {
        performSegue(withIdentifier: "gotoMain", sender: nil)
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "gotoMain"{
            text = txtSiteAddress.text   // https://m.blog.naver.com/jdub7138/220393890771
            if let vc = segue.destination as? MainTableViewController{
                vc.receivedText = text
            }
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
