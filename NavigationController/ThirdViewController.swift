//
//  SecondViewController.swift
//  NavigationController
//
//  Created by Jaedoo Ko on 2020/06/16.
//  Copyright © 2020 jko. All rights reserved.
//

import UIKit

class ThirdViewController: UIViewController {
    // MARK: - UI
    private let label: UILabel = {
        let label = UILabel()
        label.text = "Third view controller"
        label.textColor = .black
        label.backgroundColor = .red
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private let btn: UIButton = {
        let btn = UIButton()
        btn.setTitle("go to root", for: .normal)
        btn.setTitleColor(.black, for: .normal)
        btn.backgroundColor = .green
        btn.translatesAutoresizingMaskIntoConstraints = false
        return btn
    }()
    
    private let parentBtn: UIButton = {
        let btn = UIButton()
        btn.setTitle("go to parent", for: .normal)
        btn.setTitleColor(.black, for: .normal)
        btn.backgroundColor = .yellow
        btn.translatesAutoresizingMaskIntoConstraints = false
        return btn
    }()
    
    // MARK: - Layout
    private func setLayout() {
        view.backgroundColor = .cyan
        
        view.addSubview(label)
        view.addSubview(btn)
        view.addSubview(parentBtn)
        
        NSLayoutConstraint.activate([
            label.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            label.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: -50),
            label.widthAnchor.constraint(equalToConstant: 300),
            label.heightAnchor.constraint(equalToConstant: 70),
            
            btn.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            btn.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: 50),
            btn.widthAnchor.constraint(equalToConstant: 300),
            btn.heightAnchor.constraint(equalToConstant: 70),
            
            parentBtn.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            parentBtn.topAnchor.constraint(equalTo: btn.bottomAnchor, constant: 50),
            parentBtn.widthAnchor.constraint(equalToConstant: 300),
            parentBtn.heightAnchor.constraint(equalToConstant: 70),
        ])
    }

    // MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setLayout()
        
        btn.addTarget(self, action: #selector(btnClicked(_:)), for: .touchUpInside)
        parentBtn.addTarget(self, action: #selector(parentBtnClicked(_:)), for: .touchUpInside)
    }

    @objc
    private func btnClicked(_ sender: UIButton) {
        navigationController?.popToRootViewController(animated: true)
    }
    
    @objc
    private func parentBtnClicked(_ sender: UIButton) {
        if let vcs = navigationController?.viewControllers {
            let vc = vcs[vcs.count - 2]
            navigationController?.popToViewController(vc, animated: true)
        }
    }
}
