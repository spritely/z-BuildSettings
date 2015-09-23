param($installPath, $toolsPath, $package, $project)

# There is no equivalent uninstall because NuGet does not support it: http://nuget.codeplex.com/workitem/2074

$sourceRootPath = (get-item $installPath).parent.parent.FullName
new-item -itemtype directory -force -path "$sourceRootPath\.build\" | out-null

copy-item "$installPath\CodeAnalysis.ProjectExtension.BeforeCommon.targets" "$sourceRootPath\.build\CodeAnalysis.ProjectExtension.BeforeCommon.targets" -force
copy-item "$installPath\CodeAnalysisDictionary.xml" "$destinationPath\.build\CodeAnalysisDictionary.xml" -force
copy-item "$installPath\Spritely.ruleset" "$destinationPath\.build\Spritely.ruleset" -force
copy-item "$installPath\SpritelyTest.ruleset" "$destinationPath\.build\SpritelyTest.ruleset" -force
