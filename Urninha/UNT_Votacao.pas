unit UNT_Votacao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls,
  Vcl.Imaging.pngimage, Vcl.Skia;

type
  TFRM_Votacao = class(TForm)
    BTN_Confimar: TBitBtn;
    BTN_1: TBitBtn;
    BTN_2: TBitBtn;
    BTN_3: TBitBtn;
    BTN_4: TBitBtn;
    BTN_5: TBitBtn;
    BTN_6: TBitBtn;
    BTN_7: TBitBtn;
    BTN_8: TBitBtn;
    BTN_0: TBitBtn;
    BTN_9: TBitBtn;
    BitBtn1: TBitBtn;
    BTN_Corrige: TBitBtn;
    EDT_Voto: TEdit;
    IMG_Candidato: TImage;
    LBL_Candidato: TLabel;
    procedure BTN_ConfimarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BTN_1Click(Sender: TObject);
    procedure BTN_2Click(Sender: TObject);
    procedure BTN_3Click(Sender: TObject);
    procedure BTN_4Click(Sender: TObject);
    procedure BTN_5Click(Sender: TObject);
    procedure BTN_6Click(Sender: TObject);
    procedure BTN_7Click(Sender: TObject);
    procedure BTN_8Click(Sender: TObject);
    procedure BTN_9Click(Sender: TObject);
    procedure BTN_0Click(Sender: TObject);
    procedure BTN_CorrigeClick(Sender: TObject);
    procedure EDT_VotoChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRM_Votacao: TFRM_Votacao;
  BRANCOS,NULOS,TOTAL,PESSOA1,PESSOA2,PESSOA3,PESSOA4,PESSOA5,PESSOA6, VOTO : INTEGER;

implementation

{$R *.dfm}

procedure TFRM_Votacao.BTN_0Click(Sender: TObject);
begin
  EDT_Voto.Text := EDT_Voto.Text + '0';
end;

procedure TFRM_Votacao.BTN_1Click(Sender: TObject);
begin
  EDT_Voto.Text := EDT_Voto.Text + '1';
end;

procedure TFRM_Votacao.BTN_2Click(Sender: TObject);
begin
  EDT_Voto.Text := EDT_Voto.Text + '2';
end;

procedure TFRM_Votacao.BTN_3Click(Sender: TObject);
begin
  EDT_Voto.Text := EDT_Voto.Text + '3';
end;

procedure TFRM_Votacao.BTN_4Click(Sender: TObject);
begin
  EDT_Voto.Text := EDT_Voto.Text + '4';
end;

procedure TFRM_Votacao.BTN_5Click(Sender: TObject);
begin
  EDT_Voto.Text := EDT_Voto.Text + '5';
end;

procedure TFRM_Votacao.BTN_6Click(Sender: TObject);
begin
  EDT_Voto.Text := EDT_Voto.Text + '6';
end;

procedure TFRM_Votacao.BTN_7Click(Sender: TObject);
begin
  EDT_Voto.Text := EDT_Voto.Text + '7';
end;

procedure TFRM_Votacao.BTN_8Click(Sender: TObject);
begin
  EDT_Voto.Text := EDT_Voto.Text + '8';
end;

procedure TFRM_Votacao.BTN_9Click(Sender: TObject);
begin
  EDT_Voto.Text := EDT_Voto.Text + '9';
end;

procedure TFRM_Votacao.BTN_ConfimarClick(Sender: TObject);
begin
  Close ;
end;

procedure TFRM_Votacao.BTN_CorrigeClick(Sender: TObject);
begin
  EDT_Voto.Clear;
  IMG_Candidato.Picture := nil;
  VOTO := 0;
  EDT_Voto.Visible := true;
  LBL_Candidato.Caption := '';
end;

