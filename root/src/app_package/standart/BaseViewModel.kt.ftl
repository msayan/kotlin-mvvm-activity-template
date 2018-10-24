package ${packageName}

import android.app.Application
import <#if isAndroidX>androidx</#if><#if !isAndroidX>android.arch</#if>.lifecycle.AndroidViewModel
import ${applicationPackage}.App
import javax.inject.Inject

class ${activityClass}ViewModel(app: Application) : AndroidViewModel(app) {

    init {
        //(app as? App)?.component?.inject(this)
    }

}