unit U_clientes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.VCLUI.Wait,
  FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt, Data.DB,
  Vcl.StdCtrls, Vcl.Grids, Vcl.DBGrids, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, Vcl.Mask, FireDAC.Phys.FB, FireDAC.Phys.FBDef;

type
  Tfrm_cliente = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    lbl_cpf: TLabel;
    Label5: TLabel;
    txt_id: TEdit;
    txt_name: TEdit;
    txt_cpf: TMaskEdit;
    txt_celular: TMaskEdit;
    FDTable1: TFDTable;
    DBGrid1: TDBGrid;
    btn_novo: TButton;
    btn_salvar: TButton;
    btn_editar: TButton;
    btn_excluir: TButton;
    btn_cancelar: TButton;
    rd_cpf: TRadioButton;
    rd_cnpj: TRadioButton;
    FDConnection1: TFDConnection;
    DataSource1: TDataSource;
    txt_pes_id: TEdit;
    btn_pesquisar: TButton;
    Label4: TLabel;
    procedure rd_cpfClick(Sender: TObject);
    procedure rd_cnpjClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FDTable1BeforePost(DataSet: TDataSet);
    procedure btn_novoClick(Sender: TObject);
    procedure btn_editarClick(Sender: TObject);
    procedure btn_salvarClick(Sender: TObject);
    procedure btn_excluirClick(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure btn_cancelarClick(Sender: TObject);
    procedure btn_pesquisarClick(Sender: TObject);
  private
    procedure Habilitar;
    procedure Desabilitar;
    procedure CarregarDados;
    procedure Limpar;
  public
    { Public declarations }
  end;

var
  frm_cliente: Tfrm_cliente;

implementation

{$R *.dfm}

procedure Tfrm_cliente.btn_cancelarClick(Sender: TObject);
begin
  FDTable1.Cancel;
  Desabilitar;
end;

procedure Tfrm_cliente.btn_editarClick(Sender: TObject);
begin
  FDTable1.Edit;
  Habilitar;
end;

procedure Tfrm_cliente.btn_excluirClick(Sender: TObject);
begin
  FDTable1.Delete;
  ShowMessage('Usu�rio Exclu�do');
  Desabilitar;
end;

procedure Tfrm_cliente.btn_novoClick(Sender: TObject);
begin
  FDTable1.Insert;
  txt_id.Enabled := true;
  Habilitar;
  Limpar;
  txt_cpf.Enabled := false;
end;

procedure Tfrm_cliente.btn_pesquisarClick(Sender: TObject);
begin
  if txt_pes_id.Text = '' then
  begin
    FDTable1.Filter := '';
  end
  else
  begin
    FDTable1.Filter := 'ID = ' + txt_pes_id.Text;
  end;
  FDTable1.Filtered := true;
  FDTable1.First;
end;

procedure Tfrm_cliente.btn_salvarClick(Sender: TObject);
begin
  FDTable1.Post;
  ShowMessage('Usu�rio Salvo');
  Desabilitar;
end;

procedure Tfrm_cliente.CarregarDados;
begin
  txt_id.Text := FDTable1.FieldByName('ID').Value;
  txt_name.Text := FDTable1.FieldByName('NOME').Value;
  txt_cpf.Text := FDTable1.FieldByName('CPF_CNPJ').Value;
  txt_celular.Text := FDTable1.FieldByName('CELULAR').Value;
end;

procedure Tfrm_cliente.DBGrid1CellClick(Column: TColumn);
begin
  CarregarDados;
end;

procedure Tfrm_cliente.Desabilitar;
begin
  txt_id.Enabled := false;
  txt_name.Enabled := false;
  txt_cpf.Enabled := false;
  txt_celular.Enabled := false;
  rd_cpf.Enabled := false;
  rd_cnpj.Enabled := false;
end;

procedure Tfrm_cliente.FDTable1BeforePost(DataSet: TDataSet);
begin
  FDTable1.FieldByName('ID').Value := txt_id.Text;
  FDTable1.FieldByName('NOME').Value := txt_name.Text;
  FDTable1.FieldByName('CPF_CNPJ').Value := txt_cpf.Text;
  FDTable1.FieldByName('CELULAR').Value := txt_celular.Text;
end;

procedure Tfrm_cliente.FormCreate(Sender: TObject);
begin
  Desabilitar;
  CarregarDados;
end;

procedure Tfrm_cliente.Habilitar;
begin
  txt_name.Enabled := true;
  txt_cpf.Enabled := true;
  txt_celular.Enabled := true;
  rd_cpf.Enabled := true;
  rd_cnpj.Enabled := true;
end;

procedure Tfrm_cliente.Limpar;
begin
  txt_id.Text := '';
  txt_name.Text := '';
  txt_cpf.Text := '';
  txt_celular.Text := '';
  rd_cpf.Checked := false;
  rd_cnpj.Checked := false;
end;

procedure Tfrm_cliente.rd_cnpjClick(Sender: TObject);
begin
  if rd_cnpj.Checked then
  begin
    rd_cpf.Checked := false;
    lbl_cpf.Caption := 'CNPJ';
    txt_cpf.EditMask := '00\.000\.000\/0000\-00;1;_';
    txt_cpf.Enabled := true;
  end;
end;

procedure Tfrm_cliente.rd_cpfClick(Sender: TObject);
begin
  if rd_cpf.Checked then
  begin
    rd_cnpj.Checked := false;
    lbl_cpf.Caption := 'CPF';
    txt_cpf.EditMask := '000\.000\.000\-00;1;_';
    txt_cpf.Enabled := true;
  end;
end;

end.
