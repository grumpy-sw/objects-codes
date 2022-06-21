//
//  Audience.swift
//  ticket-selling-app
//
//  Created by 박세웅 on 2022/06/21.
//

import Foundation

class Audience {
    private(set) var bag: Bag
    
    init(bag: Bag) {
        self.bag = bag
    }
    
    func buy(_ ticket: Ticket) -> Double {
        if bag.hasInvitation {
            bag.setTicket(ticket)
            return 0
        } else {
            bag.setTicket(ticket)
            bag.minusAmount(ticket.fee)
            return ticket.fee
        }
    }
}
