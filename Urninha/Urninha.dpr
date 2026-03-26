program Urninha;

uses
  Vcl.Forms,
  UNT_Login in 'UNT_Login.pas' {FRM_Login},
  UNT_Votacao in 'UNT_Votacao.pas' {FRM_Votacao};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFRM_Login, FRM_Login);
  Application.CreateForm(TFRM_Votacao, FRM_Votacao);
  Application.Run;
end.
