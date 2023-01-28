object frm_clientes: Tfrm_clientes
  Left = 0
  Top = 0
  Caption = 'Cadastro de Clientes'
  ClientHeight = 425
  ClientWidth = 351
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 24
    Top = 16
    Width = 192
    Height = 25
    Caption = 'Cadastro de Clientes'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 16
    Top = 64
    Width = 10
    Height = 13
    Caption = 'Id'
  end
  object Nome: TLabel
    Left = 16
    Top = 90
    Width = 27
    Height = 13
    Caption = 'Nome'
  end
  object lbl_cpf: TLabel
    Left = 16
    Top = 163
    Width = 19
    Height = 13
    Caption = 'CPF'
  end
  object Label5: TLabel
    Left = 16
    Top = 190
    Width = 33
    Height = 13
    Caption = 'Celular'
  end
  object Label3: TLabel
    Left = 8
    Top = 392
    Width = 10
    Height = 13
    Caption = 'Id'
  end
  object txt_id: TEdit
    Left = 53
    Top = 61
    Width = 60
    Height = 21
    Enabled = False
    TabOrder = 0
  end
  object txt_nome: TEdit
    Left = 53
    Top = 88
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object rd_cpf: TRadioButton
    Left = 16
    Top = 129
    Width = 49
    Height = 17
    Caption = 'CPF'
    TabOrder = 2
    OnClick = rd_cpfClick
  end
  object rd_cnpj: TRadioButton
    Left = 71
    Top = 129
    Width = 57
    Height = 17
    Caption = 'CNPJ'
    TabOrder = 3
    OnClick = rd_cnpjClick
  end
  object txt_cpf: TMaskEdit
    Left = 53
    Top = 160
    Width = 120
    Height = 21
    Enabled = False
    EditMask = '000\.000\.000\-00;0;_'
    MaxLength = 14
    TabOrder = 4
    Text = ''
  end
  object txt_celular: TMaskEdit
    Left = 53
    Top = 187
    Width = 88
    Height = 21
    EditMask = '!\(99\)00000-0000;0;_'
    MaxLength = 14
    TabOrder = 5
    Text = ''
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 256
    Width = 335
    Height = 120
    DataSource = DataSource1
    TabOrder = 6
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
  object txt_pid: TEdit
    Left = 28
    Top = 390
    Width = 85
    Height = 21
    TabOrder = 7
  end
  object btn_pesquisar: TButton
    Left = 119
    Top = 392
    Width = 75
    Height = 25
    Caption = 'Pesquisar'
    TabOrder = 8
    OnClick = btn_pesquisarClick
  end
  object btn_novo: TButton
    Left = 8
    Top = 225
    Width = 57
    Height = 25
    Caption = 'Novo'
    TabOrder = 9
    OnClick = btn_novoClick
  end
  object btn_editar: TButton
    Left = 71
    Top = 225
    Width = 57
    Height = 25
    Caption = 'Editar'
    TabOrder = 10
    OnClick = btn_editarClick
  end
  object btn_salvar: TButton
    Left = 134
    Top = 225
    Width = 57
    Height = 25
    Caption = 'Salvar'
    TabOrder = 11
    OnClick = btn_salvarClick
  end
  object btn_excluir: TButton
    Left = 197
    Top = 225
    Width = 57
    Height = 25
    Caption = 'Excluir'
    TabOrder = 12
    OnClick = btn_excluirClick
  end
  object btn_cancelar: TButton
    Left = 260
    Top = 225
    Width = 57
    Height = 25
    Caption = 'Cancelar'
    TabOrder = 13
    OnClick = btn_cancelarClick
  end
  object FDConnection1: TFDConnection
    Params.Strings = (
      'Database=C:\Works\Delphi Works\ProjetoCRUD3\DB.FDB'
      'User_Name=SYSDBA'
      'Password=masterkey'
      'DriverID=FB')
    Connected = True
    LoginPrompt = False
    Left = 264
    Top = 64
  end
  object DataSource1: TDataSource
    DataSet = FDTable1
    Left = 264
    Top = 136
  end
  object FDTable1: TFDTable
    Active = True
    BeforePost = FDTable1BeforePost
    IndexFieldNames = 'ID'
    Connection = FDConnection1
    TableName = 'CLIENTES'
    Left = 304
    Top = 104
  end
end
