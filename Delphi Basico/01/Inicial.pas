unit Inicial;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons;

type
  TFrm_Cad_User = class(TForm)
    LblCadUsuario: TLabel;
    BtnSalvar: TButton;
    SpeedButton1: TSpeedButton;
    BtnDeletar: TButton;
    BtnEditar: TButton;
    TxtNome: TEdit;
    LblTexto1: TLabel;
    TxtNome3: TEdit;
    TxtNome2: TEdit;
    LblValor: TLabel;
    LblTexto3: TLabel;
    LblTexto2: TLabel;
    BtnCalcular: TButton;
    TxtTotal: TEdit;
    TxtValor2: TEdit;
    TxtValor1: TEdit;
    BtnTela2: TButton;
    procedure BtnSalvarClick(Sender: TObject);
    procedure BtnDeletarClick(Sender: TObject);
    procedure BtnEditarClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure BtnCalcularClick(Sender: TObject);
    procedure BtnTela2Click(Sender: TObject);
  private
    { Private declarations }
    var nome, sobrenome, endereco:string;
    var valor:integer;
  public
    { Public declarations }
  end;

var
  Frm_Cad_User: TFrm_Cad_User;

implementation

{$R *.dfm}

uses Tela2;

procedure TFrm_Cad_User.BtnCalcularClick(Sender: TObject);
  var valor1, valor2, total, media:double;
  var contador:integer;
begin
  if(TxtValor1.Text = '') then
  begin
    valor1 := 0;
  end
  else
  begin
     valor1 := StrtoFloat(TxtValor1.Text);
  end;

  if(TxtValor2.Text = '') then
  begin
    valor2 := 0;
  end
  else
  begin
     valor2 := StrtoFloat(TxtValor2.Text);
  end;

  total := valor1 + valor2;
  TxtTotal.Text := FloattoStr(total);

  //operador if
   media := total/2;
   if(media > 50) AND (total < 200) Then
   begin
     ShowMessage('O aluno obteve '+ FloattoStr(media) +' de m�dia! APROVADO');
   end
   else
   begin
     ShowMessage('O aluno obteve '+ FloattoStr(media) +' de m�dia! REPROVADO');
   end;

   //la�o for
   {for contador := 1 to 5 do
     begin
       ShowMessage(inttostr(contador));
     end;

   for contador := 5 DownTo 0 do
     begin
       ShowMessage(inttostr(contador));
       if (contador <= 0) then
       begin
         ShowMessage('Contador chegou a 0');
       end;

     end;
    }
   //while
   contador := 0;
   while (contador <= 10) do
   begin
     ShowMessage(inttostr(contador));
     inc(contador, 2);   //incremento
   end;


end;

procedure TFrm_Cad_User.BtnDeletarClick(Sender: TObject);
begin
  nome := '';
  sobrenome := '';
  endereco := '';
  TxtNome.Text := nome;
  TxtNome2.Text := sobrenome;
  TxtNome3.Text := endereco;
end;

procedure TFrm_Cad_User.BtnEditarClick(Sender: TObject);
begin
  nome := 'Jubileu';
  sobrenome := 'Moleu';
  endereco := 'Rua Pimenta';
  LblValor.Caption := 'Meu nome �: ' + nome + ' ' + sobrenome + ', e meu endere�o �: ' + endereco

end;

procedure TFrm_Cad_User.BtnSalvarClick(Sender: TObject);
begin
  nome := 'Jubileu';
  sobrenome := 'Moleu';
  endereco := 'Rua Pimenta';
  TxtNome.Text := nome;
  TxtNome2.Text := sobrenome;
  TxtNome3.Text := endereco;
end;

procedure TFrm_Cad_User.BtnTela2Click(Sender: TObject);
begin
  FrmTela2 := TFrmTela2.Create(self); // cria a tela
  FrmTela2.ShowModal; //mostra o modal

end;

procedure TFrm_Cad_User.SpeedButton1Click(Sender: TObject);
begin
  valor := 94535;
  LblValor.Caption := InttoStr(valor);
end;

end.