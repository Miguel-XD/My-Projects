unit UNT_Memoria;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TFRM_Memoria = class(TForm)
    BTM1: TButton;
    BTM2: TButton;
    BTM9: TButton;
    BTM10: TButton;
    BTM11: TButton;
    BTM12: TButton;
    BTM13: TButton;
    BTM14: TButton;
    BTM15: TButton;
    BTM16: TButton;
    BTM3: TButton;
    BTM4: TButton;
    BTM5: TButton;
    BTM6: TButton;
    BTM7: TButton;
    BTM8: TButton;
    LBL_Status: TLabel;
    BTM_Reiniciar: TButton;
    Timer1: TTimer;
    procedure IniciarJogo;
    procedure CartaClick(posicao: Integer);
    procedure FormCreate(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure BTM1Click(Sender: TObject);
    procedure BTM2Click(Sender: TObject);
    procedure BTM3Click(Sender: TObject);
    procedure BTM4Click(Sender: TObject);
    procedure BTM5Click(Sender: TObject);
    procedure BTM6Click(Sender: TObject);
    procedure BTM7Click(Sender: TObject);
    procedure BTM8Click(Sender: TObject);
    procedure BTM9Click(Sender: TObject);
    procedure BTM10Click(Sender: TObject);
    procedure BTM11Click(Sender: TObject);
    procedure BTM12Click(Sender: TObject);
    procedure BTM13Click(Sender: TObject);
    procedure BTM14Click(Sender: TObject);
    procedure BTM15Click(Sender: TObject);
    procedure BTM16Click(Sender: TObject);
  private
    { Private declarations }
    cartas: array[1..16] of Integer; //Armazena os valores das cartas
    botoes: array[1..16] of TButton; //Referência para os botões ba interface
    primeiroSelecionado, segundoSelecionado: Integer; //Índices das cartas selecionadas
    paresEncontrados: Integer; //Contador de pares encontrados
    bloqueado: Boolean; //Para bloquear cliques temporariamente
  public
    { Public declarations }
  end;

var
  FRM_Memoria: TFRM_Memoria;

implementation

{$R *.dfm}

procedure TFRM_Memoria.BTM10Click(Sender: TObject);
begin
  CartaClick(10);
end;

procedure TFRM_Memoria.BTM11Click(Sender: TObject);
begin
  CartaClick(11);
end;

procedure TFRM_Memoria.BTM12Click(Sender: TObject);
begin
  CartaClick(12);
end;

procedure TFRM_Memoria.BTM13Click(Sender: TObject);
begin
  CartaClick(13);
end;

procedure TFRM_Memoria.BTM14Click(Sender: TObject);
begin
  CartaClick(14);
end;

procedure TFRM_Memoria.BTM15Click(Sender: TObject);
begin
  CartaClick(15);
end;

procedure TFRM_Memoria.BTM16Click(Sender: TObject);
begin
  CartaClick(16);
end;

procedure TFRM_Memoria.BTM1Click(Sender: TObject);
begin
  CartaClick(1);
end;

procedure TFRM_Memoria.BTM2Click(Sender: TObject);
begin
CartaClick(2);
end;

procedure TFRM_Memoria.BTM3Click(Sender: TObject);
begin
  CartaClick(3);
end;

procedure TFRM_Memoria.BTM4Click(Sender: TObject);
begin
  CartaClick(4);
end;

procedure TFRM_Memoria.BTM5Click(Sender: TObject);
begin
  CartaClick(5);
end;

procedure TFRM_Memoria.BTM6Click(Sender: TObject);
begin
  CartaClick(6);
end;

procedure TFRM_Memoria.BTM7Click(Sender: TObject);
begin
  CartaClick(7);
end;

procedure TFRM_Memoria.BTM8Click(Sender: TObject);
begin
  CartaClick(8);
end;

procedure TFRM_Memoria.BTM9Click(Sender: TObject);
begin
  CartaClick(9);
end;

procedure TFRM_Memoria.CartaClick(posicao: Integer);
begin
  if bloqueado or (botoes[posicao].Caption <> '') then
  exit;

  //Revela o valor das Cartas
  botoes[posicao].Caption := IntToStr(cartas[posicao]);

  if primeiroSelecionado = 0 then
    primeiroSelecionado := posicao
    else
      begin
        segundoSelecionado := posicao;
        bloqueado := True;

        //Aguardar comparação
        Timer1.Enabled := True;
      end;
end;

procedure TFRM_Memoria.FormCreate(Sender: TObject);
begin
  botoes[1] := BTM1;
  botoes[2] := BTM2;
  botoes[3] := BTM3;
  botoes[4] := BTM4;
  botoes[5] := BTM5;
  botoes[6] := BTM6;
  botoes[7] := BTM7;
  botoes[8] := BTM8;
  botoes[9] := BTM9;
  botoes[10] := BTM10;
  botoes[11] := BTM11;
  botoes[12] := BTM12;
  botoes[13] := BTM13;
  botoes[14] := BTM14;
  botoes[15] := BTM15;
  botoes[16] := BTM16;
end;

procedure TFRM_Memoria.IniciarJogo;
var
  i, j, temp : Integer;
begin
  paresEncontrados  := 0;
  primeiroSelecionado := 0;
  segundoSelecionado  := 0;
  bloqueado := False;

  //Criar 2 pares de números
  for i := 1 to 8 do
    begin
      cartas[i] := i;
      cartas[i + 8] := i;
    end;

    //Embaralhar as cartas
    Randomize;
    for i := 16 downto 2 do
      begin
        j := Random(i) + 1;
        temp := cartas[i];
        cartas[i] := cartas[j];
        cartas[j] := temp;
      end;

    //Inicializer os botões: limpar texto e habilitar
    for i := 1 to 16 do
      begin
        botoes[i].Caption := '';
        botoes[i].Enabled := True;
      end;

    LBL_Status.Caption := 'Clique em duas cartas para encontrar os pares';
end;

procedure TFRM_Memoria.Timer1Timer(Sender: TObject);
begin
  Timer1.Enabled := False;

  if cartas[primeiroSelecionado] = cartas[segundoSelecionado] then
  begin
    //Par encontrado: desabilitar botões
    botoes[primeiroSelecionado].Enabled := False;
    botoes[segundoSelecionado].Enabled := False;
    Inc(paresEncontrados);

      if paresEncontrados = 0 then
      LBL_Status.Caption := 'Parabéns você encontrrou os 8 pares';
  end
  else
  begin
    //Não são: pares esconder novamente
    botoes[primeiroSelecionado].Caption := '';
    botoes[segundoSelecionado].Caption := '';
  end;

  //Resetar seleção
  primeiroSelecionado := 0;
  segundoSelecionado := 0;
  bloqueado := False;
end;

end.
