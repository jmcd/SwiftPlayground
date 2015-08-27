/*:
### Closures
*/
// class representing a developer

class Dev {
	
	let name: String
	let favPizza: String
	
	init(name: String, favPizza: String) {
		self.name = name
		self.favPizza = favPizza
	}
	
	// function accepts a closure (AKA callback/completion)
	
	func decideOnPizzaForMeeting(onceDecided: (pizza: String) -> ()) {
		
		// IRL some long running pizza deciding procces in another thread
		onceDecided(pizza: self.favPizza);
		
	}
}

// all devs like cheese and tomato pizza I guess, init them up by mapping an array

let devNames = ["jmcd", "gs", "po", "jl", "jh", "tg", "ns", "kb", "at", "vg", "sl", "db", "tt"]

let devs = devNames.map({Dev(name: $0, favPizza: "cheese and tomato")})


// a registry of pizza choice

var pizzaChoices = [String: Int]()

func registerPizzaChoice(pizza: String) {
	if let count = pizzaChoices[pizza] {
		pizzaChoices[pizza] = count + 1
		return
	}
	pizzaChoices[pizza] = 1
}


// ask each dev what pizza they want, pass the registerPizzaChoice as a closure

for dev in devs {
	
	// the full syntax
	
	dev.decideOnPizzaForMeeting({ (pizza: String) in
		registerPizzaChoice(pizza)
	})
	
	// OR syntax that infers param type and uses param names %0, $1 ... $n
	
	dev.decideOnPizzaForMeeting({
		registerPizzaChoice($0)
	})
	
	// OR same as previous, but with "trailing closure" syntax
	
	dev.decideOnPizzaForMeeting {
		registerPizzaChoice($0)
	}
	
	// OR just use the function name directly
	
	dev.decideOnPizzaForMeeting(registerPizzaChoice)

}

print(pizzaChoices)

/*:
[Previous](@previous) | [Next](@next)
*/
