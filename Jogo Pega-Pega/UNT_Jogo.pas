unit UNT_Jogo;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls;

type
  TFRM_PegaPega = class(TForm)
    ShapeHeroi: TShape;
    ShapeVilao: TShape;
    GameTimer: TTimer;
    procedure FormCreate(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure GameTimerTimer(Sender: TObject);
  private
    //Estados do Teclado
    KeyLeft, KeyRight, KeyUp, KeyDown : Boolean;
    //Velocidades
    HeroiSpeed: Integer;
    VilaoSpeed: Integer;
    //Procedimento para Reiniciar o Jogo
    procedure ResetGame;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRM_PegaPega: TFRM_PegaPega;

implementation

{$R *.dfm}

procedure TFRM_PegaPega.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case Key of
    VK_Left  : KeyLeft  := True;
    VK_Right : KeyRight := True;
    VK_Up    : KeyUp    := True;
    VK_Down  : KeyDown  := True;
  end;
end;

procedure TFRM_PegaPega.FormKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case Key of
    VK_Left  : KeyLeft  := False;
    VK_Right : KeyRight := False;
    VK_Up    : KeyUp    := False;
    VK_Down  : KeyDown  := False;
  end;
end;

procedure TFRM_PegaPega.GameTimerTimer(Sender: TObject);
var hx, hy, vx, vy: Integer;
function Intersecao : Boolean;
  Begin
    Result :=
      (ShapeHeroi.Left + ShapeHeroi.Width > ShapeVilao.Left) and
      (ShapeHeroi.Left < ShapeVilao.Left + ShapeVilao.Width) and
      (ShapeHeroi.Top + ShapeHeroi.Height > ShapeVilao.Height) and
      (ShapeHeroi.Top < ShapeVilao.Top + ShapeVilao.Height);
  End;
begin
  // 1) Mover o héroi conforme teclas
  hx := ShapeHeroi.Left;
  hy := ShapeHeroi.Top;

  if KeyLeft  then hx := hx - HeroiSpeed;
  if KeyRight then hx := hx + HeroiSpeed;
  if KeyUp    then hy := hy - HeroiSpeed;
  if KeyDown  then hy := hy + HeroiSpeed;

  // 2) Limitar as bordas da janela
  if hx < 0 then hx := 0;
  if hy < 0 then hy := 0;
  if hx + ShapeHeroi.Width > ClientWidth then hx := ClientWidth - ShapeHeroi.Width;
  if hy + ShapeHeroi.Height > ClientHeight then hy := ClientHeight - ShapeHeroi.Height;

  ShapeHeroi.Left := hx;
  ShapeHeroi.Top  := hy;

  // 3) Movimentar o Vilão na direção do Héroi
  vx := ShapeVilao.Left;
  vy := ShapeVilao.Top;

  if vx < ShapeHeroi.Left then vx := vx + VilaoSpeed
  else if vx > ShapeHeroi.Left then vx := vx - VilaoSpeed;

  if vy < ShapeHeroi.Top then vy := vy + VilaoSpeed
  else if vy > ShapeHeroi.Top then vy := vy - VilaoSpeed;

  ShapeVilao.Left := vx;
  ShapeVilao.Top  := vy;

  // 4) Colisão
  if Intersecao then
  Begin
    GameTimer.Enabled := False;
    if MessageDlg('Game Over! Reiniciar?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
      begin
        ResetGame;
        GameTimer.Enabled := True;
      end;
  End;

end;

procedure TFRM_PegaPega.ResetGame;
begin
  //Centralizar o héroi
  ShapeHeroi.Left := (ClientWidth div 2) - (ShapeHeroi.Width div 2);
  ShapeHeroi.Top := (ClientHeight div 2) - (ShapeHeroi.Height div 2);

  //Coloca o inimigo no canto
  ShapeVilao.Left := 16;
  ShapeVilao.Top := 16;

  //Zera as Teclas
  KeyLeft   := False;
  KeyRight  := False;
  KeyUp     := False;
  KeyDown   := False;
end;

procedure TFRM_PegaPega.FormCreate(Sender: TObject);
begin
  KeyPreview := True; //Garantir captura das teclas no Form
  HeroiSpeed := 5; //Define a Velocidade Inicial do Héroi
  VilaoSpeed := 3; //Define a Velocidade Inicial do Vilão
  GameTimer.Enabled := True; //Habilita o Componente Timer
  Gametimer.Interval := 16; //Definir ontervalo de tempo para cada ação
  ResetGame; //Chama o procedimento de reiniciar o jogo
end;

end.
