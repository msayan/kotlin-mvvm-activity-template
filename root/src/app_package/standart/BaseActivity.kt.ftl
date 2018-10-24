package ${packageName}

import <#if isAndroidX>androidx</#if><#if !isAndroidX>android.arch</#if>.lifecycle.ViewModelProviders
import android.databinding.DataBindingUtil
import android.os.Bundle
import ${applicationPackage}.R
import androidx<#if isAndroidX>androidx.appcompat</#if><#if !isAndroidX>android.support.v7</#if>.app.AppCompatActivity
import ${applicationPackage}.databinding.Activity${activityClass?replace("Activity", "")}Binding

class ${activityClass} : AppCompatActivity() {

    val binding by lazy {
        DataBindingUtil.setContentView(this, R.layout.${layoutName}) as Activity${activityClass?replace("Activity", "")}Binding
    }

    val viewModel by lazy {
        ViewModelProviders.of(this).get(${activityClass}ViewModel::class.java)
    }

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)

        binding.viewModel = viewModel

    }
}