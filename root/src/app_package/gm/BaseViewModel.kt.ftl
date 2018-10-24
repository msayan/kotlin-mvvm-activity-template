package ${packageName}

import android.app.Application
import ${applicationPackage}.App
import ${applicationPackage}.core.BaseViewModel
import javax.inject.Inject

class ${activityClass}ViewModel(app: Application) : BaseViewModel(app) {

    init {
        //(app as? App)?.component?.inject(this)
    }

}