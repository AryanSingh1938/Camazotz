package com.example.myapp

import android.content.Intent
import android.media.MediaPlayer
import android.os.Bundle
import android.provider.MediaStore
import androidx.activity.enableEdgeToEdge
import androidx.appcompat.app.AppCompatActivity
import androidx.core.view.ViewCompat
import androidx.core.view.WindowInsetsCompat
import com.bumptech.glide.Glide
import com.example.myapp.databinding.ActivityMainBinding
import com.example.myapp.databinding.ActivitySplashBinding

class SplashActivity : AppCompatActivity() {
    private lateinit var binding: ActivitySplashBinding
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        binding = ActivitySplashBinding.inflate(layoutInflater)
        setContentView(binding.root)
        Glide.with(this@SplashActivity)
            .asGif()
            .load(R.drawable.loginnnn)
            .into(binding.yewwhkuhiduhdq)

        val mediaPlayer = MediaPlayer.create(this, R.raw.dance)
        mediaPlayer.start()

    }
}