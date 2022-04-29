//
//  ViewController.swift
//  UIKit and SwiftUI
//
//  Created by Irem Karaoglu on 13.04.2022.
//

import UIKit
import SwiftUI

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        
        let label = UILabel()
        label.text = "UIKit Screen"
        label.textColor = .black
        label.translatesAutoresizingMaskIntoConstraints = false
        
        let button = UIButton()
        button.setTitleColor(.blue, for: .normal)
        button.layoutMargins = .init(top: 48, left: 0, bottom: 0, right: 0)
        button.setTitle("Navigate to SwiftUI Screen", for: .normal)
        button.titleLabel?.textAlignment = .center
        button.translatesAutoresizingMaskIntoConstraints = false
        button.addTarget(self, action: #selector(openSwiftUIScreen), for: .touchUpInside)
        
        let container = UIView()
        container.addSubview(label)
        container.addSubview(button)
        container.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(container)
        
        NSLayoutConstraint.activate([
            container.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            container.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            container.widthAnchor.constraint(equalTo: view.widthAnchor),
            container.heightAnchor.constraint(equalToConstant: 110),
            button.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            label.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            button.topAnchor.constraint(equalTo: label.bottomAnchor, constant: 64)])
    }
    
    @objc func openSwiftUIScreen() {
        let swiftUIViewController = UIHostingController(rootView: SwiftUIView(navigationController: self.navigationController))
        self.navigationController?.pushViewController(swiftUIViewController, animated: true)
    }
}



