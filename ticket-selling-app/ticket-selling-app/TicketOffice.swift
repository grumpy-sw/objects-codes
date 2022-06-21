//
//  TicketOffice.swift
//  ticket-selling-app
//
//  Created by 박세웅 on 2022/06/21.
//

import Foundation

class TicketOffice {
    private(set) var amount: Double
    private(set) var tickets: [Ticket]
    
    init(amount: Double, tickets: [Ticket]) {
        self.amount = amount
        self.tickets = tickets
    }
    
    private func getTicket() -> Ticket {
        return tickets.removeFirst()
    }
    
    func addTickets(_ tickets: [Ticket]) {
        tickets.forEach({
            self.tickets.append($0)
        })
    }
    
    func minusAmount(_ amount: Double) {
        self.amount -= amount
    }
    
    private func plusAmount(_ amount: Double) {
        self.amount += amount
    }
    
    func sellTicketTo(audience: Audience) {
        plusAmount(audience.buy(getTicket()))
    }
}
