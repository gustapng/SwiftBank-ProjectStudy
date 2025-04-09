//
//  TransactionHistoryService.swift
//  SwiftBank
//
//  Created by Gustavo Ferreira dos Santos on 07/04/25.
//

import Foundation

protocol TransactionHistoryProtocol {
    var transactions: [String] { get set }

    func addTransaction(message: String)
}

class TransactionHistoryService: TransactionHistoryProtocol {
    var transactions: [String] = []

    func addTransaction(message: String) {
        transactions.insert(message, at: 0)
    }
}
