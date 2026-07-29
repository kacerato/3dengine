package com.mobilegamestudio.app

import android.app.Application

class MobileGameStudioApplication : Application() {
    val container: AppContainer by lazy(LazyThreadSafetyMode.SYNCHRONIZED) {
        AppContainer(this)
    }
}

