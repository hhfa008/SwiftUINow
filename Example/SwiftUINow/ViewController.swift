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
        let aView = body.content
        view.addSubview(aView)
        aView.snp.makeConstraints { make in
            make.center.equalToSuperview()
        }
        
    }

    var body: View {
        VStack {
            Text("Hello SwiftUI").color(.blue)
            ForEach([0,1]){ d in
                Text("Hello SwiftUI\(d)").color(.blue)
            }
        }
       
    }
}
