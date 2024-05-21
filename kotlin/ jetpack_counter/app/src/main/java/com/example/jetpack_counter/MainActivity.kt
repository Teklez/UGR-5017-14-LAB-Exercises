import androidx.compose.foundation.layout.*
import androidx.compose.foundation.text.BasicTextField
import androidx.compose.material.*
import androidx.compose.runtime.*
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.text.input.TextFieldValue
import androidx.compose.ui.tooling.preview.Preview
import androidx.compose.ui.unit.dp
import androidx.compose.ui.unit.sp

@Composable
fun CounterApp() {
    var counter by remember { mutableStateOf(0) }

    Surface(color = MaterialTheme.colors.background) {
        Column(
                modifier = Modifier
                        .fillMaxSize()
                        .padding(16.dp),
                verticalArrangement = Arrangement.Center,
                horizontalAlignment = Alignment.CenterHorizontally
        ) {
            Text(
                    text = "Counter: $counter",
                    fontSize = 24.sp,
                    modifier = Modifier.padding(bottom = 16.dp)
            )

            Row(
                    horizontalArrangement = Arrangement.Center,
                    modifier = Modifier.fillMaxWidth(),
                    verticalAlignment = Alignment.CenterVertically
            ) {
                IconButton(onClick = { counter++ }) {
                    Icon(
                            imageVector = Icons.Default.Add,
                            contentDescription = "Increment"
                    )
                }
                Spacer(modifier = Modifier.width(16.dp))
                IconButton(onClick = { counter-- }) {
                    Icon(
                            imageVector = Icons.Default.Remove,
                            contentDescription = "Decrement"
                    )
                }
                Spacer(modifier = Modifier.width(16.dp))
                IconButton(onClick = { counter = 0 }) {
                    Icon(
                            imageVector = Icons.Default.Refresh,
                            contentDescription = "Reset"
                    )
                }
            }
        }
    }
}

@Preview(showBackground = true)
@Composable
fun PreviewCounterApp() {
    CounterApp()
}
