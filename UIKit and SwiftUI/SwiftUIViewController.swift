//
//  SwiftUIViewController.swift
//  UIKit and SwiftUI
//
//  Created by Irem Karaoglu on 21.04.2022.
//

import UIKit
import SwiftUI

class SwiftUIViewController: UIViewController {
    var swiftUIView: UIHostingController<SwiftUIView>!

    override func viewDidLoad() {
            super.viewDidLoad()
            self.view.backgroundColor = .white
            self.swiftUIView = UIHostingController(rootView: SwiftUIView(navigationController: self.navigationController))
            addChild(swiftUIView)
            view.addSubview(swiftUIView.view)
            setupConstraints()
        }
        
        fileprivate func setupConstraints() {
            swiftUIView.view.translatesAutoresizingMaskIntoConstraints = false
            swiftUIView.view.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
            swiftUIView.view.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
            swiftUIView.view.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
            swiftUIView.view.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        }

}
