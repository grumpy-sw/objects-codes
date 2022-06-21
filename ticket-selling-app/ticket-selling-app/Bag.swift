//
//  Bag.swift
//  ticket-selling-app
//
//  Created by 박세웅 on 2022/06/21.
//

import Foundation

class Bag {
    private(set) var amount: Double
    private(set) var invitation: Invitation?
    private(set) var ticket: Ticket?
    
    init(amount: Double) {
        self.amount = amount
    }
    
    init(amount: Double, invitation: Invitation) {
        self.amount = amount
        self.invitation = invitation
    }
    
    private lazy var hasInvitation: Bool = {
        return invitation != nil
    }()
    
    private func setTicket(_ ticket: Ticket) {
        self.ticket = ticket
    }
    
    private func minusAmount(_ amount: Double) {
        self.amount -= amount
    }
    
    func plusAmount(_ amount: Double) {
        self.amount += amount
    }
    
    func hold(_ ticket: Ticket) -> Double {
        if hasInvitation {
            setTicket(ticket)
            return 0
        } else {
            setTicket(ticket)
            minusAmount(ticket.fee)
            return ticket.fee
        }
    }
}
