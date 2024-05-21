package procedural_counter 

import androidx.appcompat.app.AppCompatActivity
import android.os.Bundle
import android.widget.Button
import android.widget.TextView

class App : AppCompatActivity() {

    private lateinit var textView: TextView
    private lateinit var incrementButton: Button
    private lateinit var decrementButton: Button
    private lateinit var resetButton: Button

    private var count = 0

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreasavedInstanceState)
        setContentView(R.layout.app) 

        textView = findViewById(R.id.textView)
        incrementButton = findViewById(R.id.incrementButton)
        decrementButton = findViewById(R.id.decrementButton)
        resetButton = findViewById(R.id.resetButton)

        updateTextView()

        incrementButton.setOnClickListener {
            count++
            updateTextView()
        }

        decrementButton.setOnClickListener {
            count--
            updateTextView()
        }

        resetButton.setOnClickListener {
            count = 0
            updateTextView()
        }
    }

    private fun updateTextView() {
        textView.text = "Count: $count"
    }
}
