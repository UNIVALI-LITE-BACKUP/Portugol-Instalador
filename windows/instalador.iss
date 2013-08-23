; Script generated by the Inno Setup Script Wizard.
; SEE THE DOCUMENTATION FOR DETAILS ON CREATING INNO SETUP SCRIPT FILES!

[Setup]
OutputDir=dist
OutputBaseFilename=ps_setup
VersionInfoVersion=2.0
VersionInfoCompany=UNIVALI - Universidade do Vale do Itaja�
VersionInfoDescription=Ambiente de Desenvolvimento Integrado para a linguagem Portugol 2.0
VersionInfoProductName=Portugol Studio
VersionInfoProductVersion=2.0
AppName=Portugol Studio
AppVerName=Portugol Studio 2.0
AllowCancelDuringInstall=false
DefaultDirName={pf}\UNIVALI\Portugol Studio
ShowLanguageDialog=no
VersionInfoTextVersion=
InternalCompressLevel=ultra64
Compression=lzma/ultra64
AppCopyright=UNIVALI - Universidade do Vale do Itaja�. Todos os direitos reservados
AppID={{EEF28793-B766-42EE-9534-B875AE2660C5}
SignedUninstaller=false
AllowNoIcons=true
DefaultGroupName=UNIVALI\Portugol Studio
ChangesAssociations=true
LicenseFile=..\arquivos\licenca.txt
UninstallDisplayIcon={app}\icone.ico

[LangOptions]
LanguageName=Portuguese
LanguageID=$0416
[Languages]
Name: Portugues; MessagesFile: compiler:Languages\BrazilianPortuguese.isl
[Files]
Source: ..\arquivos\bin\*; DestDir: {app}; Flags: recursesubdirs
Source: temp\*; DestDir: {app}
Source: ..\arquivos\icones\icone.ico; DestDir: {app}
Source: ..\arquivos\ajuda\*; DestDir: {app}\ajuda; Flags: recursesubdirs
Source: ..\arquivos\exemplos\*; DestDir: {app}\exemplos; Flags: recursesubdirs
Source: ..\Arquivos\configuracoes.properties; DestDir: {userdocs}\..\.portugol
[Icons]
Name: {group}\Portugol Studio; Filename: {app}\portugol-studio.exe; WorkingDir: {app}; IconFilename: {app}\icone.ico; IconIndex: 0; Comment: Executar o Portugol Studio; Languages: 
Name: {group}\Remover; Filename: {app}\unins000.exe; Comment: Remover o Portugol Studio do computador
Name: {commondesktop}\Portugol Studio; Filename: {app}\portugol-studio.exe; WorkingDir: {app}; IconFilename: {app}\icone.ico; Comment: Executar o Portugol Studio; IconIndex: 0
Name: {group}\Portugol Studio (modo de depura��o); Filename: {app}\portugol-studio.exe; WorkingDir: {app}; IconFilename: {app}\icone.ico; IconIndex: 0; Comment: Executar o Portugol Studio; Languages: ; Parameters: -debug
[Run]
Filename: {app}\portugol-studio.exe; WorkingDir: {app}; Flags: postinstall nowait; Description: Iniciar o Portugol Studio agora
[Registry]
Root: HKCR; SubKey: .por; ValueType: string; ValueData: programa_portugol; Flags: uninsdeletekey
Root: HKCR; SubKey: programa_portugol; ValueType: string; ValueData: Programa na linguagem Portugol 2.0; Flags: uninsdeletekey
Root: HKCR; SubKey: programa_portugol\Shell\Open\Command; ValueType: string; ValueData: """{app}\portugol-studio.exe"" ""%1"""; Flags: uninsdeletekey
Root: HKCR; Subkey: programa_portugol\DefaultIcon; ValueType: string; ValueData: {app}\icone_32.ico,0; Flags: uninsdeletekey
Root: HKCR; SubKey: programa_portugol\Shell\Executar\Command; ValueType: string; ValueData: """{app}\portugol-console.exe"" ""%1"""; Flags: uninsdeletekey
