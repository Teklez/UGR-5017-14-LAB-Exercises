fun main() {
    println("Enter the numeric grade (between 0 and 100): ")
    val input = readLine()
    
    if (input != null) {
        val grade = input.toIntOrNull()
        
        if (grade != null && grade in 0..100) {
            val letterGrade = when (grade) {
                in 90..100 -> "A"
                in 80..89 -> "B"
                in 70..79 -> "C"
                in 60..69 -> "D"
                else -> "F"
            }
            println("Letter grade: $letterGrade")
        } else {
            println("Invalid input. Please enter a numeric grade between 0 and 100.")
        }
    } else {
        println("No input provided.")
    }
}
