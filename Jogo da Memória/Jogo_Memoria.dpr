program Jogo_Memoria;

uses
  Vcl.Forms,
  UNT_Memoria in 'UNT_Memoria.pas' {FRM_Memoria};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFRM_Memoria, FRM_Memoria);
  Application.Run;
end.
