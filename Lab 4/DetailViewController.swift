//
//  DetailViewController.swift
//  Lab 4
//
//  Created by John Tunisi on 10/9/15.
//  Copyright © 2015 John Tunisi. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var emailLabel: UILabel!
    @IBOutlet weak var phoneLabel: UILabel!

    var detailItem: AnyObject? {
        didSet {
            // Update the view.
            self.configureView()
        }
    }

    func configureView() {
        // Update the user interface for the detail item.
        if let detail = self.detailItem as! NSArray? {
            if let name = self.nameLabel {
                if let email = self.emailLabel {
                    if let phone = self.phoneLabel {
                        name.text = detail[0] as? String
                        email.text = detail[1] as? String
                        phone.text = detail[2] as? String
                    }
                }
            }
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.configureView()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}