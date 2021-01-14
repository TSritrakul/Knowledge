//
//  HomeWrapperView.swift
//  Knowledge
//
//  Created by Thatchaphon Sritrakul on 20/10/2563 BE.
//  Copyright © 2563 Thatchaphon Sritrakul. All rights reserved.
//

import SwiftUI

struct HomeWrapperView: View {
    var body: some View {
        List {
            Section(header: Text("Header")) {
                ForEach(0..<50) { (index) in
                    Text("\(index)")
                }
            }
            .background(NavigationConfigurator { nc in
                nc.hidesBarsOnTap = true
            })
            .navigationBarHidden(true)
            .navigationBarTitle("LIFESTYLE", displayMode: .inline)
            
        }
        
    }
}

struct HomeWrapperView_Previews: PreviewProvider {
    static var previews: some View {
        HomeWrapperView()
    }
}

struct NavigationConfigurator: UIViewControllerRepresentable {
    var configure: (UINavigationController) -> Void = { _ in }

    func makeUIViewController(context: UIViewControllerRepresentableContext<NavigationConfigurator>) -> UIViewController {
        UIViewController()
    }
    func updateUIViewController(_ uiViewController: UIViewController, context: UIViewControllerRepresentableContext<NavigationConfigurator>) {
        if let nc = uiViewController.navigationController {
            self.configure(nc)
        }
    }

}

struct DispathView: UIViewControllerRepresentable {
    
    typealias UIViewControllerType = UIViewController
    
    func makeUIViewController(context: Context) -> UIViewController {
        let viewController = DispatchViewController(nibName: "DispatchViewController", bundle: nil)
        return viewController
    }
    
    func updateUIViewController(_ uiViewController: UIViewController, context: Context) {
        
    }
}

//struct ViewControllerToView: UIViewControllerRepresentable {
//    typealias UIViewControllerType = UIViewController
//    
//    func makeUIViewController(context: Context) -> UIViewController {
//        
//    }
//    
//    func updateUIViewController(_ uiViewController: UIViewController, context: Context) {
//        
//    }
//}
//
//struct UIViewToView: UIViewRepresentable {
//    typealias UIViewType = UICollectionView
//    
//    func makeUIView(context: Context) -> UICollectionView {
//        
//    }
//    
//    func updateUIView(_ uiView: UICollectionView, context: Context) {
//        
//    }
//}

struct HomeCollectionView: UIViewRepresentable {
    typealias UIViewType = UICollectionView
    
    func makeUIView(context: Context) -> UICollectionView {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .vertical
        layout.sectionInset = UIEdgeInsets(top: 0, left: 10, bottom: 0, right: 10)
        let view = UICollectionView(frame: CGRect(), collectionViewLayout: layout)
        view.delegate = context.coordinator
        view.dataSource = context.coordinator
        view.backgroundColor = .white
        view.register(UINib(nibName: "HomeWrapperCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "HomeWrapperCollectionViewCell")
        return view
    }
    
    func updateUIView(_ uiView: UICollectionView, context: Context) {
        
    }
    
    func makeCoordinator() -> Coordinator {
        return Coordinator()
    }
    
    class Coordinator: NSObject, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
        
        func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
            return 100
        }
        
        func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "HomeWrapperCollectionViewCell", for: indexPath) as! HomeWrapperCollectionViewCell
            return cell
        }
        
        func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
            return CGSize(width: 200, height: 200)
        }
    }
}

