//
//  FrozenAccount.swift
//  SwiftBank
//
//  Created by Gustavo Ferreira dos Santos on 08/04/25.
//

import Foundation

class FrozenAccount: BankAccount {
    override init(accountNumber: String) {
        super.init(accountNumber: accountNumber)
        isFrozen = true
    }
}
