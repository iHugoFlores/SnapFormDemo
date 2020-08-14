//
//  FormScreen.swift
//  DynamicFormExample
//
//  Created by Hugo Flores Perez on 8/14/20.
//  Copyright © 2020 Hugo Flores Perez. All rights reserved.
//

import UIKit

class FormScreen: UIViewController {
    
    private let formBodyList: UITableView = {
        let table = UITableView()
        table.translatesAutoresizingMaskIntoConstraints = false
        //table.showsVerticalScrollIndicator = false
        //table.isScrollEnabled = false
        table.allowsSelection = false
        table.isPagingEnabled = true
        return table
    }()
    
    let enterCodeView = CodeInputView()
    
    let passwordInputView = PasswordInputView()
    
    var formViews: [UIView] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .blue
        title = "Form"
        
        formViews.append(enterCodeView)
        formViews.append(passwordInputView)
        
        view.addSubview(formBodyList)
        formBodyList.register(BlankFormScreen.self, forCellReuseIdentifier: BlankFormScreen.reuseIdentifier)
        formBodyList.dataSource = self
        formBodyList.delegate = self
        formBodyList.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor).isActive = true
        formBodyList.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        formBodyList.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        formBodyList.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
    }
}

extension FormScreen: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        formViews.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: BlankFormScreen.reuseIdentifier, for: indexPath) as? BlankFormScreen else { fatalError() }
        let cellView = formViews[indexPath.row]
        cell.setView(cellView)
        return cell
    }
}

extension FormScreen: UITableViewDelegate {
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        formBodyList.frame.size.height
    }
    
//    func scrollViewWillEndDragging(_ scrollView: UIScrollView, withVelocity velocity: CGPoint, targetContentOffset: UnsafeMutablePointer<CGPoint>) {
//        let cellHeight = formBodyList.frame.size.height
//        targetContentOffset.pointee.y = round(targetContentOffset.pointee.y / cellHeight) * cellHeight
//    }
}
