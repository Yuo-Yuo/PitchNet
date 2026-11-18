; Yuo Tune Windows installer
; Built from the Yuo Tune package produced by .github/workflows/build.yml.
#define MyAppName "Yuo Tune"
#ifndef AppVersion
  #define AppVersion "0.8.1"
#endif

[Setup]
AppId={{D76A4DF8-0F8B-4C3C-9C0D-6A6CFE3A3B21}
AppName={#MyAppName}
AppVersion={#AppVersion}
AppPublisher=Yuo Tune
AppPublisherURL=https://github.com/Yuo-Yuo/PitchNet
DefaultDirName={autopf}\Yuo Tune
DefaultGroupName=Yuo Tune
UninstallDisplayIcon={app}\Yuo Tune.exe
OutputDir=Output
OutputBaseFilename=Yuo-Tune-Setup
Compression=lzma2
SolidCompression=yes
WizardStyle=modern
PrivilegesRequired=admin
ArchitecturesAllowed=x64
ArchitecturesInstallIn64BitMode=x64
DisableProgramGroupPage=yes
LicenseFile=..\LICENSE

[Languages]
Name: "english"; MessagesFile: "compiler:Default.isl"
Name: "japanese"; MessagesFile: "compiler:Languages\Japanese.isl"

[Tasks]
Name: "desktopicon"; Description: "Create a desktop shortcut"; GroupDescription: "Additional shortcuts:"; Flags: unchecked

[Files]
Source: "..\package\*"; DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs
Source: "..\package\Yuo Tune.vst3"; DestDir: "{commoncf}\VST3"; Flags: ignoreversion

[Icons]
Name: "{autoprograms}\Yuo Tune"; Filename: "{app}\Yuo Tune.exe"
Name: "{autodesktop}\Yuo Tune"; Filename: "{app}\Yuo Tune.exe"; Tasks: desktopicon

[Run]
Filename: "{app}\Yuo Tune.exe"; Description: "Launch Yuo Tune"; Flags: postinstall nowait skipifsilent
