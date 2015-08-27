/*:
### Tuples
*/
// sort of like tuples and anonymous types in c#

func firstNameAndLastNameFromName(name: String) -> (fname: String, String) {
	
	let chars = name.characters
	
	if let index = chars.indexOf(" ") {
		
		return (String(chars.prefixUpTo(index)), String(chars.suffixFrom(index)))
		
	}
	
	return (name, "")
}


let names = firstNameAndLastNameFromName("John McDowall")
names.fname
/*:
[Previous](@previous) | [Next](@next)
*/
