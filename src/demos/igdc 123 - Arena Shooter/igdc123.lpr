program igdc123;

uses
  uGame, glr_core, glr_utils, uGSMainMenu, uAssets, 
  uGSSettingsMenu, uGSGame, uUnit, uObjects;

var
  InitParams: TglrInitParams;

begin
  with InitParams do
  begin
    Width := 1000;
    Height := 600;
    X := 100;
    Y := 100;
    Caption := 'Arena shooter — igdc #123 [tiny-glr ' + TINYGLR_VERSION + ']';
    vSync := True;
    PackFilesPath := '';
    UseDefaultAssets := True;
  end;

  Game := TGame.Create();
  Core.Init(Game, InitParams);
  Core.Loop();
  Core.DeInit();
  Game.Free();
end.

