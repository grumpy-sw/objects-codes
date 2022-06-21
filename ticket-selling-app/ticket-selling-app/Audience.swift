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
        return bag.hold(ticket)
    }
}
