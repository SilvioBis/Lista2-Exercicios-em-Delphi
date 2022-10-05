unit unitMes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TfrmMes = class(TForm)
    edtMes: TEdit;
    edtExtenso: TEdit;
    Label2: TLabel;
    Label1: TLabel;
    btnLimpar: TButton;
    btnExibir: TButton;
    btnFechar: TButton;
    procedure btnFecharClick(Sender: TObject);
    procedure btnLimparClick(Sender: TObject);
    procedure btnExibirClick(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmMes: TfrmMes;

implementation

{$R *.dfm}

procedure TfrmMes.btnExibirClick(Sender: TObject);
var mes : integer;
    jan, feb, mar, apr, may, jun, jul, agu, sep, oct, nov, dec : string;
begin
  mes := StrToInt(edtMes.Text);

  jan := 'Janeiro';
  feb:= 'Fevereiro';
  mar := 'Mar�o';
  apr := 'Abril';
  may := 'Maio';
  jun := 'Junho';
  jul := 'Julho';
  agu := 'Agosto';
  sep := 'Setembro';
  oct := 'Outubro';
  nov := 'Novembro';
  dec := 'Dezembro';

  if mes = 1 then
  edtExtenso.Text := (jan);

  if mes = 2 then
  edtExtenso.Text := (feb);

  if mes = 3 then
  edtExtenso.Text := (mar);

  if mes = 4 then
  edtExtenso.Text := (apr);

  if mes = 5 then
  edtExtenso.Text := (may);

  if mes = 6 then
  edtExtenso.Text := (jun);

  if mes = 7 then
  edtExtenso.Text := (jul);

  if mes = 8 then
  edtExtenso.Text := (agu);

  if mes = 9 then
  edtExtenso.Text := (sep);

  if mes = 10 then
  edtExtenso.Text := (oct);

  if mes = 11 then
  edtExtenso.Text := (nov);

  if mes = 12 then
  edtExtenso.Text := (dec);

  if mes >=13 then
  ShowMessage('N�o existente esse m�s!');

end;

procedure TfrmMes.btnFecharClick(Sender: TObject);
begin
    if Application.MessageBox('Deseja fechar?', 'Confirme',
    MB_YESNO + MB_ICONQUESTION + MB_DEFBUTTON2) = idyes then close;

end;

procedure TfrmMes.btnLimparClick(Sender: TObject);
begin
    edtMes.Clear;
    edtExtenso.Clear;
    edtMes.SetFocus;
end;



end.
