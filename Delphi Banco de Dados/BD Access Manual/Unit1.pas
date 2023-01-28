unit Unit1;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.UI.Intf,
  FireDAC.Phys.Intf, FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Stan.Async,
  FireDAC.Phys, FireDAC.Phys.FB, FireDAC.Phys.FBDef, FireDAC.FMXUI.Wait,
  FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt,
  FMX.StdCtrls, FMX.Controls.Presentation, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, FMX.Edit, FMX.Objects;

type
  TForm1 = class(TForm)
    FDConnection1: TFDConnection;
    FDTable1: TFDTable;
    Button1: TButton;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    txt_id: TEdit;
    txt_nome: TEdit;
    txt_sobrenome: TEdit;
    txt_permissao: TEdit;
    txt_idade: TEdit;
    btn_novo: TButton;
    btn_editar: TButton;
    btn_excluir: TButton;
    btn_cancelar: TButton;
    btn_salvar: TButton;
    btn_ant: TButton;
    btn_prox: TButton;
    Image1: TImage;
    btn_imagem: TButton;
    OpenDialog1: TOpenDialog;
    {procedure Button1Click(Sender: TObject);}
    procedure FormCreate(Sender: TObject);
    procedure btn_novoClick(Sender: TObject);
    procedure btn_salvarClick(Sender: TObject);
    procedure FDTable1BeforePost(DataSet: TDataSet);
    procedure FDTable1BeforeInsert(DataSet: TDataSet);
    procedure btn_excluirClick(Sender: TObject);
    procedure btn_antClick(Sender: TObject);
    procedure btn_proxClick(Sender: TObject);
    procedure btn_cancelarClick(Sender: TObject);
    procedure FDTable1BeforeEdit(DataSet: TDataSet);
    procedure btn_editarClick(Sender: TObject);
    procedure btn_imagemClick(Sender: TObject);
  private
    procedure Limpar;
    procedure Desabilitar;
    procedure Habilitar;
    procedure CarregarDados;
  public
    nomeImg : string;
  end;

var
  Form1: TForm1;

implementation

{$R *.fmx}



{procedure TForm1.Button1Click(Sender: TObject);
begin
  FDConnection1.Params.Database := GetCurrentDir+'\Assets\DB.FDB';
  FDConnection1.Connected := true;

  if FDConnection1.Connected = true then
  begin
    Label1.Text := 'Conectado';
    Label1.FontColor := TAlphaColorRec.Lime;
  end
  else
  begin
    Label1.Text := 'Erro';
    Label1.FontColor := TAlphaColorRec.Red;
  end;
end;}

procedure TForm1.btn_antClick(Sender: TObject);
begin
  FDTable1.Prior;
  CarregarDados;
end;

procedure TForm1.btn_cancelarClick(Sender: TObject);
begin
  FDTable1.Cancel;
  CarregarDados;
  Desabilitar;
end;

procedure TForm1.btn_editarClick(Sender: TObject);
begin
  FDTable1.Edit;
  btn_ant.Enabled := false;
  btn_prox.Enabled := false;
end;

procedure TForm1.btn_excluirClick(Sender: TObject);
begin
  FDTable1.Delete;
  ShowMessage('Usu�rio Exclu�do');
  CarregarDados;
  Desabilitar;
end;

procedure TForm1.btn_imagemClick(Sender: TObject);
var formato : string;
begin
  if OpenDialog1.Execute then
  begin
    Image1.Bitmap.LoadFromFile(OpenDialog1.FileName);
    formato := ExtractFileExt(OpenDialog1.FileName);
    nomeImg := IntToStr(FDTable1.FieldByName('ID').Value) + '-' + FDTable1.FieldByName('NOME').Value + formato;
    Image1.Bitmap.SaveToFile(GetCurrentDir + '\Assets\img\' + nomeImg);
  end;

end;

procedure TForm1.btn_novoClick(Sender: TObject);
begin
  FDTable1.Insert;
  Limpar;
  btn_ant.Enabled := false;
  btn_prox.Enabled := false;
end;

procedure TForm1.btn_proxClick(Sender: TObject);
begin
  FDTable1.Next;
  CarregarDados;
end;

procedure TForm1.btn_salvarClick(Sender: TObject);
begin
  FDTable1.Post;
  ShowMessage('Usu�rio Salvo');
  CarregarDados;
  Desabilitar;
  btn_ant.Enabled := true;
  btn_prox.Enabled := true;

end;

procedure TForm1.CarregarDados;
begin
  txt_id.Text := FDTable1.FieldByName('ID').Value;
  txt_nome.Text := FDTable1.FieldByName('NOME').Value;
  txt_sobrenome.Text := FDTable1.FieldByName('SOBRENOME').Value;
  txt_permissao.Text := FDTable1.FieldByName('PERMISSAO').Value;
  txt_idade.Text := FDTable1.FieldByName('IDADE').Value;
  Image1.Bitmap.LoadFromFile(GetCurrentDir + '\Assets\img\' + FDTable1.FieldByName('FOTO').Value);

end;

procedure TForm1.Desabilitar;
begin
  txt_id.Enabled := false;
  txt_nome.Enabled := false;
  txt_sobrenome.Enabled := false;
  txt_permissao.Enabled := false;
  txt_idade.Enabled := false;
  btn_imagem.Enabled := false;
end;

procedure TForm1.FDTable1BeforeEdit(DataSet: TDataSet);
begin
  Habilitar;
end;

procedure TForm1.FDTable1BeforeInsert(DataSet: TDataSet);
begin
  Habilitar;
end;

procedure TForm1.FDTable1BeforePost(DataSet: TDataSet);
begin
  FDTable1.FieldByName('ID').Value := txt_id.Text;
  FDTable1.FieldByName('NOME').Value := txt_nome.Text;
  FDTable1.FieldByName('SOBRENOME').Value := txt_sobrenome.Text;
  FDTable1.FieldByName('PERMISSAO').Value := txt_permissao.Text;
  FDTable1.FieldByName('IDADE').Value := txt_idade.Text;
  FDTable1.FieldByName('FOTO').Value := nomeImg;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  FDConnection1.Params.Database := GetCurrentDir+'\Assets\DB.FDB';
  FDConnection1.Connected := true;
  FDTable1.TableName := 'USUARIOS';
  FDTable1.Active := true;

  CarregarDados;

end;

procedure TForm1.Habilitar;
begin
  txt_id.Enabled := true;
  txt_nome.Enabled := true;
  txt_sobrenome.Enabled := true;
  txt_permissao.Enabled := true;
  txt_idade.Enabled := true;
  btn_imagem.Enabled := true;
  btn_ant.Enabled := true;
  btn_prox.Enabled := true;
end;

procedure TForm1.Limpar;
begin
  txt_id.Text := '';
  txt_nome.Text := '';
  txt_sobrenome.Text := '';
  txt_permissao.Text := '';
  txt_idade.Text := '';
end;

end.
