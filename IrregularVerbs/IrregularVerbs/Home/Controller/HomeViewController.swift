//
//  HomeViewController.swift
//  IrregularVerbs
//
//  Created by Marat Cherkasov on 20.04.2023.
//

import UIKit

class HomeViewController: UIViewController {
    // MARK: - GUI Variables
    private lazy var titleLabel: UILabel = {
       let label = UILabel()
        
        label.text = "Irregular Verbs".uppercased()
        label.font = .boldSystemFont(ofSize: 28)
        label.translatesAutoresizingMaskIntoConstraints = false
        
        return label
    }()
    
    private lazy var firstButton: UIButton = {
       let button = UIButton()
        
        button.setTitle("Select verbs".localized, for: .normal)
        configureButtons(button: button)
        button.addTarget(self, action: #selector(goToSelectViewController),
                         for: .touchUpInside)
        
        return button
    }()
    
    private lazy var secondButton: UIButton = {
       let button = UIButton()
        
        button.setTitle("Train verbs".localized, for: .normal)
        configureButtons(button: button)
        button.addTarget(self, action: #selector(goToTrainViewController),
                         for: .touchUpInside)
        
        return button
    }()
    
    // MARK: - Properties
    private let cornerRadius: CGFloat = 20
    private let buttonHeight: CGFloat = 80
    
    // MARK: - Life cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configureUI()
    }
    
    // MARK: - Private methods
    @objc
    private func goToSelectViewController() {
        navigationController?.pushViewController(SelectVerbsViewController(),
                                                 animated: true)
    }
    
    @objc
    private func goToTrainViewController() {
        navigationController?.pushViewController(TrainViewController(),
                                                 animated: true)
    }
    
    private func configureUI() {
        // Added elements to the view
        view.addSubview(titleLabel)
        view.addSubview(firstButton)
        view.addSubview(secondButton)
        
        view.backgroundColor = .white
        
        setupConstraints()
    }
    
    private func configureButtons(button: UIButton) {
        button.setTitleColor(UIColor.black, for: .normal)
        button.backgroundColor = .systemGray5
        button.layer.cornerRadius = cornerRadius
        button.translatesAutoresizingMaskIntoConstraints = false
        button.layer.shadowColor = UIColor.darkGray.cgColor
        button.layer.shadowOffset = CGSize(width: 1, height: 3)
        button.layer.shadowOpacity = 0.3
        button.layer.cornerRadius = cornerRadius
        button.layer.shadowRadius = 2
    }
    
    private func setupConstraints() {
        firstButton.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        firstButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        firstButton.heightAnchor.constraint(equalToConstant: buttonHeight).isActive = true
        firstButton.leadingAnchor.constraint(equalTo: view.leadingAnchor,
                                             constant: 80).isActive = true
        
        titleLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        titleLabel.bottomAnchor.constraint(equalTo: firstButton.topAnchor,
                                           constant: -80).isActive = true
        
        secondButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        secondButton.topAnchor.constraint(equalTo: firstButton.bottomAnchor,
                                          constant: 40).isActive = true
        secondButton.heightAnchor.constraint(equalToConstant: buttonHeight).isActive = true
        secondButton.widthAnchor.constraint(equalTo: firstButton.widthAnchor).isActive = true
    }
}
