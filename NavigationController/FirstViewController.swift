//
//  ViewController.swift
//  NavigationController
//
//  Created by Jaedoo Ko on 2020/06/16.
//  Copyright © 2020 jko. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {
    
    // MARK: - UI
    private let label: UILabel = {
        let label = UILabel()
        label.text = "view controller"
        label.textColor = .black
        label.backgroundColor = .green
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private let btn: UIButton = {
        let btn = UIButton()
        btn.setTitle("go to seconde", for: .normal)
        btn.setTitleColor(.black, for: .normal)
        btn.backgroundColor = .cyan
        btn.translatesAutoresizingMaskIntoConstraints = false
        return btn
    }()
    
    // MARK: - Layout
    private func setLayout() {
        view.backgroundColor = .white
        
        view.addSubview(label)
        view.addSubview(btn)
        
        NSLayoutConstraint.activate([
            label.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            label.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: -50),
            label.widthAnchor.constraint(equalToConstant: 300),
            label.heightAnchor.constraint(equalToConstant: 70),
            
            btn.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            btn.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: 50),
            btn.widthAnchor.constraint(equalToConstant: 300),
            btn.heightAnchor.constraint(equalToConstant: 70),
        ])
    }

    // MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setLayout()
        
        btn.addTarget(self, action: #selector(btnClicked(_:)), for: .touchUpInside)
    }

    @objc
    private func btnClicked(_ sender: UIButton) {
        let vc = SecondViewController()
        navigationController?.pushViewController(vc, animated: true)
    }
    
}

