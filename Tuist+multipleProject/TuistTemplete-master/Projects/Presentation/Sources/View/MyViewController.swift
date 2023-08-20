////
////  ViewController.swift
////  App
////
////  Created by 현수빈 on 2023/08/13.
////
//
//import UIKit
//import SnapKit
//
//public class MyViewController: UIViewController {
//
//    public init() {
//        super.init(nibName: nil, bundle: nil)
//    }
//
//    required init?(coder: NSCoder) {
//        fatalError("init(coder:) has not been implemented")
//    }
//
//    private lazy var label: UILabel = {
//        let view = UILabel()
//        view.text = "hello tuist"
//        return view
//    }()
//
//    private lazy var tableView: UITableView = {
//        let view = UITableView()
//        view.separatorStyle = .none
//        view.rowHeight = 56
//        return view
//    }()
//
//    public override func viewDidLoad() {
//        super.viewDidLoad()
//
//        setLayout()
//    }
//
//    func setLayout() {
//        view.addSubview(label)
//
//        label.snp.makeConstraints {
//            $0.center.equalToSuperview()
//        }
//    }
//
//
//
//
//}
