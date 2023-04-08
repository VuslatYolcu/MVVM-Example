//
//  ObservableObject.swift
//  DesignPattern
//
//  Created by Vuslat Yolcu on 8.04.2023.
//

import Foundation

final class ObservableObject<T> {
    
    var value: T?
    private var listener: ((T?) -> Void)?
    
    init(_ value: T?) {
        self.value = value
    }
    
    func bind(_ listener: @escaping(T?) -> Void) {
        listener(value)
        self.listener = listener
    }
}
