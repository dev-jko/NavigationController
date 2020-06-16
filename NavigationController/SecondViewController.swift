//
//  SecondViewController.swift
//  NavigationController
//
//  Created by Jaedoo Ko on 2020/06/16.
//  Copyright © 2020 jko. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    // MARK: - UI
    private let label: UILabel = {
        let label = UILabel()
        label.text = "second view controller"
        label.textColor = .black
        label.backgroundColor = .yellow
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private let btn: UIButton = {
        let btn = UIButton()
        btn.setTitle("go to third", for: .normal)
        btn.backgroundColor = .blue
        btn.translatesAutoresizingMaskIntoConstraints = false
        return btn
    }()
    
    private let backBtn: UIButton = {
        let btn = UIButton()
        btn.setTitle("go to back", for: .normal)
        btn.setTitleColor(.black, for: .normal)
        btn.backgroundColor = .green
        btn.translatesAutoresizingMaskIntoConstraints = false
        return btn
    }()
    
    // MARK: - Layout
    private func setLayout() {
        view.backgroundColor = .lightGray
        
        view.addSubview(label)
        view.addSubview(btn)
        view.addSubview(backBtn)
        
        NSLayoutConstraint.activate([
            label.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            label.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: -50),
            label.widthAnchor.constraint(equalToConstant: 300),
            label.heightAnchor.constraint(equalToConstant: 70),
            
            btn.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            btn.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: 50),
            btn.widthAnchor.constraint(equalToConstant: 300),
            btn.heightAnchor.constraint(equalToConstant: 70),
            
            backBtn.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            backBtn.topAnchor.constraint(equalTo: btn.bottomAnchor, constant: 50),
            backBtn.widthAnchor.constraint(equalToConstant: 300),
            backBtn.heightAnchor.constraint(equalToConstant: 70),
        ])
    }

    // MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setLayout()
        
        btn.addTarget(self, action: #selector(btnClicked(_:)), for: .touchUpInside)
        backBtn.addTarget(self, action: #selector(backBtnClicked(_:)), for: .touchUpInside)
    }

    @objc
    private func btnClicked(_ sender: UIButton) {
        let vc = ThirdViewController()
        navigationController?.pushViewController(vc, animated: true)
    }
    
    @objc
    private func backBtnClicked(_ sender: UIButton) {
        navigationController?.popViewController(animated: true)
    }
}
