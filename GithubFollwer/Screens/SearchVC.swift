//
//  SearchVC.swift
//  GithubFollwer
//
//  Created by walaa on 09/11/2020.
//

import UIKit

class SearchVC: UIViewController {
    let logoimageView = UIImageView()
     let usernameTextFiled = GFtextField()
     let getFollwerButton = GFbutton(backgroundColor: .systemGreen, title: "Get Follwers")
    override func viewDidLoad() {
        super.viewDidLoad()
        // this will use white for normal mode and black for dark mode
        view.backgroundColor = .systemBackground
        configureLogoImageView()
        configureTextfiled()
        getFollwerButtonfunc()
        dismaissTabgestRecongizer()
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.isNavigationBarHidden = true
    }
    func configureLogoImageView(){
        view.addSubview(logoimageView)
        logoimageView.translatesAutoresizingMaskIntoConstraints = false
        logoimageView.image = UIImage(named: "gh-logo")!
        NSLayoutConstraint.activate([logoimageView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor,constant: 80),
                                     logoimageView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
                                     logoimageView.heightAnchor.constraint(equalToConstant: 200),
                                     logoimageView.widthAnchor.constraint(equalToConstant: 200),
        ])
    }
    
    func configureTextfiled()
    {
        // trailing usulay in - sign and bottom also
        // usally object has 4 constartint
        view.addSubview(usernameTextFiled)
        usernameTextFiled.translatesAutoresizingMaskIntoConstraints = false
        usernameTextFiled.delegate = self
        NSLayoutConstraint.activate([
            usernameTextFiled.topAnchor.constraint(equalTo: logoimageView.bottomAnchor,constant: 48),
            usernameTextFiled.leadingAnchor.constraint(equalTo: view.leadingAnchor,constant: 50),
            usernameTextFiled.trailingAnchor.constraint(equalTo: view.trailingAnchor,constant: -50),
                                     usernameTextFiled.heightAnchor.constraint(equalToConstant: 50)
                                     ])
    }
    func  getFollwerButtonfunc()  {
        view.addSubview(getFollwerButton)
        getFollwerButton.addTarget(self, action: #selector(pushListFollwerVC), for: .touchUpInside)
        getFollwerButton.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([getFollwerButton.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor,constant: -50),
                                     getFollwerButton.leadingAnchor.constraint(equalTo: view.leadingAnchor,constant: 50),
                                     getFollwerButton.trailingAnchor.constraint(equalTo: view.trailingAnchor,constant: -50),
                                     getFollwerButton.heightAnchor.constraint(equalToConstant: 50)
        ])
    }
    func dismaissTabgestRecongizer()
    {
        let tab = UITapGestureRecognizer(target: self.view, action: #selector(UIView.endEditing(_:)))
        view.addGestureRecognizer(tab)
    }
    // check the regulra experssion for more valdation
   @objc func pushListFollwerVC()   {
        let follwersListVC = follwerListVC()
    guard  !usernameTextFiled.text!.isEmpty else {
      presnerGFAlertOnMainThread(title: "Empty UserName", message: "You need to enter username to look for", buttonTitle: "OK")
   
    return
        
    }
    follwersListVC.userName = usernameTextFiled.text
    follwersListVC.title=usernameTextFiled.text
    navigationController?.pushViewController(follwersListVC, animated: true)
    
    
    }
   

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
extension SearchVC : UITextFieldDelegate
{
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
     
        return true
    }
    
}
