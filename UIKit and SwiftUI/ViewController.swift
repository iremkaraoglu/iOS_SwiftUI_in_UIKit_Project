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
        label.font = .boldSystemFont(ofSize: 21)
        view.addSubview(label)
        
        let button = UIButton()
        button.setTitleColor(.blue, for: .normal)
        button.setTitle("Navigate to SwiftUI Screen", for: .normal)
        button.titleLabel?.textAlignment = .center
        button.translatesAutoresizingMaskIntoConstraints = false
        button.addTarget(self, action: #selector(openSwiftUIScreen), for: .touchUpInside)
        button.titleLabel?.font = .boldSystemFont(ofSize: 21)
        view.addSubview(button)
        
        NSLayoutConstraint.activate([
            button.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            label.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            button.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            button.topAnchor.constraint(equalTo: label.bottomAnchor, constant: 64)])
    }
    
    @objc func openSwiftUIScreen() {
        let swiftUIViewController = UIHostingController(rootView: SwiftUIView(navigationController: self.navigationController))
        self.navigationController?.pushViewController(swiftUIViewController, animated: true)
    }
}



