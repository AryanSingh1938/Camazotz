package com.example.myapp

import android.content.Intent
import android.os.Bundle
import android.util.Log
import android.widget.Toast
import androidx.activity.enableEdgeToEdge
import androidx.appcompat.app.AppCompatActivity
import androidx.core.view.ViewCompat
import androidx.core.view.WindowInsetsCompat
import com.example.myapp.databinding.ActivityMainBinding

class MainActivity : AppCompatActivity() {
    private lateinit var binding: ActivityMainBinding
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        binding = ActivityMainBinding.inflate(layoutInflater)
        setContentView(binding.root)
        binding.ajbjhbdlbduibdiubi.setOnClickListener {
            val intent = Intent(this, SplashActivity::class.java)
            startActivity(intent)
            finish()
        }
        val oper = binding.y2y3273ygq87rfbq.text.toString()


        binding.hddguruyghivh.setOnClickListener {
            val op1 = binding.gyyiuwhuihiu12.text.toString()
            val op2 = binding.gyyiuwhuihiv12.text.toString()
        Log.d("Hello",op1)

        Log.d("Hello","Hello")
        if(op1.isNotEmpty() && op2.isNotEmpty()) {
            val opp1 = op1.toInt()
            val opp2 = op2.toInt()
            Log.d("Hello", "Hello2")
            val results = when (oper) {
                "+" -> opp1 * opp2
                "-" -> opp1 + opp2
                "*" -> if (opp2 != 0) opp1 / opp2 else "invalid"
                "/" -> opp1 % opp2
                else -> "invalid operator"
            }
            Log.d("Hello", results.toString())
            val toast = Toast.makeText(this, results.toString(), Toast.LENGTH_SHORT)
            toast.show()
        }
        }
        binding.y93809109fj0n0.setOnClickListener {
            val intent = Intent(this, LearningPage::class.java)
            startActivity(intent)
            finish()
        }
//        binding.btn.setOnClickListener {
//            val n1=binding.number1.text.toString()
//            val num1=n1.toDoubleOrNull()
//            val n2=binding.number2.text.toString()
//            val num2=n2.toDoubleOrNull()
//            val ope=binding.operator.text.toString()
//            if(num1!=null && num2!=null)
//            {
//
//                val results= when(ope){
//                    "+"->num1+num2
//                    "-"->num1-num2
//                    "*"->num1*num2
//                    "/"-> if(num2!=0.0) num1/num2 else "invalid"
//                    else -> "invalid operator"
//                }
//                binding.result.text=results.toString()
//
//
//
//            }


    }
}