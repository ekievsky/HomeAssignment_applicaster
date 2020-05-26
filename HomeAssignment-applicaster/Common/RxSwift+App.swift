//
//  RxSwift+App.swift
//  HomeAssignment-applicaster
//
//  Created by Evgenii Kievsky on 25.05.2020.
//  Copyright © 2020 Evgenii Kievsky. All rights reserved.
//

import RxSwift
import RxCocoa

extension ObservableType where Element: OptionalType {
    
    func filterNil() -> Observable<Element.Wrapped> {
        
        return self.flatMap { element -> Observable<Element.Wrapped> in
            guard let value = element.value else {
                return Observable<Element.Wrapped>.empty()
            }
            return Observable<Element.Wrapped>.just(value)
        }
    }
}

extension SharedSequenceConvertibleType where Element: OptionalType {
    
    func filterNil() -> SharedSequence<SharingStrategy, Element.Wrapped> {
        return flatMap { element -> SharedSequence<SharingStrategy, Element.Wrapped> in
            guard let value = element.value else {
                return SharedSequence<SharingStrategy, Element.Wrapped>.empty()
            }
            return SharedSequence<SharingStrategy, Element.Wrapped>.just(value)
        }
    }
}

extension Observable {
    
    func asOptional() -> Observable<Element?> {
        
        return self.map { return $0 as Element? }
    }
    
    func asDriver() -> Driver<Element> {
        
        return self.asOptional()
            .asDriver(onErrorJustReturn: nil)
            .filterNil()
    }
    
    func asArray() -> Observable<[Element]> {
        
        return self.map { [$0] }
    }
}
