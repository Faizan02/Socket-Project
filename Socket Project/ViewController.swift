//
//  ViewController.swift
//  Socket Project
//
//  Created by Faizan yousaf on 10/02/2022.
//

import UIKit
import LaravelEchoIOS

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let e: Echo = Echo(options: ["host":"http://194.195.245.111:6001"])
        e.connected(){ data, ack in

            print("CONNECTED")

            e.join(channel: "63_60").listen(event: ".MessageCreated", callback: { data, ack in

                print(data)

            })

        }
    }


}

