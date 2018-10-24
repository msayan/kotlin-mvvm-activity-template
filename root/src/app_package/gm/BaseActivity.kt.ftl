package ${packageName}

import ${applicationPackage}.R
import ${applicationPackage}.core.BaseActivity
import ${applicationPackage}.databinding.Activity${activityClass?replace("Activity", "")}Binding

class ${activityClass} : BaseActivity<${activityClass}ViewModel, Activity${activityClass?replace("Activity", "")}Binding>(${activityClass}ViewModel::class.java) {

    override fun initViewModel(viewModel: ${activityClass}ViewModel) {
        binding.viewModel = viewModel
    }

    override fun getLayoutRes() = R.layout.${layoutName}
}