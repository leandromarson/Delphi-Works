object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 305
  ClientWidth = 576
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Image1: TImage
    Left = 8
    Top = 8
    Width = 273
    Height = 225
  end
  object Memo1: TMemo
    Left = 287
    Top = 8
    Width = 282
    Height = 225
    Lines.Strings = (
      '')
    TabOrder = 0
  end
  object Button1: TButton
    Left = 72
    Top = 248
    Width = 121
    Height = 33
    Caption = 'Carregar Imagem'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'btn_img'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 336
    Top = 248
    Width = 97
    Height = 33
    Caption = 'Carregar Texto'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'btn_text'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 439
    Top = 247
    Width = 98
    Height = 33
    Caption = 'Salvar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'btn_salvar'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
    OnClick = Button3Click
  end
  object dg_text: TOpenTextFileDialog
    Filter = 'Txt Image (*.txt)|*.txt|Docx (*.docx)|*.docx'
    Left = 528
    Top = 176
  end
  object dg_img: TOpenPictureDialog
    Left = 16
    Top = 248
  end
  object dg_salvar: TSaveDialog
    Filter = 'Txt Image (*.txt)|*.txt|DOCX(*.docx)|*.docx'
    Left = 464
    Top = 176
  end
end
