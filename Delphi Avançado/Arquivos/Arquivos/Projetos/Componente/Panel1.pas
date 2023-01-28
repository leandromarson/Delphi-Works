unit Panel1;

interface

uses
  System.SysUtils, System.Classes, Vcl.Controls, Vcl.ExtCtrls, Messages, Windows;

type

  TFloatPanel = class(TPanel)

  private
    FDesignMode: Boolean;
    procedure SetDesignMode(const Value: Boolean);
    { Private declarations }
  protected
    { Protected declarations }
  public
    procedure WM_MouseDown(var msg:TMsg); message WM_LBUTTONDOWN;
  published
  property DesignMode : Boolean read FDesignMode write SetDesignMode;
    { Published declarations }
  end;

procedure Register;

implementation

procedure Register;
begin
  RegisterComponents('Exemplos', [TFloatPanel]);
end;

{ TFloatPanel }

procedure TFloatPanel.SetDesignMode(const Value: Boolean);
begin
  FDesignMode := Value;
end;

procedure TFloatPanel.WM_MouseDown(var msg: TMsg);
begin
    if not DesignMode then
    exit;
    releasecapture;
    PostMessage(handle, WM_SYSCOMMAND, $F012, 0);
end;

end.

