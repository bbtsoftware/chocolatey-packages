This repo contains tools to help integrate Roslyn analyzers with SonarQube so that issues detected by the Roslyn analyzers are reported and managed in SonarQube.
Specifically, the tools will generate a Java SonarQube plugin that registers the rules with SonarQube. The generated plugin works with the [C# plugin](http://docs.sonarqube.org/x/bAAW) (v4.5 or higher) and the [SonarQube Scanner for MSBuild](http://docs.sonarqube.org/x/Lx9q) (v2.0 or higher) to handle executing the analyzer and uploading any issues.
See this [blog post](https://blogs.msdn.microsoft.com/visualstudioalm/2016/02/18/sonarqube-scanner-for-msbuild-v2-0-released-support-for-third-party-roslyn-analyzers/) for more information.

## Package Parameters

* `/InstallDir` - Override the installation directory (default C:\tools\SonarQubeRoslynSDK)
