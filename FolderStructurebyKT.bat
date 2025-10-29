@echo off
setlocal enabledelayedexpansion

:: Ask for project name
set /p ProjectName="Enter the Project Name: "
set MainFolder=%ProjectName%

:: Create main folder
mkdir "%MainFolder%"

:: Create subfolders in main folder
for %%F in (
    "01_ProjectDocs"
    "02_Incoming"
    "03_Outgoing"
    "04_WIP"
    "05_QC"
    "06_ProjectMedia"
    "07_CaseStudy"
    "08_Team"
) do (
    mkdir "%MainFolder%\%%~F"
)

:: 01_ProjectDocs subfolders
for %%D in (
    "01_ScopeDocument"
    "02_KickoffDocument"
    "03_WBS"
    "04_ClientStandard"
    "05_ProgressReport"
    "06_MOM"
    "07_RFI&FYI"
    "08_ExtraWorkApproval"
    "09_ClientRating"
    "10_Timesheet"
) do (
    mkdir "%MainFolder%\01_ProjectDocs\%%~D"
)

:: 06_MOM subfolder
mkdir "%MainFolder%\01_ProjectDocs\06_MOM\01_Recordings"

:: 07_RFI&FYI subfolders
for %%R in (
    "01_RFI_ToClient"
    "02_RFI_FromClient"
    "03_FYI_ToClient"
) do (
    mkdir "%MainFolder%\01_ProjectDocs\07_RFI&FYI\%%~R"
)

:: 04_WIP subfolders
for %%W in (
    "01_Template"
    "02_WorkingFile"
    "03_LinkedFile"
    "04_ClashReport"
    "05_Family"
    "06_Backup"
) do (
    mkdir "%MainFolder%\04_WIP\%%~W"
)

:: 02_WorkingFile subfolders
for %%X in (
    "01_Revit"
    "02_Navis"
    "03_CAD"
) do (
    mkdir "%MainFolder%\04_WIP\02_WorkingFile\%%~X"
)

:: 03_LinkedFile subfolders
for %%L in (
    "01_PDF"
    "02_CAD"
    "03_Revit"
    "04_Image"
    "05_ScanFile"
) do (
    mkdir "%MainFolder%\04_WIP\03_LinkedFile\%%~L"
)

:: 05_Family subfolders
for %%F in (
    "01.Architecture"
    "02.Structure"
    "03.MEPF"
    "04.Annotation"
    "05.Title Block"
) do (
    mkdir "%MainFolder%\04_WIP\05_Family\%%~F"
)

:: 05_QC subfolders
for %%Q in (
    "01_Checklist"
    "02_Guideline"
    "03_QCReports"
    "04_COE-Observation"
    "05_ErrorLog"
) do (
    mkdir "%MainFolder%\05_QC\%%~Q"
)

echo Folder structure created successfully under "%MainFolder%"
pause
