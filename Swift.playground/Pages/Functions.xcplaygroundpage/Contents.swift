/*:
### Functions
*/
// simple func

func exclaim(s: String) -> String {
	return s + "!"
}

exclaim("a short demo of some Swift")


// another func with the same signature

func shout(s: String) -> String {
	return s.uppercaseString
}

shout("a short demo of some Swift")


// functions are first class, and can be assigned to variables

let foo = shout


var someStringFunc = shout

someStringFunc("a short demo of some Swift")

someStringFunc = exclaim

someStringFunc("a short demo of some Swift")


var combo = [
	exclaim,
	shout
	].reduce({$0}, combine: {(fx, fn) in return {fn(fx($0))}})

combo("a short demo of some Swift")
/*:
[Previous](@previous) | [Next](@next)
*/
