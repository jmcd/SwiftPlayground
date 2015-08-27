/*:
### Collections
*/

// Arrays
var devs = ["jmcd", "gs", "po", "jl", "jh", "tg", "ns", "kb", "at", "vg", "sl", "db", "tt"]


// 10 arrays of arrays of two integers, both initialized to 1
let coords = [[Int]](count: 10, repeatedValue: [1, 1])


// Dictionary
let devToScreenCount = [
	"jmcd": 2,
	"po": 3,
	"jl": 3,
	"jh": 3,
	"tg": 2
]

devToScreenCount["po"]

// enumerate the kvp with a tuple pattern
for (_, screenCount) in devToScreenCount {
	
	print(screenCount)
}


// Set

var uniqueScreenCount = Set(devToScreenCount.values)


// Map

var DEVS = devs.map{$0.uppercaseString}

print(DEVS)


// Reduce

let totalNumberOfScreens = devToScreenCount.values.reduce(0, combine: +)
print(totalNumberOfScreens)

/*:
[Previous](@previous) | [Next](@next)
*/
