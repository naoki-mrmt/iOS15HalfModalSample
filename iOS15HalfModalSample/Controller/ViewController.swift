//
//  ViewController.swift
//  iOS15HalfModalSample
//
//  Created by naoki-mrnk on 2021/08/24.
//

import UIKit

class ViewController: UIViewController {
    
    // MARK: - LifeCycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    // MARK: - Actions
    @IBAction func tappedButton(_ sender: UIButton) {
        displayHalfModal()
    }
}

// MARK: - Private
private extension ViewController {
    func displayHalfModal() {
        let vc = HalfModalViewController()
        if let sheet = vc.sheetPresentationController {
            sheet.detents = [.medium(), .large()]
            // ハンドルを表示
            sheet.prefersScrollingExpandsWhenScrolledToEdge = true
            // グラバーを表示
            sheet.prefersGrabberVisible = true
            // 角丸
            sheet.preferredCornerRadius = 24.0
        }
        present(vc, animated: true, completion: nil)
    }
}

