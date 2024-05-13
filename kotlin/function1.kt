fun analyzeString(input: String): Triple<Int, Int, Int> {
    val words = input.split("\\s+".toRegex()).filter { it.isNotBlank() }
    val upperCaseCount = input.count { it.isUpperCase() }
    val vowelsCount = input.count { it.toLowerCase() in "aeiou" }

    return Triple(words.size, upperCaseCount, vowelsCount)
}

fun main() {
    println("Enter a string:")
    val inputString = readLine() ?: ""
    
    val (wordCount, upperCaseCount, vowelsCount) = analyzeString(inputString)
    
    println("Number of words: $wordCount")
    println("Number of uppercase letters: $upperCaseCount")
    println("Number of vowels: $vowelsCount")
}
