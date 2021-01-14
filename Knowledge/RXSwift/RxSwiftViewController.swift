//
//  RxSwiftViewController.swift
//  Knowledge
//
//  Created by Thatchaphon Sritrakul on 15/5/2563 BE.
//  Copyright © 2563 Thatchaphon Sritrakul. All rights reserved.
//

import UIKit
import RxSwift
import RxCocoa

class RxSwiftViewController: UIViewController {
    
    private let userDefault = UserDefaults.standard
    @IBOutlet weak var textField: UITextField!
    var disposeBag = DisposeBag()
    
    let toggle = PublishSubject<String>()
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        userDefault.rx.observe(String.self, "test_rx_swift").distinctUntilChanged().subscribe { (data) in
//            print(data)
//        }.disposed(by: disposeBag)
        self.getProfile().subscribe { (status) in
            print("------->   \(status)")
        } onError: { (error) in
            print("Error")
        }.disposed(by: self.disposeBag)
        
        self.toggle.subscribe { (string) in
            print(string)
        }.disposed(by: self.disposeBag)

    }
    
    func setValue(text: String) {
        self.userDefault.set(text, forKey: "test_rx_swift")
        
    }
    
    @IBAction func saveButton(_ sender: UIButton) {
        self.toggle.onNext("Success")
//        self.setValue(text: self.textField.text ?? "")
    }
    
    func getData() -> Observable<String?> {
        return Observable.create { (emitter) -> Disposable in
            emitter.onNext(self.userDefault.object(forKey: "test_rx_swift") as? String)
            return Disposables.create()
        }
    }
    
    @IBAction func touchSubscribe(_ sender: UIButton) {
        self.toggle.onNext("Success")
//        self.disposeBag = DisposeBag()
//        userDefault.rx.observe(String.self, "test_rx_swift").distinctUntilChanged().subscribe { (data) in
//            print(data)
//        }.disposed(by: self.disposeBag)
    }
    
    func getProfile() -> Observable<String> {
        return Observable.create { (promise) -> Disposable in
            DispatchQueue.main.async {
                _ = Timer.scheduledTimer(withTimeInterval: TimeInterval(3), repeats: true, block: { (_) in
                    promise.onNext("Success")
                })
            }
            return Disposables.create()
        }
    }
    
}
