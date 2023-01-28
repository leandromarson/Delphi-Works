unit Tela2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TFrmTela2 = class(TForm)
    Label1: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmTela2: TFrmTela2;

implementation

{$R *.dfm}

procedure TFrmTela2.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  FrmTela2 := nil; //limpa o cache do formulário
end;

end.
