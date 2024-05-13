fun main() {
    println("Enter the first number:")
    val num1 = readLine()?.toDoubleOrNull() ?: run {
        println("Invalid input for the first number.")
        return
    }

    println("Enter the second number:")
    val num2 = readLine()?.toDoubleOrNull() ?: run {
        println("Invalid input for the second number.")
        return
    }

    println("Enter the operation (addition, subtraction, multiplication, division):")
    val operation = readLine()?.toLowerCase() ?: ""
    
    val result = when (operation) {
        "addition" -> num1 + num2
        "subtraction" -> num1 - num2
        "multiplication" -> num1 * num2
        "division" -> {
            if (num2 != 0.0) {
                num1 / num2
            } else {
                println("Cannot divide by zero.")
                return
            }
        }
        else -> {
            println("Invalid operation.")
            return
        }
    }

    println("Result of $operation: $result")
}
