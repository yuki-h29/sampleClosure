//
//  SecondViewController.swift
//  sampleClosure
//
//  Created by 平野裕貴 on 2023/07/24.
//

class ViewModel {
    // このクロージャは画面が閉じられたときに呼び出されます。
    var onScreenClosed: (() -> Void)?
    
    // これは画面が閉じられたことをシミュレートするためのメソッドです。
    // 実際のアプリでは、適切な場所（例えば、deinitなど）で呼び出す必要があります。
    func closeScreen() {
        onScreenClosed?()
    }
}
