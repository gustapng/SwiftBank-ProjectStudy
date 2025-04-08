//
//  TransactionHistoryService.swift
//  SwiftBank
//
//  Created by Gustavo Ferreira dos Santos on 07/04/25.
//

import Foundation

class TransactionHistoryService {
    var transactions: [String] = []
    
    func addTransaction(message: String) {
        transactions.insert(message, at: 0)
    }
}
