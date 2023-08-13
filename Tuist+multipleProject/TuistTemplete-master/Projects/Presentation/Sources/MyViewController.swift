//
//  ViewController.swift
//  App
//
//  Created by 현수빈 on 2023/08/13.
//

import UIKit
import SnapKit

public class MyViewController: UIViewController {
    
    public init() {
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private lazy var label: UILabel = {
        let view = UILabel()
        view.text = "hello tuist"
        return view
    }()

    public override func viewDidLoad() {
        super.viewDidLoad()

        setLayout()
    }
    
    func setLayout() {
        view.addSubview(label)
        
        label.snp.makeConstraints {
            $0.center.equalToSuperview()
        }
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
