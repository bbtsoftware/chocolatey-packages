$ErrorActionPreference = 'Stop';

Install-VisualStudioVsixExtension `
    -PackageName 'ssis-vs2022'
    -VsixUrl 'https://marketplace.visualstudio.com/_apis/public/gallery/publishers/SSIS/vsextensions/MicrosoftDataToolsIntegrationServices/1.3.2/vspackage'
    -Checksum '63F5DA2B6391E5326F76E6B0589EFE119AAD2D067D6B283D67C3E22CB0062FBE'
    -ChecksumType 'sha256'
