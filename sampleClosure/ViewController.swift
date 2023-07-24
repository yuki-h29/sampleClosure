//
//  ViewController.swift
//  sampleClosure
//
//  Created by 平野裕貴 on 2023/07/24.
//

import UIKit

class ViewController: UIViewController {

    var viewModel = ViewModel()
        
        override func viewDidLoad() {
            super.viewDidLoad()
            
            // ViewModelのクロージャを購読します。
            viewModel.onScreenClosed = { [weak self] in
                print("Screen was closed!")
                // 必要に応じて他のアクションを実行します。
            }
        }
        
        // どこかのタイミングでscreenを閉じる（例えば、ボタンが押されたときなど）
        @IBAction func closeButtonTapped(_ sender: Any) {
            viewModel.closeScreen()
        }
    }
