//
//  GFbodyLabel.swift
//  GithubFollwer
//
//  Created by walaa on 29/11/2020.
//

import UIKit

class GFbodyLabel: UILabel {

    override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
     init(textAlignement:NSTextAlignment , fontSize:CGFloat) {
        super.init(frame: .zero)
        self.textAlignment = textAlignment
        self.font = UIFont.systemFont(ofSize: fontSize ,weight: .regular)
        configure()
    }
    private func configure()
    {
        textColor = .systemGray
        font = UIFont.preferredFont(forTextStyle: .body)
        adjustsFontSizeToFitWidth = true
        minimumScaleFactor = 0.9
        lineBreakMode = .byWordWrapping
        translatesAutoresizingMaskIntoConstraints = false
        
    }
    
    

}
