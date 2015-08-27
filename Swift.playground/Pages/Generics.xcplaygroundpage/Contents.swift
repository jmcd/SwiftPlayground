/*:
### Generics
*/
// mosly like you'd expect, but more like Java than c#

func arrayByRemovingDuplicates<T: Equatable>(inputArray: [T]) -> [T] {

	var result = [T]()
	
	for x in inputArray {
		if !result.contains(x) {
			result.append(x)
		}
	}
	
	return result
}
/*:
[Previous](@previous)
*/
