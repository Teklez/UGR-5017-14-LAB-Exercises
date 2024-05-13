fun main() {
    val passwordLength = 8 
    val password = generateRandomPassword(passwordLength)
    println("Generated Password: $password")
}

fun generateRandomPassword(length: Int): String {
    val charPool = ('a'..'z') + ('A'..'Z') + ('0'..'9') + listOf('!', '@', '#', '$', '%', '^', '&', '*', '?')
    return (1..length)
        .map { kotlin.random.Random.nextInt(0, charPool.size) }
        .map(charPool::get)
        .joinToString("")
}
