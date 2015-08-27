/*:
### More functions
*/

// eternal param name and default value

func exclaim(s: String, withNumberOfExlamations exclaimCount: Int = 1) -> String {
	
	var result = s;
	for var i = 0; i < exclaimCount; i++ {
		result += "!"
	}
	
	return result
}


exclaim("A short demo of some Swift")
exclaim("A short demo of some Swift", withNumberOfExlamations:3)
/*:
[Previous](@previous) | [Next](@next)
*/
