unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf,
  FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys,
  FireDAC.VCLUI.Wait, FireDAC.Comp.Client, Vcl.Grids, Vcl.DBGrids,
  FireDAC.Phys.MSSQL, FireDAC.Phys.MSSQLDef, FireDAC.Stan.Param, FireDAC.DatS,
  FireDAC.DApt.Intf, FireDAC.DApt, FireDAC.Comp.DataSet, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    DBGrid1: TDBGrid;
    FDConnection1: TFDConnection;
    DataSource1: TDataSource;
    FDStoredProc1: TFDStoredProc;
    btn_filtrar: TButton;
    txt_quant_estoque: TEdit;
    txt_nome: TEdit;
    txt_descricao: TEdit;
    txt_estoque: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    btn_novo: TButton;
    btn_salvar: TButton;
    tb_produtos: TFDTable;
    procedure FormCreate(Sender: TObject);
    procedure btn_filtrarClick(Sender: TObject);
    procedure btn_novoClick(Sender: TObject);
    procedure btn_salvarClick(Sender: TObject);
    procedure tb_produtosBeforePost(DataSet: TDataSet);
  private
    procedure Limpar;
    procedure HabilitarTxt;
    procedure FiltrarTudo;
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.btn_filtrarClick(Sender: TObject);
begin
   FDStoredProc1.StoredProcName := '';
   FDConnection1.Connected := True;

   FDStoredProc1.StoredProcName := 'sp_buscar_produtos';
   FDStoredProc1.SchemaName := 'dbo';
   FDStoredProc1.Prepare;
   FDStoredProc1.ParamByName('@estoque').AsSmallInt := strtoint(txt_quant_estoque.Text);
   FDStoredProc1.Active := True;


end;

procedure TForm1.btn_novoClick(Sender: TObject);
begin
  Limpar;
  tb_produtos.Insert;
  HabilitarTxt;
end;

procedure TForm1.btn_salvarClick(Sender: TObject);
begin
  FDConnection1.Connected := true;
  tb_produtos.Post;
  ShowMessage('Produto Salvo');
  FiltrarTudo;
end;

procedure TForm1.FiltrarTudo;
begin
   FDStoredProc1.StoredProcName := '';
   FDConnection1.Connected := True;

   FDStoredProc1.StoredProcName := 'sp_buscar_produtos';
   FDStoredProc1.SchemaName := 'dbo';
   FDStoredProc1.Prepare;
   FDStoredProc1.ParamByName('@estoque').AsSmallInt := 0;
   FDStoredProc1.Active := True;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
 //CONEXAO SQL LOCAL
  {FDConnection1.Params.Database := 'bdtestesql';
  FDConnection1.Params.UserName := 'sa';
  FDConnection1.Params.Password := '123';  }

  //CONEXAO SQL HOSPEDADA NA WEB
  FDConnection1.Params.Database := 'bdtestesql';
  FDConnection1.Params.UserName := 'hugovasconcelos';
  FDConnection1.Params.Password := '123456hugo';
  FDConnection1.Connected := True;
  tb_produtos.TableName := 'produtos';
  tb_produtos.Active := true;
end;

procedure TForm1.HabilitarTxt;
begin
  txt_nome.Enabled := true;
  txt_descricao.Enabled := true;
  txt_estoque.Enabled := true;
end;

procedure TForm1.Limpar;
begin
  txt_nome.Text := '';
  txt_descricao.Text := '';
  txt_estoque.Text := '';
end;

procedure TForm1.tb_produtosBeforePost(DataSet: TDataSet);
begin
  FDConnection1.Connected := true;
   tb_produtos.FieldByName('nome').Value := txt_nome.Text;
    tb_produtos.FieldByName('descricao').Value := txt_descricao.Text;
    tb_produtos.FieldByName('estoque').Value := txt_estoque.Text;
end;

end.