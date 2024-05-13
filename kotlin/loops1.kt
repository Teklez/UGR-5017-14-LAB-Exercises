fun main() {
    println("Enter a string:")
    val inputString = readLine() ?: ""

    if (inputString.isNotEmpty()) {
        var minChar = inputString[0]
        var maxChar = inputString[0]

        for (char in inputString) {
            if (char < minChar) {
                minChar = char
            }
            if (char > maxChar) {
                maxChar = char
            }
        }

        println("Minimum character: $minChar (ASCII: ${minChar.toInt()})")
        println("Maximum character: $maxChar (ASCII: ${maxChar.toInt()})")
    } else {
        println("Empty string provided.")
    }
}
