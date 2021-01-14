//
//  DispatchViewController.swift
//  Knowledge
//
//  Created by Thatchaphon Sritrakul on 23/6/2563 BE.
//  Copyright © 2563 Thatchaphon Sritrakul. All rights reserved.
//

import UIKit
import RxSwift

class DispatchViewController: UIViewController {

    @IBOutlet weak var collectionView: UICollectionView!
    
    private var imageURL: [String] = [String]()
    private let disposeBag = DisposeBag()
    private let getDSCExclusiveBannerUseCase: GetDSCExclusiveBannerUseCase = GetDSCExclusiveBannerUseCaseImpl()
    
    private let concurrentQueue = DispatchQueue(label: "myConcurrentQueue", qos: .default, attributes: .concurrent, autoreleaseFrequency: .inherit, target: nil)
    private let serialQueue = DispatchQueue(label: "mySerialQueue")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.navigationBar.prefersLargeTitles = true
        self.navigationItem.title = "Test"
        self.initCollectioView()
        self.getDSCExclusiveBannerUseCase.execute().subscribe { (response) in
            switch response {
            case .next(let data):
                self.imageURL = [String]()
                for images in data {
                    if let image = images.image?.imgSubscribed {
                        self.imageURL.append(image)
                    }
                }
                self.collectionView.reloadData()
            case .error(let error):
                print(error)
            default:
                print("")
            }
        }.disposed(by: self.disposeBag)
        // Do any additional setup after loading the view.
    }
    
    private func initCollectioView() {
        self.collectionView.delegate = self
        self.collectionView.dataSource = self
        self.collectionView.register(UINib(nibName: "ImageCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "ImageCollectionViewCell")
    }
}

extension DispatchViewController: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 50
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ImageCollectionViewCell", for: indexPath) as! ImageCollectionViewCell
        concurrentQueue.async {
          do {
            let data = try Data(contentsOf: URL(string: "https://cms.dmpcdn.com/hilight/2020/10/26/0c7f8d80-173a-11eb-a54d-490661e142b8_original.jpg")!)
            if let image = UIImage(data: data) {
              DispatchQueue.main.async {
                cell.setupData(url: image)
              }
            }
          } catch {
            print("error is \(error.localizedDescription)")
          }
        }
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let frame = ((self.collectionView.frame.size.width-20) / 3)
        return CGSize(width: frame, height: frame)
    }
}
