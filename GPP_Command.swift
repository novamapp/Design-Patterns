import Foundation

//MARK: - COMMAND
/*
 Command Pattern: turning method calls into objects
    - example: callbacks, closure
 */

// Sample Scenario: function that takes input and triggers action


enum Action {
    case X_PRESSED
    case Y_PRESSED
    case Z_PRESSED
}

// This implementation tightly couples input => action triggered
func onUser(input: Action) {
    switch input {
    case .X_PRESSED: print("add")
    case .Y_PRESSED: print("subtract")
    case .Z_PRESSED: print("multiply")
    }
}

// --- Revised with Command Pattern --- //

// base that represents triggerable command:
protocol Operation {
    func execute (_ a: Int, _ b: Int) -> Int
}

// implement each of the different actions
class Add: Operation {
    func execute(_ a: Int, _ b: Int) -> Int {
        return a + b
    }
}

class Subtract: Operation {
    func execute(_ a: Int, _ b: Int) -> Int {
        return a - b
    }
}

class Multiply: Operation {
    func execute(_ a: Int, _ b: Int) -> Int {
        return a * b
    }
}

// The input handler should only be concerned with the input options and not the implementation of the action input option
// Therefore each input option will be a variable of type Operation; the code of an operation is defined in an implementation of the Operation protocol
class InputHandler {
    private var buttonX: Operation = Add()
    private var buttonY: Operation = Subtract()
    private var buttonZ: Operation = Multiply()
    
    func handle(input: Action, _ a: Int, _ b: Int) -> Int {
        switch(input) {
        case .X_PRESSED: return buttonX.execute(a,b)
        case .Y_PRESSED: return buttonY.execute(a,b)
        case .Z_PRESSED: return buttonZ.execute(a,b)
        }
    }
}

// Execution
let a = 5, b = 10
let handler = InputHandler()
let output = handler.handle(input: .Z_PRESSED, a, b)
print("\(a) * \(b) = \(output)")
