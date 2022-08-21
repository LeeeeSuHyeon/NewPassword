//
//  IdPasswordViewController.swift
//  SitePassword
//
//  Created by 이수현 on 2022/08/20.
//

import UIKit

class IdPasswordViewController: UIViewController {

    @IBOutlet weak var getID: UILabel!
    @IBOutlet weak var getPassword: UILabel!
//    var getid : String?
//    var getpw : String?
    var get = [String? : String?]()
    
    override func viewDidLoad() {
  //      print(type(of: get.keys))         => Keys
        super.viewDidLoad()
        for key in get.keys{
            getID.text = key
        }
        for value in get.values{
        getPassword.text = value
        }
        
    }
}
