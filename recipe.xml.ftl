<?xml version="1.0"?>
<recipe>
    <#include "../common/recipe_manifest.xml.ftl" />
    <instantiate from="simple_layout.xml.ftl"
                   to="${escapeXmlAttribute(resOut)}/layout/${layoutName}.xml" />
				   
<#assign packagePath = "${packageName}">
<#assign packagePath = packagePath?replace('.','/')>

    <instantiate from="root/src/app_package/<#if isGM>gm</#if><#if !isGM>standart</#if>/BaseActivity.kt.ftl"
                   to="${escapeXmlAttribute(manifestOut)}/java/${packagePath}/${activityClass}.kt" />
			   
    <instantiate from="root/src/app_package/<#if isGM>gm</#if><#if !isGM>standart</#if>/BaseViewModel.kt.ftl"
                   to="${escapeXmlAttribute(manifestOut)}/java/${packagePath}/${activityClass}ViewModel.kt" />
 						   
    <open file="${escapeXmlAttribute(manifestOut)}/java/${packagePath}/${activityClass}.kt" />
	
	
</recipe>
