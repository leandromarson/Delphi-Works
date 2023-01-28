unit Unit1;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.UI.Intf,
  FireDAC.Phys.Intf, FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Stan.Async,
  FireDAC.Phys, FireDAC.Phys.FB, FireDAC.Phys.FBDef, FireDAC.FMXUI.Wait,
  FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt,
  System.Rtti, System.Bindings.Outputs, Fmx.Bind.Editors, Data.Bind.EngExt,
  Fmx.Bind.DBEngExt, Data.Bind.Components, FMX.Controls.Presentation, FMX.Edit,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, Data.Bind.DBScope,
  Data.Bind.Controls, FMX.Layouts, Fmx.Bind.Navigator, FMX.StdCtrls;

type
  Tfrm_inicial = class(TForm)
    FDConnection1: TFDConnection;
    txt_nome: TEdit;
    txt_sobrenome: TEdit;
    txt_permissao: TEdit;
    txt_idade: TEdit;
    BindSourceUSUARIOS: TBindSourceDB;
    FDTableUSUARIOS: TFDTable;
    NavigatorBindSourceUSUARIOS: TBindNavigator;
    BindingsList1: TBindingsList;
    LinkControlToField1: TLinkControlToField;
    LinkControlToField2: TLinkControlToField;
    LinkControlToField3: TLinkControlToField;
    LinkControlToField4: TLinkControlToField;
    Nome: TLabel;
    Sobrenome: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    txt_id: TEdit;
    Label1: TLabel;
    LinkControlToField5: TLinkControlToField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_inicial: Tfrm_inicial;

implementation

{$R *.fmx}

end.
