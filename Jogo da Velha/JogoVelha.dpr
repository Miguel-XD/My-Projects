program JogoVelha;

uses
  Vcl.Forms,
  UNT_JogoVelha in 'C:\Users\Aluno\Documents\Embarcadero\Studio\Projects\UNT_JogoVelha.pas' {FRM_JogoVelha};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFRM_JogoVelha, FRM_JogoVelha);
  Application.Run;
end.
