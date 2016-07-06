program Project4;

uses
  Vcl.Forms,
  uMain in 'uMain.pas' {main},
  Vcl.Themes,
  Vcl.Styles;

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  TStyleManager.TrySetStyle('Sky');
  Application.CreateForm(Tmain, main);
  Application.Run;
end.
