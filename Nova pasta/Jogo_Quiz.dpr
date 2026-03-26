program Jogo_Quiz;

uses
  Vcl.Forms,
  UNT_Quiz in 'C:\Users\Aluno\Documents\Embarcadero\Studio\Projects\UNT_Quiz.pas' {FRM_Quiz};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFRM_Quiz, FRM_Quiz);
  Application.Run;
end.
