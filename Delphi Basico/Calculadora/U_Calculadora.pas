unit U_Calculadora;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs,
  FMX.Controls.Presentation, FMX.StdCtrls, FMX.Layouts, FMX.Edit;

type
  Tfrm_calculadora = class(TForm)
    btn_0: TButton;
    btn_1: TButton;
    btn_2: TButton;
    btn_3: TButton;
    btn_4: TButton;
    btn_5: TButton;
    btn_6: TButton;
    btn_7: TButton;
    btn_8: TButton;
    btn_9: TButton;
    btn_div: TButton;
    btn_mult: TButton;
    btn_sub: TButton;
    btn_plus: TButton;
    btn_point: TButton;
    btn_equal: TButton;
    button_box: TLayout;
    top_box: TLayout;
    txt_num1: TEdit;
    lbl_operator: TLabel;
    txt_num2: TEdit;
    btn_clean: TButton;
    btn_ce: TButton;
    btn_C: TButton;
    procedure btn_subClick(Sender: TObject);
    procedure btn_plusClick(Sender: TObject);
    procedure btn_multClick(Sender: TObject);
    procedure btn_divClick(Sender: TObject);
    procedure btn_equalClick(Sender: TObject);
    procedure btn_1Click(Sender: TObject);
    procedure btn_0Click(Sender: TObject);
    procedure btn_2Click(Sender: TObject);
    procedure btn_3Click(Sender: TObject);
    procedure btn_4Click(Sender: TObject);
    procedure btn_5Click(Sender: TObject);
    procedure btn_6Click(Sender: TObject);
    procedure btn_7Click(Sender: TObject);
    procedure btn_8Click(Sender: TObject);
    procedure btn_9Click(Sender: TObject);
    procedure btn_pointClick(Sender: TObject);
    procedure btn_cleanClick(Sender: TObject);
    procedure btn_ceClick(Sender: TObject);
    procedure btn_CClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_calculadora: Tfrm_calculadora;

implementation

{$R *.fmx}

procedure Tfrm_calculadora.btn_0Click(Sender: TObject);
begin
  if lbl_operator.Text = '.' then
  begin
    txt_num1.Text := txt_num1.Text + '0';
  end
  else
  begin
    txt_num2.Text := txt_num2.Text + '0';
  end;
end;

procedure Tfrm_calculadora.btn_1Click(Sender: TObject);
begin
  if lbl_operator.Text = '.' then
  begin
    txt_num1.Text := txt_num1.Text + '1';
  end
  else
  begin
    txt_num2.Text := txt_num2.Text + '1';
  end;
end;

procedure Tfrm_calculadora.btn_2Click(Sender: TObject);
begin
  if lbl_operator.Text = '.' then
  begin
    txt_num1.Text := txt_num1.Text + '2';
  end
  else
  begin
    txt_num2.Text := txt_num2.Text + '2';
  end;
end;

procedure Tfrm_calculadora.btn_3Click(Sender: TObject);
begin
  if lbl_operator.Text = '.' then
  begin
    txt_num1.Text := txt_num1.Text + '3';
  end
  else
  begin
    txt_num2.Text := txt_num2.Text + '3';
  end;
end;

procedure Tfrm_calculadora.btn_4Click(Sender: TObject);
begin
  if lbl_operator.Text = '.' then
  begin
    txt_num1.Text := txt_num1.Text + '4';
  end
  else
  begin
    txt_num2.Text := txt_num2.Text + '4';
  end;
end;

procedure Tfrm_calculadora.btn_5Click(Sender: TObject);
begin
  if lbl_operator.Text = '.' then
  begin
    txt_num1.Text := txt_num1.Text + '5';
  end
  else
  begin
    txt_num2.Text := txt_num2.Text + '5';
  end;
end;

procedure Tfrm_calculadora.btn_6Click(Sender: TObject);
begin
  if lbl_operator.Text = '.' then
  begin
    txt_num1.Text := txt_num1.Text + '6';
  end
  else
  begin
    txt_num2.Text := txt_num2.Text + '6';
  end;
end;

procedure Tfrm_calculadora.btn_7Click(Sender: TObject);
begin
  if lbl_operator.Text = '.' then
  begin
    txt_num1.Text := txt_num1.Text + '7';
  end
  else
  begin
    txt_num2.Text := txt_num2.Text + '7';
  end;
end;

