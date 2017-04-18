//
//  ViewController.swift
//

import UIKit

class ViewController: UIViewController {

    // MARK: - View Lifecycle Methods
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        // Viewの設定
        self.setupView()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // MARK: - Internal Method
    
    // Viewの設定
    private func setupView() {
        // Viewの背景色
        self.view.backgroundColor = UIColor.cyan
        
        // ラベルの設定
        self.setupLabel()
    }
    
    // ラベルの設定
    private func setupLabel() {
        // ラベルサイズ
        let labelSize = CGSize(width: 200.0, height: 50.0)
        // ラベル座標
        let labelPoint = CGPoint(x: self.view.bounds.width / 2 - labelSize.width / 2, y: self.view.bounds.height / 2 - labelSize.height)
        
        let label = UILabel(frame: CGRect(origin: labelPoint, size: labelSize))
        
        label.text = "Hello Swift"
        label.textAlignment = NSTextAlignment.center
        label.textColor = UIColor.white
        label.shadowColor = UIColor.gray
        label.backgroundColor = UIColor.orange
        
        // 角丸設定
        label.layer.masksToBounds = true
        label.layer.cornerRadius = 20.0
        
        
        self.view.addSubview(label)
    }
}

