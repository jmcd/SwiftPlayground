/*:
### Errors and guard
*/
// define an error as an enum that implements the ErrorType protocol

enum DurationErrors: ErrorType {
	case TooShort
	case TooLong
}

// guard and throw

class AgendaItem {
	
	let name: String
	let owner: String
	let durationInMinutes: Int
	
	init(name: String, owner: String, durationInMinutes: Int=15) throws {
		self.name = name
		self.owner = owner
		
		guard durationInMinutes > 0 else {
			self.durationInMinutes = 0
			throw DurationErrors.TooShort
		}
		
		guard durationInMinutes <= 30 else {
			self.durationInMinutes = 0
			throw DurationErrors.TooLong
		}
		
		self.durationInMinutes = durationInMinutes
	}
	
	func longDescription() -> String {
		return "'\(name)', by \(owner), lasting for \(durationInMinutes)"
	}
}

// do and try

do {
	
	let ci = try AgendaItem(name: "Continuous Integration", owner: "gs")
	
	let sd = try AgendaItem(name: "Swift Demo", owner: "jmcd", durationInMinutes: 35)
	
} catch DurationErrors.TooLong {
	
	print("looks like someone is being boring")
}


// Another example


// dictionary of developer to language array

let langToDevArray = [
	"c#": ["jmcd", "gs", "po", "jl", "jh", "tg"],
	"java": ["jmcd", "jh"],
	"swift": ["jmcd"],
    "vb": ["po"]
];



func workWithADeveloperThatKnowsVB(devSkills: [String: [String]]) throws {
	
	guard let vbDev = langToDevArray["vb"] else {
		throw SkillsErrors.RequredSkillIsMissing("vb")
	}
	
	print("developers \(vbDev) know VB, so that's cool I guess")
}

enum SkillsErrors: ErrorType {
	case RequredSkillIsMissing(String)
}


do {
	try workWithADeveloperThatKnowsVB(langToDevArray)
} catch SkillsErrors.RequredSkillIsMissing(let skill) {
	print("you don't have anyone that knows \(skill)")
}
/*:
[Previous](@previous) | [Next](@next)
*/
