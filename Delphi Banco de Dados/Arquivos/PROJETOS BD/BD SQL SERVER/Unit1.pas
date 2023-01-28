unit Unit1;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.UI.Intf,
  FireDAC.Phys.Intf, FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Stan.Async,
  FireDAC.Phys, FireDAC.Phys.MSSQL, FireDAC.Phys.MSSQLDef, FireDAC.FMXUI.Wait,
  Data.FMTBcd, System.Rtti, FMX.Grid.Style, FMX.StdCtrls,
  FMX.Controls.Presentation, FMX.ScrollBox, FMX.Grid, Data.DB, Data.SqlExpr,
  FireDAC.Comp.Client, FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf,
  FireDAC.DApt, FireDAC.Comp.DataSet, FMX.Edit;

type
  TForm1 = class(TForm)
    FDConnection1: TFDConnection;
    txt_nome: TEdit;
    txt_descricao: TEdit;
    txt_estoque: TEdit;
    Label1: TLabel;
    label1015: TLabel;
    Label3: TLabel;
    btn_novo: TButton;
    btn_salvar: TButton;
    tb_produtos: TFDTable;
    procedure FormCreate(Sender: TObject);
    procedure btn_novoClick(Sender: TObject);
    procedure tb_produtosBeforePost(DataSet: TDataSet);
    procedure btn_salvarClick(Sender: TObject);
  private
    procedure Limpar;
    procedure HabilitarTxt;
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.fmx}

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
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  FDConnection1.Params.Database := 'bdtestesql';
  FDConnection1.Params.UserName := 'sa';
  FDConnection1.Params.Password := '123';
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
