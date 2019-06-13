//
//  ViewController.swift
//  StackView
//
//  Created by hhfa on 2019/6/12.
//  Copyright © 2019 xx. All rights reserved.
//

import SnapKit
import SwiftUINow
import UIKit

class ViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        let v = body.content
        view.addSubview(v)
        v.snp.makeConstraints { make in
            make.center.equalToSuperview()
        }
        // Do any additional setup after loading the view.
    }

    var body: View {
        VStack {
            Text("Hello SwiftUI").color(.blue)
        }
    }
}
