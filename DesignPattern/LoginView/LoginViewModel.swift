//
//  LoginViewModel.swift
//  DesignPattern
//
//  Created by Vuslat Yolcu on 8.04.2023.
//

import Foundation

final class LoginViewModel {
    
    var error: ObservableObject<String?> = ObservableObject(nil)
    
    func login(email: String, password: String) {
        NetworkService.shared.login(email: email, password: password ) { [weak self] success in
            self?.error.value = success ? nil : "Invalid Credentials!!!"
        }
    }
}
