object frm_cliente: Tfrm_cliente
  Left = 0
  Top = 0
  Caption = 'Cadastro de Clientes'
  ClientHeight = 457
  ClientWidth = 402
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
    Top = 8
    Width = 215
    Height = 25
    Caption = 'Cadastro de Clientes'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 24
    Top = 64
    Width = 10
    Height = 13
    Caption = 'Id'
  end
  object Label3: TLabel
    Left = 25
    Top = 91
    Width = 27
    Height = 13
    Caption = 'Nome'
  end
  object lbl_cpf: TLabel
    Left = 24
    Top = 145
    Width = 48
    Height = 13
    Caption = 'CPF/CNPJ'
  end
  object Label5: TLabel
    Left = 24
    Top = 172
    Width = 33
    Height = 13
    Caption = 'Celular'
  end
  object Label4: TLabel
    Left = 16
    Top = 431
    Width = 10
    Height = 13
    Caption = 'Id'
  end
  object txt_id: TEdit
    Left = 79
    Top = 56
    Width = 65
    Height = 21
    Enabled = False
    TabOrder = 0
  end
  object txt_name: TEdit
    Left = 80
    Top = 83
    Width = 151
    Height = 21
    TabOrder = 1
  end
  object txt_cpf: TMaskEdit
    Left = 79
    Top = 142
    Width = 122
    Height = 21
    Enabled = False
    EditMask = '000\.000\.000\-00;1;_'
    MaxLength = 14
    TabOrder = 2
    Text = '   .   .   -  '
  end
  object txt_celular: TMaskEdit
    Left = 80
    Top = 169
    Width = 103
    Height = 21
    EditMask = '!\(99\)00000-0000;1;_'
    MaxLength = 14
    TabOrder = 3
    Text = '(  )     -    '
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 232
    Width = 386
    Height = 185
    DataSource = DataSource1
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    TabOrder = 4
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnCellClick = DBGrid1CellClick
    Columns = <
      item
        Expanded = False
        FieldName = 'ID'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOME'
        Width = 141
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CPF_CNPJ'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CELULAR'
        Visible = True
      end>
  end
  object btn_novo: TButton
    Left = 8
    Top = 201
    Width = 49
    Height = 25
    Caption = 'Novo'
    TabOrder = 5
    OnClick = btn_novoClick
  end
  object btn_salvar: TButton
    Left = 63
    Top = 201
    Width = 49
    Height = 25
    Caption = 'Salvar'
    TabOrder = 6
    OnClick = btn_salvarClick
  end
  object btn_editar: TButton
    Left = 118
    Top = 201
    Width = 49
    Height = 25
    Caption = 'Editar'
    TabOrder = 7
    OnClick = btn_editarClick
  end
  object btn_excluir: TButton
    Left = 173
    Top = 201
    Width = 49
    Height = 25
    Caption = 'Excluir'
    TabOrder = 8
    OnClick = btn_excluirClick
  end
  object btn_cancelar: TButton
    Left = 228
    Top = 201
    Width = 49
    Height = 25
    Caption = 'Cancelar'
    TabOrder = 9
    OnClick = btn_cancelarClick
  end
  object rd_cpf: TRadioButton
    Left = 24
    Top = 119
    Width = 49
    Height = 17
    Caption = 'CPF'
    TabOrder = 10
    OnClick = rd_cpfClick
  end
  object rd_cnpj: TRadioButton
    Left = 80
    Top = 119
    Width = 47
    Height = 17
    Caption = 'CNPJ'
    TabOrder = 11
    OnClick = rd_cnpjClick
  end
  object txt_pes_id: TEdit
    Left = 37
    Top = 427
    Width = 48
    Height = 21
    TabOrder = 12
  end
  object btn_pesquisar: TButton
    Left = 103
    Top = 427
    Width = 58
    Height = 21
    Caption = 'Pesquisar'
    TabOrder = 13
    OnClick = btn_pesquisarClick
  end
  object FDTable1: TFDTable
    Active = True
    BeforePost = FDTable1BeforePost
    IndexFieldNames = 'ID'
    Connection = FDConnection1
    TableName = 'CLIENTES'
    Left = 344
    Top = 32
  end
  object FDConnection1: TFDConnection
    Params.Strings = (
      'Database=C:\Works\Delphi Works\ProjetoCRUD2\BANCO.FDB'
      'User_Name=SYSDBA'
      'Password=masterkey'
      'DriverID=FB')
    Connected = True
    LoginPrompt = False
    Left = 288
    Top = 32
  end
  object DataSource1: TDataSource
    DataSet = FDTable1
    Left = 240
    Top = 32
  end
end