procedure Tfrm_calculadora.btn_8Click(Sender: TObject);
begin
  if lbl_operator.Text = '.' then
  begin
    txt_num1.Text := txt_num1.Text + '8';
  end
  else
  begin
    txt_num2.Text := txt_num2.Text + '8';
  end;
end;

procedure Tfrm_calculadora.btn_9Click(Sender: TObject);
begin
  if lbl_operator.Text = '.' then
  begin
    txt_num1.Text := txt_num1.Text + '9';
  end
  else
  begin
    txt_num2.Text := txt_num2.Text + '9';
  end;
end;

procedure Tfrm_calculadora.btn_CClick(Sender: TObject);
begin
  if lbl_operator.Text = '.' then
  begin
    txt_num1.Text := '';
  end
  else
  begin
    txt_num2.Text := '';
  end;
end;

procedure Tfrm_calculadora.btn_ceClick(Sender: TObject);
begin
  lbl_operator.Text := '.';
  txt_num1.Text := '';
  txt_num2.Text := '';
  btn_plus.Enabled := true;
  btn_mult.Enabled := true;
  btn_div.Enabled := true;
  btn_sub.Enabled := true;
end;

procedure Tfrm_calculadora.btn_cleanClick(Sender: TObject);
begin
  if lbl_operator.Text = '.' then
  begin
    txt_num1.Text := copy(txt_num1.Text, 0, length(txt_num1.Text)-1);
  end
  else
  begin
    if length(txt_num2.Text) = 0 then
    begin
      lbl_operator.Text := '.';
      btn_plus.Enabled := true;
      btn_mult.Enabled := true;
      btn_div.Enabled := true;
      btn_sub.Enabled := true;
    end
    else
    begin
      txt_num2.Text := copy(txt_num2.Text, 0, length(txt_num2.Text)-1);
    end;
  end;
end;

procedure Tfrm_calculadora.btn_divClick(Sender: TObject);
begin
  lbl_operator.Text := '/';
  btn_plus.Enabled := true;
  btn_mult.Enabled := true;
  btn_div.Enabled := false;
  btn_sub.Enabled := true;
end;

procedure Tfrm_calculadora.btn_equalClick(Sender: TObject);
  var n1, n2: double;
  var x: Char;
begin

  if (txt_num1.Text.IsEmpty = true) then
  begin
     txt_num1.Text := '0';
  end;

  if (txt_num2.Text.IsEmpty = true) then
  begin
     txt_num2.Text := '0';
  end;

  n1 := StrToFloat(txt_num1.Text);
  n2 := StrToFloat(txt_num2.Text);

  x := lbl_operator.Text[1];

  case x of
    '+': begin
      ShowMessage (FloatToStr(n1 + n2));
    end;
    '-': begin
      ShowMessage (FloatToStr(n1 - n2));
    end;
    '*': begin
      ShowMessage (FloatToStr(n1 * n2));
    end;
    '/': begin
      ShowMessage (FloatToStr(n1 / n2));
    end;
  end;
  btn_plus.Enabled := true;
  btn_mult.Enabled := true;
  btn_div.Enabled := true;
  btn_sub.Enabled := true;
  lbl_operator.Text := '.';
  txt_num1.Text := '';
  txt_num2.Text := '';

end;

procedure Tfrm_calculadora.btn_multClick(Sender: TObject);
begin
  lbl_operator.Text := '*';
  btn_plus.Enabled := true;
  btn_mult.Enabled := false;
  btn_div.Enabled := true;
  btn_sub.Enabled := true;
end;

procedure Tfrm_calculadora.btn_plusClick(Sender: TObject);
begin
  lbl_operator.Text := '+';
  btn_plus.Enabled := false;
  btn_mult.Enabled := true;
  btn_div.Enabled := true;
  btn_sub.Enabled := true;
end;

procedure Tfrm_calculadora.btn_pointClick(Sender: TObject);
begin
  if lbl_operator.Text = '.' then
  begin
    txt_num1.Text := txt_num1.Text + ',';
  end
  else
  begin
    txt_num2.Text := txt_num2.Text + ',';
  end;
end;

procedure Tfrm_calculadora.btn_subClick(Sender: TObject);
begin
  lbl_operator.Text := '-';
  btn_plus.Enabled := true;
  btn_mult.Enabled := true;
  btn_div.Enabled := true;
  btn_sub.Enabled := false;
end;



end.
