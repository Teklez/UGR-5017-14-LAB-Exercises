fun findMax(numbers: List<Int>): Int? {
    if (numbers.isEmpty()) return null
    var max = numbers[0]
    for (num in numbers) {
        if (num > max) {
            max = num
        }
    }
    return max
}


fun filterEvenNumbers(numbers: List<Int>): List<Int> {
    return numbers.filter { it % 2 == 0 }
}

fun calculateAverage(numbers: List<Double>): Double? {
    if (numbers.isEmpty()) return null
    var sum = 0.0
    for (num in numbers) {
        sum += num
    }
    return sum / numbers.size
}

fun main() {
    val numbers = listOf(1, 2, 3, 4, 5, 6, 7, 8, 9, 10)
    
    val maxNumber = findMax(numbers)
    println("Maximum number: $maxNumber")
    
    val evenNumbers = filterEvenNumbers(numbers)
    println("Even numbers: $evenNumbers")
    
    val average = calculateAverage(numbers.map { it.toDouble() })
    println("Average: $average")
}
