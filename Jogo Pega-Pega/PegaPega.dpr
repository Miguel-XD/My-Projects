program PegaPega;

uses
  Vcl.Forms,
  UNT_Jogo in 'UNT_Jogo.pas' {FRM_PegaPega};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFRM_PegaPega, FRM_PegaPega);
  Application.Run;
end.
