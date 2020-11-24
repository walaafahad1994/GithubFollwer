//
//  GFbutton.swift
//  GithubFollwer
//
//  Created by walaa on 24/11/2020.
//

import UIKit

class GFbutton: UIButton {

    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    // button settings
    init(backgroundColor:UIColor , title : String ) {
        super.init(frame: .zero)
        
        self.backgroundColor = backgroundColor
        // the state of button pressed .. normal
        self.setTitle(title, for: .normal)
        configure()
    }
    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */
    private func configure()
    {
        layer.cornerRadius = 10
        titleLabel?.textColor = .white
        titleLabel?.font = UIFont.preferredFont(forTextStyle: .headline)
        translatesAutoresizingMaskIntoConstraints = false
    }
}
