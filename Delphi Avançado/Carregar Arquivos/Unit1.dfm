object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 253
  ClientWidth = 558
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
    Height = 185
  end
  object Memo1: TMemo
    Left = 287
    Top = 8
    Width = 263
    Height = 185
    TabOrder = 0
  end
  object btn_img: TButton
    Left = 88
    Top = 216
    Width = 97
    Height = 25
    Cursor = crHandPoint
    Caption = 'Carregar Imagem'
    TabOrder = 1
    OnClick = btn_imgClick
  end
  object btn_txt: TButton
    Left = 320
    Top = 216
    Width = 91
    Height = 25
    Cursor = crHandPoint
    Caption = 'Carregar Texto'
    TabOrder = 2
    OnClick = btn_txtClick
  end
  object btn_salvar: TButton
    Left = 424
    Top = 216
    Width = 75
    Height = 25
    Caption = 'Salvar Texto'
    TabOrder = 3
    OnClick = btn_salvarClick
  end
  object dg_text: TOpenTextFileDialog
    Filter = 'txt|*.txt'
    Left = 280
    Top = 216
  end
  object dg_img: TOpenPictureDialog
    Left = 48
    Top = 216
  end
  object dg_save: TSaveDialog
    Filter = 'txt|*.txt|word|*.docx'
    Left = 512
    Top = 216
  end
end
