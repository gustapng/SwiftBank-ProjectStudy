//
//  NotificationService.swift
//  SwiftBank
//
//  Created by Gustavo Ferreira dos Santos on 07/04/25.
//

import Foundation

protocol NotificationServiceProtocol {
    func sendNotification(message: String)
}

class NotificationService: NotificationServiceProtocol {
    func sendNotification(message: String) {
        // Enviar notificação para o usuário
        print(message)
    }
}
