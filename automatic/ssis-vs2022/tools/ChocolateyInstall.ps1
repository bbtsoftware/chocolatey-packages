$ErrorActionPreference = 'Stop';

Install-VisualStudioVsixExtension `
    -PackageName 'ssis-vs2022'
    -VsixUrl 'https://marketplace.visualstudio.com/_apis/public/gallery/publishers/SSIS/vsextensions/MicrosoftDataToolsIntegrationServices/1.3.2/vspackage'
    -Checksum 'bc6ccc273d7695d2fe2b42c4c0c16b3a59a3f6212807604a7f93ae5733527a49'
    -ChecksumType 'sha256'
