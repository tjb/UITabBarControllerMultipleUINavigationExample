//
//  FirstViewController.swift
//  MultiNavigationExample
//
//  Created by canti on 9/7/20.
//  Copyright © 2020 tjb. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {
    
    let newViewButton: UIButton = {
        let button = UIButton()
        button.setTitle("Show New View For First", for: .normal)
        button.titleLabel?.textAlignment = .center
        button.setTitleColor(.black, for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.addTarget(self, action: #selector(showNewView), for: .touchUpInside)
        return button
    }()

    override func viewWillAppear(_ animated: Bool) {
        view.backgroundColor = .red
        view.addSubview(newViewButton)
        addButtonConstraints()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @objc func showNewView(sender: UIButton) {
        navigationController?.pushViewController(FirstChildViewController(), animated: true)
    }
    
    func addButtonConstraints() {
        NSLayoutConstraint.activate([
            newViewButton.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: 0),
            newViewButton.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: 0)
        ])
    }
}
