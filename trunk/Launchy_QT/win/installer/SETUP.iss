; Script generated by the Inno Setup Script Wizard.
; SEE THE DOCUMENTATION FOR DETAILS ON CREATING INNO SETUP SCRIPT FILES!

#define MyAppName      "Launchy"
#define MyAppVerName   "Launchy 2.7.2"
#define MyAppPublisher "OpenNingia"
#define MyAppURL       "http://openningia.github.com/Launchy/"
#define MyAppExeName   "Launchy.exe"
#define MyAppUrlName   "Launchy.url"

[Setup]
AppMutex=LaunchyMutex,Global\LaunchyMutex
AppName={#MyAppName}
AppVerName={#MyAppVerName}
AppPublisher={#MyAppPublisher}
AppPublisherURL={#MyAppURL}
AppSupportURL={#MyAppURL}
AppUpdatesURL={#MyAppURL}
DefaultDirName={code:DefaultInstallDirectory}\{#MyAppName}
DefaultGroupName={#MyAppName}
LicenseFile=..\..\license.txt
OutputDir=Release\
OutputBaseFilename=Launchy_Setup
SetupIconFile=..\Launchy.ico
Compression=lzma
SolidCompression=true
ShowLanguageDialog=yes
AppID=Launchy_21344213
CreateUninstallRegKey=not IsPortable
UninstallDisplayIcon={app}\{#MyAppExeName}
PrivilegesRequired=none
WizardSmallImageFile=header.bmp
AllowNoIcons=yes

[Languages]
Name: english; MessagesFile: compiler:Default.isl

[Tasks]
Name: desktopicon; Description: {cm:CreateDesktopIcon}; GroupDescription: {cm:AdditionalIcons}; Flags: unchecked; Check: not IsPortable
Name: quicklaunchicon; Description: {cm:CreateQuickLaunchIcon}; GroupDescription: {cm:AdditionalIcons}; Flags: unchecked; OnlyBelowVersion: 0, 6.1; Check: not IsPortable
Name: iconscurrentuser; Description: {cm:IconsCurrentUser}; GroupDescription: {cm:CreateIconsFor}; Flags: exclusive; Check: not IsRegularUser And not IsPortable
Name: iconscommon; Description: {cm:IconsAllUsers}; GroupDescription: {cm:CreateIconsFor}; Flags: exclusive unchecked; Check: not IsRegularUser And not IsPortable

[InstallDelete]
Type: filesandordirs; Name: {app}\skins\Black Glass
Type: filesandordirs; Name: {app}\skins\Default
Type: filesandordirs; Name: {app}\skins\Mercury
Type: filesandordirs; Name: {app}\skins\Note
Type: filesandordirs; Name: {app}\skins\Quicksilver2
Type: filesandordirs; Name: {app}\skins\Spotlight Wide
Type: filesandordirs; Name: {app}\platform_win.dll

[Files]
Source: ..\..\release\{#MyAppExeName}; DestDir: {app}; Flags: ignoreversion
Source: LaunchyPortable.ini; DestDir: {app}; DestName: Launchy.ini; Flags: onlyifdoesntexist; Check: IsPortable

; Redist
Source: ..\vcredist_x86_90_sp1.exe; DestDir: {app}\vcredist\; Flags: ignoreversion
Source: ..\vcredist_x86_90_sp1_su.exe; DestDir: {app}\vcredist\; Flags: ignoreversion

; Translations
Source: ..\..\translations\launchy_es.qm; DestDir: {app}\tr\; Flags: ignoreversion
Source: ..\..\translations\launchy_de.qm; DestDir: {app}\tr\; Flags: ignoreversion
Source: ..\..\translations\launchy_ja.qm; DestDir: {app}\tr\; Flags: ignoreversion
Source: ..\..\translations\launchy_zh.qm; DestDir: {app}\tr\; Flags: ignoreversion
Source: ..\..\translations\launchy_nl.qm; DestDir: {app}\tr\; Flags: ignoreversion
Source: ..\..\translations\launchy_rus.qm; DestDir: {app}\tr\; Flags: ignoreversion
Source: ..\..\translations\launchy_zh_TW.qm; DestDir: {app}\tr\; Flags: ignoreversion
Source: ..\..\translations\launchy_it_IT.qm; DestDir: {app}\tr\; Flags: ignoreversion

; Libs
; NOTE: Don't use "Flags: ignoreversion" on any shared system files
Source: ..\..\release\QtCore4.dll; DestDir: {app}; Flags: ignoreversion
Source: ..\..\release\QtGui4.dll; DestDir: {app}; Flags: ignoreversion
Source: ..\..\release\QtNetwork4.dll; DestDir: {app}; Flags: ignoreversion
Source: ..\..\release\imageformats\qmng4.dll; DestDir: {app}\imageformats; Flags: ignoreversion

; Plugins
; plugins may require all 3 runtimes
Source: ..\..\release\plugins\controly.dll; DestDir: {app}\plugins\; Flags: ignoreversion
Source: ..\..\release\plugins\weby.dll; DestDir: {app}\plugins\; Flags: ignoreversion

; Plugin icons
Source: ..\..\plugins\controly\controly.png; DestDir: {app}\plugins\icons\; Flags: ignoreversion
Source: ..\..\plugins\controly\launchy.exit.png; DestDir: {app}\plugins\icons\; Flags: ignoreversion
Source: ..\..\plugins\controly\launchy.options.png; DestDir: {app}\plugins\icons\; Flags: ignoreversion
Source: ..\..\plugins\controly\launchy.rebuild.png; DestDir: {app}\plugins\icons\; Flags: ignoreversion
Source: ..\..\plugins\weby\weby.png; DestDir: {app}\plugins\icons\; Flags: ignoreversion

; Documentation
Source: ..\..\license.txt; DestDir: {app}; Flags: ignoreversion

; Skins
Source: ..\..\skins\Mercury\frame.png; DestDir: {app}\skins\Mercury\; Flags: ignoreversion
Source: ..\..\skins\Mercury\author.txt; DestDir: {app}\skins\Mercury\; Flags: ignoreversion
Source: ..\..\skins\Mercury\style.qss; DestDir: {app}\skins\Mercury\; Flags: ignoreversion
Source: ..\..\skins\Mercury\scrollBack.png; DestDir: {app}\skins\Mercury\; Flags: ignoreversion
Source: ..\..\skins\Mercury\scrollDown.png; DestDir: {app}\skins\Mercury\; Flags: ignoreversion
Source: ..\..\skins\Mercury\scrollUp.png; DestDir: {app}\skins\Mercury\; Flags: ignoreversion
Source: ..\..\skins\Mercury\spinner.mng; DestDir: {app}\skins\Mercury\; Flags: ignoreversion

Source: ..\..\skins\Quicksilver2\frame.png; DestDir: {app}\skins\Quicksilver2\; Flags: ignoreversion
Source: ..\..\skins\Quicksilver2\author.txt; DestDir: {app}\skins\Quicksilver2\; Flags: ignoreversion
Source: ..\..\skins\Quicksilver2\style.qss; DestDir: {app}\skins\Quicksilver2\; Flags: ignoreversion
Source: ..\..\skins\Quicksilver2\background_nc.png; DestDir: {app}\skins\Quicksilver2\; Flags: ignoreversion
Source: ..\..\skins\Quicksilver2\mask_nc.png; DestDir: {app}\skins\Quicksilver2\; Flags: ignoreversion

Source: ..\..\skins\Note\frame.png; DestDir: {app}\skins\Note\; Flags: ignoreversion
Source: ..\..\skins\Note\author.txt; DestDir: {app}\skins\Note\; Flags: ignoreversion
Source: ..\..\skins\Note\style.qss; DestDir: {app}\skins\Note\; Flags: ignoreversion
Source: ..\..\skins\Note\scrollBack.png; DestDir: {app}\skins\Note\; Flags: ignoreversion
Source: ..\..\skins\Note\scrollDown.png; DestDir: {app}\skins\Note\; Flags: ignoreversion
Source: ..\..\skins\Note\scrollUp.png; DestDir: {app}\skins\Note\; Flags: ignoreversion

Source: ..\..\skins\Black_Glass\author.txt; DestDir: {app}\skins\Black Glass\; Flags: ignoreversion
Source: ..\..\skins\Black_Glass\frame.png; DestDir: {app}\skins\Black Glass\; Flags: ignoreversion
Source: ..\..\skins\Black_Glass\style.qss; DestDir: {app}\skins\Black Glass\; Flags: ignoreversion
Source: ..\..\skins\Black_Glass\scrollBack.png; DestDir: {app}\skins\Black Glass\; Flags: ignoreversion
Source: ..\..\skins\Black_Glass\scrollDown.png; DestDir: {app}\skins\Black Glass\; Flags: ignoreversion
Source: ..\..\skins\Black_Glass\scrollUp.png; DestDir: {app}\skins\Black Glass\; Flags: ignoreversion
Source: ..\..\skins\Black_Glass\spinner.mng; DestDir: {app}\skins\Black Glass\; Flags: ignoreversion

Source: ..\..\skins\Default\author.txt; DestDir: {app}\skins\Default\; Flags: ignoreversion
Source: ..\..\skins\Default\frame.png; DestDir: {app}\skins\Default\; Flags: ignoreversion
Source: ..\..\skins\Default\style.qss; DestDir: {app}\skins\Default\; Flags: ignoreversion
Source: ..\..\skins\Default\opsButton.png; DestDir: {app}\skins\Default\; Flags: ignoreversion
Source: ..\..\skins\Default\opsButtonPressed.png; DestDir: {app}\skins\Default\; Flags: ignoreversion
Source: ..\..\skins\Default\scrollBack.png; DestDir: {app}\skins\Default\; Flags: ignoreversion
Source: ..\..\skins\Default\scrollDown.png; DestDir: {app}\skins\Default\; Flags: ignoreversion
Source: ..\..\skins\Default\scrollUp.png; DestDir: {app}\skins\Default\; Flags: ignoreversion
Source: ..\..\skins\Default\spinner.mng; DestDir: {app}\skins\Default\; Flags: ignoreversion

Source: ..\..\skins\Spotlight_Wide\author.txt; DestDir: {app}\skins\Spotlight Wide\; Flags: ignoreversion
Source: ..\..\skins\Spotlight_Wide\frame.png; DestDir: {app}\skins\Spotlight Wide\; Flags: ignoreversion
Source: ..\..\skins\Spotlight_Wide\style.qss; DestDir: {app}\skins\Spotlight Wide\; Flags: ignoreversion
Source: ..\..\skins\Spotlight_Wide\opsButton.png; DestDir: {app}\skins\Spotlight Wide\; Flags: ignoreversion
Source: ..\..\skins\Spotlight_Wide\opsButtonPressed.png; DestDir: {app}\skins\Spotlight Wide\; Flags: ignoreversion
Source: ..\..\skins\Spotlight_Wide\scrollBack.png; DestDir: {app}\skins\Spotlight Wide\; Flags: ignoreversion
Source: ..\..\skins\Spotlight_Wide\scrollDown.png; DestDir: {app}\skins\Spotlight Wide\; Flags: ignoreversion
Source: ..\..\skins\Spotlight_Wide\scrollUp.png; DestDir: {app}\skins\Spotlight Wide\; Flags: ignoreversion
Source: ..\..\skins\Spotlight_Wide\spinner.mng; DestDir: {app}\skins\Spotlight Wide\; Flags: ignoreversion
Source: ..\..\skins\Spotlight_Wide\background_nc.png; DestDir: {app}\skins\Spotlight Wide\; Flags: ignoreversion
Source: ..\..\skins\Spotlight_Wide\mask_nc.png; DestDir: {app}\skins\Spotlight Wide\; Flags: ignoreversion

Source: ..\Utilities\Special Folders\C Drive.lnk; DestDir: {app}\Utilities\Special Folders\; Flags: ignoreversion
Source: ..\Utilities\Special Folders\Control Panel.lnk; DestDir: {app}\Utilities\Special Folders\; Flags: ignoreversion
Source: ..\Utilities\Special Folders\My Computer.lnk; DestDir: {app}\Utilities\Special Folders\; Flags: ignoreversion
Source: ..\Utilities\Special Folders\My Documents.lnk; DestDir: {app}\Utilities\Special Folders\; Flags: ignoreversion
Source: ..\Utilities\Special Folders\My Music.lnk; DestDir: {app}\Utilities\Special Folders\; Flags: ignoreversion
Source: ..\Utilities\Special Folders\My Network Places.lnk; DestDir: {app}\Utilities\Special Folders\; Flags: ignoreversion
Source: ..\Utilities\Special Folders\My Pictures.lnk; DestDir: {app}\Utilities\Special Folders\; Flags: ignoreversion
Source: ..\Utilities\Special Folders\Recycle Bin.lnk; DestDir: {app}\Utilities\Special Folders\; Flags: ignoreversion
Source: ..\Utilities\System Power\System Logoff.lnk; DestDir: {app}\Utilities\System Power\; Flags: ignoreversion
Source: ..\Utilities\System Power\System Reboot.lnk; DestDir: {app}\Utilities\System Power\; Flags: ignoreversion
Source: ..\Utilities\System Power\System Shutdown.lnk; DestDir: {app}\Utilities\System Power\; Flags: ignoreversion
Source: ..\Utilities\System Power\System Hibernate.lnk; DestDir: {app}\Utilities\System Power\; Flags: ignoreversion

[INI]
Filename: {app}\{#MyAppUrlName}; Section: InternetShortcut; Key: URL; String: {#MyAppURL}

[Icons]
Name: {code:UserOrCommonDirectory|programs}\{groupname}\{#MyAppName}; Filename: {app}\{#MyAppExeName}; WorkingDir: {app}; Parameters: /show
Name: {code:UserOrCommonDirectory|programs}\{groupname}\{cm:ProgramOnTheWeb,{#MyAppName}}; Filename: {app}\{#MyAppUrlName}
Name: {code:UserOrCommonDirectory|programs}\{groupname}\{cm:UninstallProgram,{#MyAppName}}; Filename: {uninstallexe}
Name: {code:UserOrCommonDirectory|startup}\{#MyAppName}; Filename: {app}\{#MyAppExeName}; WorkingDir: {app}
Name: {code:UserOrCommonDirectory|programs}\{groupname}\Launchy Rescue Mode; Filename: {app}\{#MyAppExeName}; WorkingDir: {app}; Parameters: /rescue

Name: {userdesktop}\{#MyAppName}; Filename: {app}\{#MyAppExeName}; Parameters: /show; WorkingDir: {app}; Tasks: desktopicon
Name: {userappdata}\Microsoft\Internet Explorer\Quick Launch\{#MyAppName}; Parameters: /show; Filename: {app}\{#MyAppExeName}; WorkingDir: {app}; Tasks: quicklaunchicon

[Run]
Filename: {app}\vcredist\vcredist_x86_90_sp1.exe; Parameters: "/q:a /c:""VCREDI~3.EXE /q:a /c:""""msiexec /i vcredist.msi /qn"""" """;
Filename: {app}\vcredist\vcredist_x86_90_sp1_su.exe; Parameters: "/q:a /c:""VCREDI~3.EXE /q:a /c:""""msiexec /i vcredist.msi /qn"""" """;
Filename: {app}\{#MyAppExeName}; Parameters: /show; Description: {cm:LaunchProgram,{#MyAppName}}; Flags: nowait postinstall skipifsilent runasoriginaluser

[UninstallDelete]
Type: files; Name: {app}\{#MyAppUrlName}

[CustomMessages]
CreateIconsFor=Create start menu and desktop icons for:
IconsCurrentUser=The current user only
IconsAllUsers=All users

[Code]
var
  PortablePage: TInputOptionWizardPage;

function IsRegularUser(): Boolean;
begin
  Result := not (IsAdminLoggedOn or IsPowerUserLoggedOn);
end;

function IsPortable(): Boolean;
begin
  if PortablePage = nil then
    Result := false
  else
    Result := PortablePage.Values[1];
end;

function DefaultInstallDirectory(Param: String): String;
begin
  if IsPortable then
    Result := ExpandConstant('{drive:{srcexe}}')
  else if IsRegularUser then
    Result := ExpandConstant('{localappdata}')
  else
    Result := ExpandConstant('{pf}');
  Result := Result + '\{#MyAppName}';
end;

function UserOrCommonDirectory(Param: String): String;
begin
  if IsTaskSelected('iconscommon') then
    Result := ExpandConstant('{common' + Param + '}')
  else
    Result := ExpandConstant('{user' + Param + '}')
end;

procedure InitializeWizard;
begin
  PortablePage := CreateInputOptionPage(wpLicense,
    'Installation Type', 'How should Launchy be installed?',
    'Launchy can run as an installed application or in portable mode. Please select your preferred mode',
    True, False);
  PortablePage.Add('Normal');
  PortablePage.Add('Portable');
  PortablePage.Values[0] := True;
end;

function NextButtonClick(CurPageID: Integer): Boolean;
begin
  if (CurPageID = PortablePage.ID) then
  begin
    WizardForm.DirEdit.Text := DefaultInstallDirectory('');
    WizardForm.NoIconsCheck.Checked := IsPortable;
  end;
  Result := true;
end;

function ShouldSkipPage(PageID: Integer): Boolean;
begin
  if (PageID = wpSelectProgramGroup) and IsPortable then
  begin
      WizardForm.NoIconsCheck.Checked := true;
      Result := true;
  end;
end;

