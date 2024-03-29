unit U_clientes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.StdCtrls, Vcl.Mask, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.FB,
  FireDAC.Phys.FBDef, FireDAC.VCLUI.Wait, FireDAC.Stan.Param, FireDAC.DatS,
  FireDAC.DApt.Intf, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  Vcl.ExtCtrls, Vcl.DBCtrls, System.Rtti, System.Bindings.Outputs,
  Vcl.Bind.Editors, Data.Bind.EngExt, Vcl.Bind.DBEngExt, Data.Bind.Components;

type
  Tfrm_clientes = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Nome: TLabel;
    lbl_cpf: TLabel;
    Label5: TLabel;
    txt_id: TEdit;
    txt_nome: TEdit;
    rd_cpf: TRadioButton;
    rd_cnpj: TRadioButton;
    txt_cpf: TMaskEdit;
    txt_celular: TMaskEdit;
    DBGrid1: TDBGrid;
    FDConnection1: TFDConnection;
    DataSource1: TDataSource;
    FDTable1: TFDTable;
    txt_pid: TEdit;
    Label3: TLabel;
    btn_pesquisar: TButton;
    btn_novo: TButton;
    btn_editar: TButton;
    btn_salvar: TButton;
    btn_excluir: TButton;
    btn_cancelar: TButton;
    procedure rd_cpfClick(Sender: TObject);
    procedure rd_cnpjClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure btn_pesquisarClick(Sender: TObject);
    procedure btn_novoClick(Sender: TObject);
    procedure btn_cancelarClick(Sender: TObject);
    procedure btn_excluirClick(Sender: TObject);
    procedure btn_salvarClick(Sender: TObject);
    procedure FDTable1BeforePost(DataSet: TDataSet);
    procedure btn_editarClick(Sender: TObject);
  private
    procedure CarregarDados;
    procedure Limpar;
    procedure Desabilitar;
    procedure Habilitar;
  public
    { Public declarations }
  end;

var
  frm_clientes: Tfrm_clientes;

implementation

{$R *.dfm}

procedure Tfrm_clientes.btn_cancelarClick(Sender: TObject);
begin
  FDTable1.Cancel;
  Desabilitar;
end;

procedure Tfrm_clientes.btn_editarClick(Sender: TObject);
begin
  FDTable1.Edit;
  Habilitar;
  txt_id.Enabled := false;
end;

procedure Tfrm_clientes.btn_excluirClick(Sender: TObject);
begin
  FDTable1.Delete;
  Desabilitar;
  Limpar;
  ShowMessage('Usu�rio Exclu�do');
end;

procedure Tfrm_clientes.btn_novoClick(Sender: TObject);
begin
  Limpar;
  FDTable1.Insert;
  Habilitar;
  txt_cpf.Enabled := false;
end;

procedure Tfrm_clientes.btn_pesquisarClick(Sender: TObject);
begin
  if txt_pid.Text = '' then
  begin
    FDTable1.Filter := '';
  end
  else
  begin
    FDTable1.Filter := 'ID = ' + txt_pid.Text;
  end;
  FDTable1.Filtered := True;
  FDTable1.First;
end;

procedure Tfrm_clientes.btn_salvarClick(Sender: TObject);
begin
  FDTable1.Post;
  ShowMessage('Usu�rio Salvo');
  Desabilitar;
end;

procedure Tfrm_clientes.CarregarDados;
begin
  txt_id.Text := FDTable1.FieldByName('ID').Value;
  txt_nome.Text := FDTable1.FieldByName('NOME').Value;
  txt_cpf.Text := FDTable1.FieldByName('CPF_CNPJ').Value;
  txt_celular.Text := FDTable1.FieldByName('CELULAR').Value;
end;

procedure Tfrm_clientes.DBGrid1CellClick(Column: TColumn);
begin
  CarregarDados;
  Desabilitar;
end;

procedure Tfrm_clientes.Desabilitar;
begin
  txt_id.Enabled := false;
  txt_nome.Enabled := false;
  txt_cpf.Enabled := false;
  txt_celular.Enabled := false;
  rd_cpf.Enabled := false;
  rd_cnpj.Enabled := false;
end;

procedure Tfrm_clientes.FDTable1BeforePost(DataSet: TDataSet);
begin
  FDTable1.FieldByName('ID').Value := txt_id.Text;
  FDTable1.FieldByName('NOME').Value := txt_nome.Text;
  FDTable1.FieldByName('CPF_CNPJ').Value := txt_cpf.Text;
  FDTable1.FieldByName('CELULAR').Value := txt_celular.Text;
end;

procedure Tfrm_clientes.FormCreate(Sender: TObject);
begin
  CarregarDados;
  Desabilitar;
end;

procedure Tfrm_clientes.Habilitar;
begin
  txt_id.Enabled := true;
  txt_nome.Enabled := true;
  txt_cpf.Enabled := true;
  txt_celular.Enabled := true;
  rd_cpf.Enabled := true;
  rd_cnpj.Enabled := true;
end;

procedure Tfrm_clientes.Limpar;
begin
  txt_id.Text := '';
  txt_nome.Text := '';
  txt_cpf.Text := '';
  txt_celular.Text := '';
  rd_cpf.Checked := false;
  rd_cnpj.Checked := false;
  txt_cpf.Enabled := false;
end;

procedure Tfrm_clientes.rd_cnpjClick(Sender: TObject);
begin
  if rd_cnpj.Checked then
  begin
    rd_cpf.Checked := false;
    lbl_cpf.Caption := 'CNPJ';
    txt_cpf.EditMask := '00\.000\.000\.0000\-00;0;_';
    txt_cpf.Enabled := true;
  end;
end;

procedure Tfrm_clientes.rd_cpfClick(Sender: TObject);
begin
  if rd_cpf.Checked then
  begin
    rd_cnpj.Checked := false;
    lbl_cpf.Caption := 'CPF';
    txt_cpf.EditMask := '000\.000\.000\-00;0;_';
    txt_cpf.Enabled := true;
  end;
end;

end.
