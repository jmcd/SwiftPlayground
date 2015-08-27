/*:
### Classes and strucs
*/
// struct and class very similar. struct is more lightweight, pass by ref, no inheritance

class AgendaItem {
	
	let name: String
	let owner: String
	let durationInMinutes: Int
    
    var runningOrder = 0
	
	init(name: String, owner: String, _ durationInMinutes: Int=15)  {
		self.name = name
		self.owner = owner
		self.durationInMinutes = durationInMinutes
        
	}
	
	func longDescription() -> String {
		return "'\(name)', by \(owner), lasting for \(durationInMinutes)"
	}
}


let ci = AgendaItem(name: "Continuous Integration", "gs")

ci.longDescription()
/*:
[Previous](@previous) | [Next](@next)
*/
