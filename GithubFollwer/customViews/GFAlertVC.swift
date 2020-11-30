//
//  GFAlertVC.swift
//  GithubFollwer
//
//  Created by walaa on 29/11/2020.
//

import UIKit

class GFAlertVC: UIViewController {
    let continerView = UIView()
    let titleLabel = GFTitleLabel(textAlingnment: .center)
    let bodyMesaage = GFbodyLabel(textAlignement:.center,fontSize: 12)
    let ActionButton = GFbutton(backgroundColor: .systemPink, title: "OK")
    let padding :CGFloat = 20
    var titleAlert :String?
    var messageAlert:String?
    var buttonTitle:String?
    
    init(titleAlert: String, bodyAlert: String , okButton:String) {
        super.init(nibName: nil, bundle: nil)
        self.titleAlert = titleAlert
        self .messageAlert = bodyAlert
        self.buttonTitle = okButton
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.75)
        configureConinterView()
        configureTitle()
        configureActionButton()
        configureBodyLabel()
    }

    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func configureConinterView()
    {
        view.addSubview(continerView)
        continerView.backgroundColor = .systemBackground
        continerView.layer.cornerRadius = 16
        continerView.layer.borderWidth = 2
        continerView.layer.borderColor = UIColor.white.cgColor
        continerView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([continerView.centerYAnchor.constraint(equalTo:view.centerYAnchor),
                                     continerView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
                                     continerView.heightAnchor.constraint(equalToConstant:  220
                                     ),
                                     continerView.widthAnchor.constraint(equalToConstant: 280)])
        
    }
    
    func configureTitle()
    {
        continerView.addSubview(titleLabel)
        titleLabel.textAlignment = .center
        titleLabel.text = titleAlert ?? "Somthing went wrong"
        NSLayoutConstraint.activate([titleLabel.topAnchor.constraint(equalTo: continerView.topAnchor,constant: padding),
                                     titleLabel.leadingAnchor.constraint(equalTo: continerView.leadingAnchor, constant: padding),
                                     titleLabel.trailingAnchor.constraint(equalTo: continerView.trailingAnchor, constant: -padding),
                                     titleLabel.heightAnchor.constraint(equalToConstant: 28)])
    }
    func configureBodyLabel()
    {
        continerView.addSubview(bodyMesaage)
        bodyMesaage.text = messageAlert ?? "Unable To complete a request"
        bodyMesaage.numberOfLines = 4
        NSLayoutConstraint.activate([bodyMesaage.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 8),
                                     bodyMesaage.bottomAnchor.constraint(equalTo: ActionButton.topAnchor, constant: -12),
                                     bodyMesaage.leadingAnchor.constraint(equalTo: continerView.leadingAnchor, constant: padding),
                                     bodyMesaage.trailingAnchor.constraint(equalTo: continerView.trailingAnchor, constant: -padding)])
    }
    
    func configureActionButton()
    {
        continerView.addSubview(ActionButton)
        ActionButton.setTitle(buttonTitle ?? "Ok", for: .normal)
        ActionButton.addTarget(self, action: #selector(dismmVC), for: .touchUpInside)
        NSLayoutConstraint.activate([ActionButton.bottomAnchor.constraint(equalTo: continerView.bottomAnchor, constant: -padding),
                                     ActionButton.leadingAnchor.constraint(equalTo: continerView.leadingAnchor, constant: padding),
                                     ActionButton.trailingAnchor.constraint(equalTo: continerView.trailingAnchor, constant: -padding),
                                     ActionButton.heightAnchor.constraint(equalToConstant: 44)])
        
    }
    
    @objc func dismmVC()
    {
        dismiss(animated: true)
    }
}
