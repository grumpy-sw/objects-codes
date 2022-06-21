//
//  TicketSeller.swift
//  ticket-selling-app
//
//  Created by 박세웅 on 2022/06/21.
//

import Foundation

class TicketSeller {
    private(set) var ticketOffice: TicketOffice
    
    init(ticketOffice: TicketOffice) {
        self.ticketOffice = ticketOffice
    }
    
    func sellTo(_ audience: Audience) {
        if audience.bag.hasInvitation {
            let ticket = ticketOffice.getTicket()
            audience.bag.setTicket(ticket)
        } else {
            let ticket = ticketOffice.getTicket()
            audience.bag.minusAmount(ticket.fee)
            ticketOffice.plusAmount(ticket.fee)
            audience.bag.setTicket(ticket)
        }
    }
}
