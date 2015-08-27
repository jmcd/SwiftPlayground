/*:
### Enums
*/
// simple case, like c#, extends Int

enum MeetingRoom {
	case Fitzroy
	case Fastnet
	case Rockall
}

let mr = MeetingRoom.Fastnet

// enums can extend other types

enum ComputerKind: String {
	
	case Embedded = "Embedded"
	case Desktop = "Desktop"
	case Notebook = "Laptop"
	case Mainframe = "Mainframe"
}

ComputerKind.Notebook.rawValue

// enums can have methods (yay!)

enum Beverages {
	
	case Coffee
	case Tea
	case Cola
	
	func describe() -> String {
		switch self {
		case .Coffee:
			return "made from beans"
		case.Tea:
			return "made from leaves"
		default:
			return "¯\\_(ツ)_/¯"
		}
	}
}

Beverages.Cola.describe()


// associated values and fancy switches :D

enum Characteristics {

	case Dimensions(Double, Double)
	case FavoriteColor(String)
	case WearsGlasses(Bool)
}

let someonesCharacteristics = [
	Characteristics.Dimensions(0.5, 1.74),
	Characteristics.FavoriteColor("Cyan"),
	Characteristics.WearsGlasses(false)
]


for characteristic in someonesCharacteristics {
	
    // switch and match on enum value and assocaited values
	switch characteristic {
		
	case let .Dimensions(_, height):
		print("This person is \(height) metres tall")
		
	case let .FavoriteColor(fc):
		print("Their favourite colour is \(fc)")
		
	case .WearsGlasses(true):
		print("They wear glasses");
		
	case .WearsGlasses(false):
		print("They don't wear glasses");
		
	}
}

/*:
[Previous](@previous) | [Next](@next)
*/
