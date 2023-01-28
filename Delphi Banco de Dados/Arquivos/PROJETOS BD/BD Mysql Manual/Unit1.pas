unit Unit1;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.StdCtrls,
  FMX.Controls.Presentation, FMX.Edit, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.MySQL,
  FireDAC.Phys.MySQLDef, FireDAC.FMXUI.Wait, Data.DB, FireDAC.Comp.Client,
  FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt,
  FireDAC.Comp.DataSet;

type
  TForm1 = class(TForm)
    txt_nome: TEdit;
    txt_sobrenome: TEdit;
    txt_permissao: TEdit;
    txt_idade: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Button1: TButton;
    Button2: TButton;
    FDConnection1: TFDConnection;
    driver: TFDPhysMySQLDriverLink;
    btn_novo: TButton;
    btn_salvar: TButton;
    btn_editar: TButton;
    btn_excluir: TButton;
    btn_cancelar: TButton;
    tb_usuarios: TFDTable;
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure btn_novoClick(Sender: TObject);
    procedure btn_salvarClick(Sender: TObject);
    procedure tb_usuariosBeforePost(DataSet: TDataSet);
    procedure btn_editarClick(Sender: TObject);
    procedure btn_excluirClick(Sender: TObject);
    procedure btn_cancelarClick(Sender: TObject);
  private
    procedure carregarDados;
    procedure HabilitarTxt;
    procedure LimparCampos;
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.fmx}

procedure TForm1.btn_cancelarClick(Sender: TObject);
begin
  tb_usuarios.Cancel;
  carregarDados;
end;

procedure TForm1.btn_editarClick(Sender: TObject);
begin
 tb_usuarios.Edit;
 HabilitarTxt;
end;

procedure TForm1.btn_excluirClick(Sender: TObject);
begin
FDConnection1.Connected := true;
 tb_usuarios.delete;

 ShowMessage('Usu�rio Apagado');
 carregarDados;

end;

procedure TForm1.btn_novoClick(Sender: TObject);
begin
FDConnection1.Connected := true;
 tb_usuarios.Insert;
 HabilitarTxt;
 LimparCampos;
end;

procedure TForm1.btn_salvarClick(Sender: TObject);
begin
FDConnection1.Connected := true;
 tb_usuarios.Post;

 ShowMessage('Usu�rio Salvo');
 carregarDados;

end;

procedure TForm1.Button1Click(Sender: TObject);
begin
FDConnection1.Connected := true;
  tb_usuarios.Prior;
  carregarDados;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
FDConnection1.Connected := true;
  tb_usuarios.Next;
  carregarDados;
end;

procedure TForm1.carregarDados;
begin

  txt_nome.Text := tb_usuarios.FieldByName('nome').Value;
  txt_sobrenome.Text := tb_usuarios.FieldByName('sobrenome').Value;
  txt_permissao.Text := tb_usuarios.FieldByName('permissao').Value;
  txt_idade.Text := tb_usuarios.FieldByName('idade').Value;

  end;

procedure TForm1.FormCreate(Sender: TObject);
begin

  //CONEXAO LOCALHOST
  {FDConnection1.Params.Database := 'bdteste';
  FDConnection1.Params.UserName := 'root';
  FDConnection1.Params.Password := '';  }

  //CONEXAO BANCO HOSPEDADO  UMBLER
 { FDConnection1.Params.Database := 'bdteste2';
  FDConnection1.Params.UserName := 'hugodelphi';
  FDConnection1.Params.Password := 'delphi1234';      }


  //CONEXAO BANCO HOSPEDADO  HOSTGATOR
  FDConnection1.Params.Database := 'makel783_delphi';
  FDConnection1.Params.UserName := 'makel783_usudel';
  FDConnection1.Params.Password := 'delphi1234';


  Driver.VendorLib := GetCurrentDir+'\lib\libmySQL.dll';

  FDConnection1.Connected := true;
  tb_usuarios.TableName := 'usuarios';
  tb_usuarios.Active := true;

  carregarDados;

end;

procedure TForm1.HabilitarTxt;
begin
  txt_nome.Enabled := true;
  txt_sobrenome.Enabled := true;
  txt_permissao.Enabled := true;
  txt_idade.Enabled := true;
end;

procedure TForm1.LimparCampos;
begin
  txt_nome.Text := '';
  txt_sobrenome.Text := '';
  txt_permissao.Text := '';
  txt_idade.Text := '';
end;

procedure TForm1.tb_usuariosBeforePost(DataSet: TDataSet);
begin
FDConnection1.Connected := true;
  tb_usuarios.FieldByName('nome').Value := txt_nome.Text;
  tb_usuarios.FieldByName('sobrenome').Value := txt_sobrenome.Text;
  tb_usuarios.FieldByName('permissao').Value := txt_permissao.Text;
  tb_usuarios.FieldByName('idade').Value := txt_idade.Text;
end;

end.
