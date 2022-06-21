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
    
    lazy var hasInvitation: Bool = {
        return invitation != nil
    }()
    
    func setTicket(_ ticket: Ticket) {
        self.ticket = ticket
    }
    
    func minusAmount(_ amount: Double) {
        self.amount -= amount
    }
    
    func plusAmount(_ amount: Double) {
        self.amount += amount
    }
}
