/*:
### Optionals
*/
// if the type is not optional, it can't be nil (null)

var agendaItemName: String?

agendaItemName = "A short demo of some Swift"

//agendaItemName = nil

let numberOfChars: Int = agendaItemName!.characters.count

print(numberOfChars)

/*:
[Previous](@previous) | [Next](@next)
*/
