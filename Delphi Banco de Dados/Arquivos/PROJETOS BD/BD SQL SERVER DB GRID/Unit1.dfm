object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 293
  ClientWidth = 734
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 13
    Width = 27
    Height = 13
    Caption = 'Nome'
  end
  object Label2: TLabel
    Left = 152
    Top = 13
    Width = 46
    Height = 13
    Caption = 'Descri'#231#227'o'
  end
  object Label3: TLabel
    Left = 296
    Top = 13
    Width = 39
    Height = 13
    Caption = 'Estoque'
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 112
    Width = 721
    Height = 169
    DataSource = DataSource1
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object btn_filtrar: TButton
    Left = 8
    Top = 81
    Width = 75
    Height = 25
    Caption = 'Filtrar'
    TabOrder = 1
    OnClick = btn_filtrarClick
  end
  object txt_quant_estoque: TEdit
    Left = 89
    Top = 81
    Width = 48
    Height = 25
    TabOrder = 2
  end
  object txt_nome: TEdit
    Left = 8
    Top = 32
    Width = 121
    Height = 21
    Enabled = False
    TabOrder = 3
  end
  object txt_descricao: TEdit
    Left = 152
    Top = 32
    Width = 121
    Height = 21
    Enabled = False
    TabOrder = 4
  end
  object txt_estoque: TEdit
    Left = 296
    Top = 32
    Width = 121
    Height = 21
    Enabled = False
    TabOrder = 5
  end
  object btn_novo: TButton
    Left = 431
    Top = 30
    Width = 75
    Height = 25
    Caption = 'Novo'
    TabOrder = 6
    OnClick = btn_novoClick
  end
  object btn_salvar: TButton
    Left = 512
    Top = 30
    Width = 75
    Height = 25
    Caption = 'Salvar'
    TabOrder = 7
    OnClick = btn_salvarClick
  end
  object FDConnection1: TFDConnection
    Params.Strings = (
      'Server=mssql914.umbler.com,5003'
      'DriverID=MSSQL')
    Left = 552
    Top = 240
  end
  object DataSource1: TDataSource
    DataSet = FDStoredProc1
    Left = 672
    Top = 240
  end
  object FDStoredProc1: TFDStoredProc
    Connection = FDConnection1
    Left = 600
    Top = 208
  end
  object tb_produtos: TFDTable
    BeforePost = tb_produtosBeforePost
    Connection = FDConnection1
    Left = 440
    Top = 240
  end
end