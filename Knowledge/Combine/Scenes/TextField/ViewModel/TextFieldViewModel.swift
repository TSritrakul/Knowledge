//
//  TextFieldViewModel.swift
//  Knowledge
//
//  Created by Thatchaphon Sritrakul on 5/1/2564 BE.
//  Copyright © 2564 BE Thatchaphon Sritrakul. All rights reserved.
//

import Foundation
import Combine

class TextFieldViewModel: ObservableObject {
    
    @Published var username: String = ""
    @Published var password: String = ""
    @Published var isValid: Bool = false
    @Published var baseShelf: BaseShelfModel = BaseShelfModel()
    
    let selectedLoginButton: PassthroughSubject<(), Never>
    
    private var subscriptions = Set<AnyCancellable>()
    
    private var isFormValid: AnyPublisher<Bool, Never> {
        Publishers.CombineLatest($username, $password)
          .map { username, password in
            if username.isEmpty || password.isEmpty {
                return false
            } else {
                return true
            }
          }
        .eraseToAnyPublisher()
      }
    
    private let getBaseShelfUseCase: GetBaseShelfUseCase
    
    init(selectedLoginButton: PassthroughSubject<(), Never> = PassthroughSubject<(), Never>(),
         getBaseShelfUseCase: GetBaseShelfUseCase = GetBaseShelfUseCaseImpl()) {
        self.selectedLoginButton = selectedLoginButton
        self.getBaseShelfUseCase = getBaseShelfUseCase
        
        self.subscribeIsFormValid()
        self.subscribeLoginButton()
    }
    
    private func subscribeIsFormValid() {
        self.isFormValid
            .assign(to: \.isValid, on: self)
            .store(in: &self.subscriptions)
    }
    
    private func subscribeLoginButton() {
        self.selectedLoginButton.flatMap { (_) -> AnyPublisher<BaseShelfModel, Error> in
            return self.getBaseShelfUseCase.execute()
        }
        .replaceError(with: BaseShelfModel())
        .assign(to: \.baseShelf, on: self)
        .store(in: &self.subscriptions)
    }
}
