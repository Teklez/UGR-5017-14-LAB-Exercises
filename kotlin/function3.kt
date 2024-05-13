fun applyUppercaseTransformation(strings: List<String>): List<String> {
    return strings.map { it.toUpperCase() }
}

fun filterNumbersGreaterThanValue(numbers: List<Int>, threshold: Int): List<Int> {
    return numbers.filter { it > threshold }
}

fun calculateSum(numbers: List<Int>): Int {
    return numbers.reduce { acc, num -> acc + num }
}

fun main() {
    val strings = listOf("hello", "world", "kotlin")
    val uppercaseStrings = applyUppercaseTransformation(strings)
    println("Uppercase strings: $uppercaseStrings")
    
    val numbers = listOf(1, 5, 10, 15, 20)
    val filteredNumbers = filterNumbersGreaterThanValue(numbers, 10)
    println("Numbers greater than 10: $filteredNumbers")
    
    val sum = calculateSum(numbers)
    println("Sum of numbers: $sum")
}
