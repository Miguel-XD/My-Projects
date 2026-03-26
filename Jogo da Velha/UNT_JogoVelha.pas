unit UNT_JogoVelha;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TFRM_JogoVelha = class(TForm)
    BTN_1: TButton;
    BTN_2: TButton;
    BTN_3: TButton;
    BTN_5: TButton;
    BTN_6: TButton;
    BTN_7: TButton;
    BTN_8: TButton;
    BTN_9: TButton;
    BTN_4: TButton;
    LBL_Vez: TLabel;
    LBL_Resultado: TLabel;
    BTM_NovoJogo: TButton;
    procedure BTN_9Click(Sender: TObject);
    procedure IniciarJogo;
    procedure FazerJogada(posicao: Integer; botao: TButton);
    procedure BTN_5Click(Sender: TObject);
    procedure BTN_1Click(Sender: TObject);
    procedure BTN_8Click(Sender: TObject);
    procedure BTN_6Click(Sender: TObject);
    procedure BTN_2Click(Sender: TObject);
    procedure BTN_3Click(Sender: TObject);
    procedure BTN_4Click(Sender: TObject);
    procedure BTN_7Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BTM_NovoJogoClick(Sender: TObject);
    function VerificarVitoria: Boolean;
    function VerificarEmpate: Boolean;


  private
    { Private declarations }
    jogadorAtual: Char; // Pode ser 'X' ou 'O'
    tabuleiro: array [1..9] of Char; // Estado do Jogo
    jogoAtivo: Boolean; // Controla se pode jogar


  public
    { Public declarations }
  end;

var
  FRM_JogoVelha: TFRM_JogoVelha;

implementation

{$R *.dfm}

function TFRM_JogoVelha.VerificarVitoria: Boolean;
begin
  Result := False; // Começa assumindo que ninguem ganhou

  // Linhas Horizontais
  if (tabuleiro[1] = jogadorAtual) and
  (tabuleiro[2] = jogadorAtual) and
  (tabuleiro[3] = jogadorAtual) then
  Result := True;

  if (tabuleiro[4] = jogadorAtual) and
  (tabuleiro[5] = jogadorAtual) and
  (tabuleiro[6] = jogadorAtual) then
  Result := True;

  if (tabuleiro[7] = jogadorAtual) and
  (tabuleiro[8] = jogadorAtual) and
  (tabuleiro[9] = jogadorAtual) then
  Result := True;

  // Linhas Verticais
  if (tabuleiro[1] = jogadorAtual) and
  (tabuleiro[4] = jogadorAtual) and
  (tabuleiro[7] = jogadorAtual) then
  Result := True;

  if (tabuleiro[2] = jogadorAtual) and
  (tabuleiro[5] = jogadorAtual) and
  (tabuleiro[8] = jogadorAtual) then
  Result := True;

  if (tabuleiro[3] = jogadorAtual) and
  (tabuleiro[6] = jogadorAtual) and
  (tabuleiro[9] = jogadorAtual) then
  Result := True;

  // Linhas diagonais
  if (tabuleiro[1] = jogadorAtual) and
  (tabuleiro[5] = jogadorAtual) and
  (tabuleiro[9] = jogadorAtual) then
  Result := True;

  if (tabuleiro[3] = jogadorAtual) and
  (tabuleiro[5] = jogadorAtual) and
  (tabuleiro[7] = jogadorAtual) then
  Result := True;

end;

function TFRM_JogoVelha.VerificarEmpate: Boolean;
var i: Integer;
begin
  Result := True; // Assume empate

  // Se encontrar alguma posição vazia, não é empate
  for i := 1 to 9 do
  begin
    if tabuleiro[i] = ' ' then
    begin
      Result := False;
      break; // Sai do Loop
    end;
  end;


end;

procedure TFRM_JogoVelha.FazerJogada(posicao: Integer; botao: TButton);
begin
  // Verificar se o jogador é válido
if (not jogoAtivo) or (tabuleiro[posicao] <> ' ') then
  Exit; // Sai da procedure se inválido

  // Executar a Jogada
  tabuleiro[posicao] := jogadorAtual;
  botao.Caption := jogadorAtual;
  botao.Enabled := False;

  // Verificar resultado
  if VerificarVitoria then
  begin
    LBL_Resultado.Caption := 'Jogador ' + jogadorAtual + ' GANHOU!';
    jogoAtivo := False;
    // Desabilitar todos os botões
  end
  else if VerificarEmpate then
       begin
         LBL_Resultado.Caption := 'EMPATOU!';
         jogoAtivo := False;
       end
       else
       begin
         // Por enquanto só troca jogador
         if jogadorAtual = 'X' then
          jogadorAtual := 'O'
         else
          jogadorAtual := 'X';

         LBL_Vez.Caption := 'Vez do: ' + jogadorAtual
       end;
end;

procedure TFRM_JogoVelha.FormCreate(Sender: TObject);
begin
 IniciarJogo;
end;

procedure TFRM_JogoVelha.IniciarJogo;
var i: Integer;
begin
  // Limpar arry (vetor) do tabuleiro
  for i := 1 to 9 do
    tabuleiro[i] := ' ';

    // Configurar  início do Jogo
    jogadorAtual := 'X';
    jogoAtivo := True;

    // Limpar a interface
    LBL_Vez.Caption := 'Vez do: X';
    LBL_Resultado.Caption := ' ';

    // Habilitar todos os boatões
    BTN_1.Caption := ''; BTN_1.Enabled := True;
    BTN_2.Caption := ''; BTN_2.Enabled := True;
    BTN_3.Caption := ''; BTN_3.Enabled := True;
    BTN_4.Caption := ''; BTN_4.Enabled := True;
    BTN_5.Caption := ''; BTN_5.Enabled := True;
    BTN_6.Caption := ''; BTN_6.Enabled := True;
    BTN_7.Caption := ''; BTN_7.Enabled := True;
    BTN_8.Caption := ''; BTN_8.Enabled := True;
    BTN_9.Caption := ''; BTN_9.Enabled := True;
end;

procedure TFRM_JogoVelha.BTM_NovoJogoClick(Sender: TObject);
begin
  IniciarJogo;
end;

procedure TFRM_JogoVelha.BTN_1Click(Sender: TObject);
begin
  FazerJogada(1, BTN_1)
end;

procedure TFRM_JogoVelha.BTN_2Click(Sender: TObject);
begin
  FazerJogada(2, BTN_2)
end;

procedure TFRM_JogoVelha.BTN_3Click(Sender: TObject);
begin
  FazerJogada(3, BTN_3)
end;

procedure TFRM_JogoVelha.BTN_4Click(Sender: TObject);
begin
  FazerJogada(4, BTN_4);
end;

procedure TFRM_JogoVelha.BTN_5Click(Sender: TObject);
begin
  FazerJogada(5, BTN_5);
end;

procedure TFRM_JogoVelha.BTN_6Click(Sender: TObject);
begin
  FazerJogada(6, BTN_6);
end;

procedure TFRM_JogoVelha.BTN_7Click(Sender: TObject);
begin
  FazerJogada(7, BTN_7)
end;

procedure TFRM_JogoVelha.BTN_8Click(Sender: TObject);
begin
  FazerJogada(8, BTN_8);
end;

procedure TFRM_JogoVelha.BTN_9Click(Sender: TObject);
begin
  FazerJogada(9, BTN_9);
end;

end.