procedure TFRM_Votacao.EDT_VotoChange(Sender: TObject);
begin
  IF (Length(EDT_Voto.Text) = 2) then
  Begin
    VOTO := StrToInt(EDT_Voto.Text);
    case VOTO of
      10:
      begin
        IMG_Candidato.Picture.LoadFromFile('..\..\IMG\Ashrah.png');
        LBL_Candidato.Caption := '10 - Ashrah';
      end;
      11:
      begin
        IMG_Candidato.Picture.LoadFromFile('..\..\IMG\Baraka.png');
        LBL_Candidato.Caption := '11 - Baraka';
      end;
      12:
      begin
        IMG_Candidato.Picture.LoadFromFile('..\..\IMG\Geras.png');
        LBL_Candidato.Caption := '12 - Geras';
      end;
      13:
      begin
        IMG_Candidato.Picture.LoadFromFile('..\..\IMG\Havik.png');
        LBL_Candidato.Caption := '13 - Havik';
      end;
      14:
      begin
        IMG_Candidato.Picture.LoadFromFile('..\..\IMG\Johnny-Cage.png');
        LBL_Candidato.Caption := '14 - Cage';
      end;
      15:
      begin
        IMG_Candidato.Picture.LoadFromFile('..\..\IMG\Kenshi.png');
        LBL_Candidato.Caption := '15 - Kenshi';
      end;
      16:
      begin
        IMG_Candidato.Picture.LoadFromFile('..\..\IMG\Kitana.png');
        LBL_Candidato.Caption := '16 - Kitana';
      end;
      17:
      begin
        IMG_Candidato.Picture.LoadFromFile('..\..\IMG\Kung-Lao.png');
        LBL_Candidato.Caption := '17 - Kung-Lao';
      end;
      18:
      begin
        IMG_Candidato.Picture.LoadFromFile('..\..\IMG\Li-Mei.png');
        LBL_Candidato.Caption := '18 - Li-Mei';
      end;
      19:
      begin
        IMG_Candidato.Picture.LoadFromFile('..\..\IMG\Liu-Kang.png');
        LBL_Candidato.Caption := '19 - Liu-Kang';
      end;
      20:
      begin
        IMG_Candidato.Picture.LoadFromFile('..\..\IMG\Mileena.png');
        LBL_Candidato.Caption := '20 - Mileena';
      end;
      21:
      begin
        IMG_Candidato.Picture.LoadFromFile('..\..\IMG\Raiden.png');
        LBL_Candidato.Caption := '21 - Raiden';
      end;
      22:
      begin
        IMG_Candidato.Picture.LoadFromFile('..\..\IMG\Rain.png');
        LBL_Candidato.Caption := '22 - Rain';
      end;
      23:
      begin
        IMG_Candidato.Picture.LoadFromFile('..\..\IMG\Reptile.png');
        LBL_Candidato.Caption := '23 - Reptile';
      end;
      24:
      begin
        IMG_Candidato.Picture.LoadFromFile('..\..\IMG\Scorpion.png');
        LBL_Candidato.Caption := '24 - Scorpion';
      end;
      25:
      begin
        IMG_Candidato.Picture.LoadFromFile('..\..\IMG\Smoke.png');
        LBL_Candidato.Caption := '25 - Smoke';
      end;
      26:
      begin
        IMG_Candidato.Picture.LoadFromFile('..\..\IMG\SubZero.png');
        LBL_Candidato.Caption := '26 - SubZero';
      end;
      27:
      begin
        IMG_Candidato.Picture.LoadFromFile('..\..\IMG\Tanya.png');
        LBL_Candidato.Caption := '27 - Tanya';
      end;
    end;
  End;
end;

procedure TFRM_Votacao.FormCreate(Sender: TObject);
var TEXTO : String;
begin
//Zera as variáveis de contagem de votos
  BRANCOS   := 0;
  NULOS     := 0;
  TOTAL     := 0;
  PESSOA1   := 0;
  PESSOA2   := 0;
  PESSOA3   := 0;
  PESSOA4   := 0;
  PESSOA5   := 0;
  PESSOA6   := 0;

  ShowMessage ('Votação Iniciada');
  TEXTO := 'PESSOA1: ' + IntToStr(PESSOA1) + ' Votos' + #13;
  TEXTO := TEXTO + 'PESSOA2: ' + IntToStr(PESSOA2) + ' Votos' + #13;
  TEXTO := TEXTO + 'PESSOA3: ' + IntToStr(PESSOA3) + ' Votos' + #13;
  TEXTO := TEXTO + 'PESSOA4: ' + IntToStr(PESSOA4) + ' Votos' + #13;
  TEXTO := TEXTO + 'PESSOA5: ' + IntToStr(PESSOA5) + ' Votos' + #13;
  TEXTO := TEXTO + 'PESSOA6: ' + IntToStr(PESSOA6) + ' Votos' + #13;
  TEXTO := TEXTO + 'BRANCOS: ' + IntToStr(BRANCOS) + ' Votos' + #13;
  TEXTO := TEXTO + 'NULOS: ' + IntToStr(NULOS) + ' Votos' + #13;
  TEXTO := TEXTO + 'TOTAL: ' + IntToStr(TOTAL) + ' Votos' + #13;
  ShowMessage(TEXTO);

end;

end.
