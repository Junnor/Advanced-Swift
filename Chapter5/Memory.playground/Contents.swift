

import UIKit

class View {
    var window: Window
    
    init(window: Window) {
        self.window = window
    }
    
    deinit {
        print("deinit view")
    }
}

class Window {
    weak var rootView: View?
    
    deinit {
        print("deinit window")
    }
    
    var onRotate: (() -> ())?
}

var dswindow: Window? = Window()
var dsview: View? = View(window: dswindow!)
dswindow?.rootView = dsview

dswindow?.onRotate = { [weak dsview] in
    print("We now also need update the view: \(dsview)")
}

print(dswindow?.onRotate)



dsview = nil
dswindow = nil


// ------------------------------------------------

/*

typealias USDCents = Int

// not thread safe
class Account {
    var funds: USDCents = 0
    
    init(funds: USDCents) {
        self.funds = funds
    }
}

extension Account {
    
    func transfer(funds: USDCents, source: Account, destination: Account) -> Bool {
        guard source.funds >= funds else {
            return false
        }
        
        source.funds -= funds
        destination.funds += funds
        
        return true
    }
}




struct Account {
    var funds: USDCents
    
    func transfer(funds: USDCents, source: inout Account, destination: inout Account) -> Bool {
        guard source.funds >= funds else {
            return false
        }
        
        source.funds -= funds
        destination.funds += funds
        
        return true
    }
}

var bob = Account(funds: 100)
var william = Account(funds: 0)

bob.funds
william.funds

let result = bob.transfer(funds: 30, source: &bob, destination: &william)



bob.funds
william.funds


 */





