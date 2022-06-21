//
//  Theater.swift
//  ticket-selling-app
//
//  Created by 박세웅 on 2022/06/21.
//

import Foundation

class Theater {
    private(set) var ticketSeller: TicketSeller
    
    init(ticketSeller: TicketSeller) {
        self.ticketSeller = ticketSeller
    }
    
    func enter(_ audience: Audience) {
        if audience.bag.hasInvitation {
            guard let ticket = ticketSeller.ticketOffice.tickets.first else {
                return
            }
            audience.bag.setTicket(ticket)
        } else {
            guard let ticket = ticketSeller.ticketOffice.tickets.first else {
                return
            }
            audience.bag.minusAmount(ticket.fee)
            ticketSeller.ticketOffice.plusAmount(ticket.fee)
            audience.bag.setTicket(ticket)
        }
    }
}
