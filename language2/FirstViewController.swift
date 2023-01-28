//
//  FirstViewController.swift
//  language2
//
//  Created by mac on 28/01/23.
//

import UIKit

class FirstViewController: UIViewController {
    
    let backgraund = UIImageView()
    let globalView = UIView()
    let global = UIImageView()
    let label1 = UILabel()
    let label2 = UILabel()
    let uzButton = UIButton()
    let ruButton = UIButton()
    let imgUz = UIImageView()
    let imgRu = UIImageView()
    let labelRu = UILabel()
    let labelUz = UILabel()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .gray
        
        backgraund.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(backgraund)
        backgraund.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        backgraund.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        backgraund.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
        backgraund.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        backgraund.image = UIImage(named: "back")
        
        globalView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(globalView)
        globalView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor,constant: 100).isActive = true
        globalView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        globalView.heightAnchor.constraint(equalToConstant: 100).isActive = true
        globalView.widthAnchor.constraint(equalToConstant: 100).isActive = true
        globalView.clipsToBounds = true
        globalView.layer.cornerRadius = 50
        globalView.backgroundColor = .white
        
        label1.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(label1)
        label1.topAnchor.constraint(equalTo: globalView.bottomAnchor,constant: 20).isActive = true
        label1.leftAnchor.constraint(equalTo: view.leftAnchor,constant: 25).isActive = true
        label1.rightAnchor.constraint(equalTo: view.rightAnchor,constant: -25).isActive = true
        label1.text = "main".localized()
        label1.font = .systemFont(ofSize: 50)
        label1.numberOfLines = 0
        label1.textAlignment = .center
        
        label2.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(label2)
        label2.topAnchor.constraint(equalTo: label1.bottomAnchor,constant: 20).isActive = true
        label2.leftAnchor.constraint(equalTo: view.leftAnchor,constant: 25).isActive = true
        label2.rightAnchor.constraint(equalTo: view.rightAnchor,constant: -25).isActive = true
        label2.text = "extra".localized()
        label2.font = .systemFont(ofSize: 25)
        label2.numberOfLines = 0
        label2.textAlignment = .center
        
        global.translatesAutoresizingMaskIntoConstraints = false
        globalView.addSubview(global)
        global.centerXAnchor.constraint(equalTo: globalView.centerXAnchor).isActive = true
        global.centerYAnchor.constraint(equalTo: globalView.centerYAnchor).isActive = true
        global.heightAnchor.constraint(equalToConstant: 60).isActive = true
        global.widthAnchor.constraint(equalToConstant: 60).isActive = true
        global.image = UIImage(systemName: "globe.asia.australia.fill")
        global.tintColor = .systemGreen
        
        uzButton.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(uzButton)
        uzButton.topAnchor.constraint(equalTo: label2.bottomAnchor,constant: 30).isActive = true
        uzButton.leftAnchor.constraint(equalTo: view.leftAnchor,constant: 10).isActive = true
        uzButton.rightAnchor.constraint(equalTo: view.rightAnchor,constant: -10).isActive = true
        uzButton.heightAnchor.constraint(equalToConstant: 40).isActive = true
        uzButton.backgroundColor = .systemGray5
        uzButton.clipsToBounds = true
        uzButton.layer.cornerRadius = 15
        uzButton.addTarget(self, action: #selector(buttonUz), for: .touchUpInside)
        
        imgUz.translatesAutoresizingMaskIntoConstraints = false
        uzButton.addSubview(imgUz)
        imgUz.leftAnchor.constraint(equalTo: uzButton.leftAnchor,constant: 30).isActive = true
        imgUz.centerYAnchor.constraint(equalTo: uzButton.centerYAnchor).isActive = true
        imgUz.heightAnchor.constraint(equalToConstant: 20).isActive = true
        imgUz.widthAnchor.constraint(equalToConstant: 30).isActive = true
        imgUz.image = UIImage(named: "uz")
        
        labelUz.translatesAutoresizingMaskIntoConstraints = false
        uzButton.addSubview(labelUz)
        labelUz.leftAnchor.constraint(equalTo: imgUz.rightAnchor,constant: 10).isActive = true
        labelUz.font = .systemFont(ofSize: 20)
        labelUz.centerYAnchor.constraint(equalTo: uzButton.centerYAnchor).isActive = true
        labelUz.text = "uzbek".localized()
        
        ruButton.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(ruButton)
        ruButton.topAnchor.constraint(equalTo: uzButton.bottomAnchor,constant: 10).isActive = true
        ruButton.leftAnchor.constraint(equalTo: view.leftAnchor,constant: 10).isActive = true
        ruButton.rightAnchor.constraint(equalTo: view.rightAnchor,constant: -10).isActive = true
        ruButton.heightAnchor.constraint(equalToConstant: 40).isActive = true
        ruButton.backgroundColor = .systemGray5
        ruButton.clipsToBounds = true
        ruButton.layer.cornerRadius = 15
        ruButton.addTarget(self, action: #selector(buttonRu), for: .touchUpInside)
        
        imgRu.translatesAutoresizingMaskIntoConstraints = false
        ruButton.addSubview(imgRu)
        imgRu.leftAnchor.constraint(equalTo: ruButton.leftAnchor,constant: 30).isActive = true
        imgRu.centerYAnchor.constraint(equalTo: ruButton.centerYAnchor).isActive = true
        imgRu.heightAnchor.constraint(equalToConstant: 20).isActive = true
        imgRu.widthAnchor.constraint(equalToConstant: 30).isActive = true
        imgRu.image = UIImage(named: "ru")
        
        labelRu.translatesAutoresizingMaskIntoConstraints = false
        ruButton.addSubview(labelRu)
        labelRu.leftAnchor.constraint(equalTo: imgRu.rightAnchor,constant: 10).isActive = true
        labelRu.font = .systemFont(ofSize: 20)
        labelRu.centerYAnchor.constraint(equalTo: ruButton.centerYAnchor).isActive = true
        labelRu.text = "rus".localized()
        
        
   

    }
    
    @objc func buttonUz(){
        Bundle.setLanguage(lang: "uz")
        label1.text = "main".localized()
        label2.text = "extra".localized()
        labelUz.text = "uzbek".localized()
        labelRu.text = "rus".localized()
    }
    
    @objc func buttonRu(){
        Bundle.setLanguage(lang: "ru")
        label1.text = "main".localized()
        label2.text = "extra".localized()
        labelUz.text = "uzbek".localized()
        labelRu.text = "rus".localized()
    }

}

extension Bundle {
    private static var bundle: Bundle!

    public static func localizedBundle() -> Bundle! {
        if bundle == nil {
            let appLang = UserDefaults.standard.string(forKey: "app_lang") ?? "ru"
            let path = Bundle.main.path(forResource: appLang, ofType: "lproj")
            bundle = Bundle(path: path!)
        }

        return bundle;
    }

    public static func setLanguage(lang: String) {
        UserDefaults.standard.set(lang, forKey: "app_lang")
        let path = Bundle.main.path(forResource: lang, ofType: "lproj")
        bundle = Bundle(path: path!)
    }
}
extension String {
    func localized() -> String {
        return NSLocalizedString(self, tableName: nil, bundle: Bundle.localizedBundle(), value: "", comment: "")
    }

    func localizeWithFormat(arguments: CVarArg...) -> String{
        return String(format: self.localized(), arguments: arguments)
    }
}
