//
//  HomeViewController.swift
//  LoginovHomework
//
//  Created by Dmitry Loginov on 30.11.2022.
//

import UIKit
import SnapKit
import OtusHomework

public class HomeViewController:UIViewController {
    
    public override func viewDidLoad() {
        view.backgroundColor = .gray
        let studentLabel = UILabel()
        let currentBundle = Bundle(for: HomeViewController.self)
        let image = UIImage(named: "photo_cat", in: currentBundle, with: .none)
        
        let imageView = UIImageView(frame: self.view.bounds)
        imageView.image = image
        imageView.center = view.center
    
        studentLabel.font = .systemFont(ofSize: 48, weight: .bold)
        studentLabel.text = "Loginov Dmitry is waiting for his galley"
        studentLabel.textColor = .white
        studentLabel.textAlignment = .center
        studentLabel.numberOfLines = 0
        
        view.addSubview(imageView)
        view.addSubview(studentLabel)
        
        studentLabel.snp.makeConstraints { make in
            make.horizontalEdges.equalToSuperview()
            make.centerY.equalToSuperview()
        }
    }
}

extension HomeViewController: HasOtusHomeworkView {
    public var squareView: UIView? {
        return view
    }
    
    public var squareViewController: UIViewController? {
        return self
    }
}

