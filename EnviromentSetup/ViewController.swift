//
//  ViewController.swift
//  EnviromentSetup
//
//  Created by Tejas on 09/01/24.
//

import UIKit
import WebKit

class ViewController: UIViewController {
    @IBOutlet weak var lblAppName: UILabel!
    @IBOutlet weak var lblAppBundleIdentifier: UILabel!
    @IBOutlet weak var lblURLName: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        fetchDataAsperScheme()
    }

    //fetch data from info list using keys
    func fetchDataAsperScheme(){
        lblAppName.text = Bundle.main.object(forInfoDictionaryKey: "CFBundleName") as? String
        lblAppBundleIdentifier.text = Bundle.main.bundleIdentifier
        lblURLName.text = Bundle.main.object(forInfoDictionaryKey: "server_url") as? String
    }

}

