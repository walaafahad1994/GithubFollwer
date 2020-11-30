//
//  UIviewController+Extension.swift
//  GithubFollwer
//
//  Created by walaa on 30/11/2020.
//

import UIKit

extension UIViewController
{
    func presnerGFAlertOnMainThread(title:String, message:String , buttonTitle:String)
    {
        DispatchQueue.main.async {
            let alertVc = GFAlertVC(titleAlert: title, bodyAlert: message, okButton: buttonTitle)
            alertVc.modalPresentationStyle = .overFullScreen
            alertVc.modalTransitionStyle = .crossDissolve
            self.present(alertVc, animated: true)
        }
        
    }
    
}
