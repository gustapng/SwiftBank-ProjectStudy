//
//  BankOperation.swift
//  SwiftBank
//
//  Created by Gustavo Ferreira dos Santos on 07/04/25.
//

import Foundation

protocol BankOperation {
    func execute(in account: BankAccount, amount: Double) -> Bool
}

class WithdrawViewOperation: BankOperation {
    func execute(in account: BankAccount, amount: Double) -> Bool {
        if amount <= account.balance {
            account.balance -= amount
            account.notificationService.sendNotification(message: "Saque no valor de \(amount.formatCurrency()) realizado!")
            account.transactionsHistoryService.addTransaction(message: "Saque no valor de \(amount.formatCurrency())")
            return true
        }
        return false
    }
}

class DepositViewOperation: BankOperation {
    func execute(in account: BankAccount, amount: Double) -> Bool {
        account.balance += amount
        account.notificationService.sendNotification(message: "Depósito no valor de \(amount.formatCurrency()) realizado!")
        account.transactionsHistoryService.addTransaction(message: "Depósito no valor de \(amount.formatCurrency())")
        return true
    }
}
