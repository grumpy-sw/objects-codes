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
        ticketSeller.sellTo(audience)
    }
}
