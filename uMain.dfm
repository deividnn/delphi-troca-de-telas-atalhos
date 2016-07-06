object main: Tmain
  Left = 0
  Top = 0
  Caption = 'Menu'
  ClientHeight = 548
  ClientWidth = 768
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  WindowState = wsMaximized
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object form: TPanel
    Left = 0
    Top = 40
    Width = 752
    Height = 277
    Align = alCustom
    TabOrder = 0
    object Label1: TLabel
      Left = 64
      Top = 32
      Width = 8
      Height = 13
      Caption = 'id'
      FocusControl = cxDBSpinEdit1
    end
    object Label2: TLabel
      Left = 64
      Top = 72
      Width = 45
      Height = 13
      Caption = 'id_cidade'
      FocusControl = cxDBSpinEdit2
    end
    object Label3: TLabel
      Left = 64
      Top = 112
      Width = 45
      Height = 13
      Caption = 'descricao'
      FocusControl = cxDBTextEdit1
    end
    object Label4: TLabel
      Left = 64
      Top = 152
      Width = 26
      Height = 13
      Caption = 'idade'
      FocusControl = cxDBSpinEdit3
    end
    object Label5: TLabel
      Left = 64
      Top = 189
      Width = 52
      Height = 13
      Caption = 'id_produto'
      FocusControl = cxDBSpinEdit4
    end
    object cxDBSpinEdit1: TcxDBSpinEdit
      Left = 64
      Top = 48
      DataBinding.DataField = 'id'
      DataBinding.DataSource = DataSource1
      TabOrder = 0
      Width = 121
    end
    object cxDBSpinEdit2: TcxDBSpinEdit
      Left = 64
      Top = 88
      DataBinding.DataField = 'id_cidade'
      DataBinding.DataSource = DataSource1
      TabOrder = 1
      Width = 121
    end
    object cxDBTextEdit1: TcxDBTextEdit
      Left = 64
      Top = 128
      DataBinding.DataField = 'descricao'
      DataBinding.DataSource = DataSource1
      TabOrder = 2
      Width = 417
    end
    object cxDBSpinEdit3: TcxDBSpinEdit
      Left = 64
      Top = 168
      DataBinding.DataField = 'idade'
      DataBinding.DataSource = DataSource1
      TabOrder = 3
      Width = 121
    end
    object cxDBSpinEdit4: TcxDBSpinEdit
      Left = 64
      Top = 208
      DataBinding.DataField = 'id_produto'
      DataBinding.DataSource = DataSource1
      TabOrder = 4
      Width = 121
    end
  end
  object grid: TPanel
    Left = 16
    Top = 240
    Width = 744
    Height = 225
    TabOrder = 1
    object DBGrid1: TDBGrid
      Left = 1
      Top = 42
      Width = 742
      Height = 182
      Align = alClient
      DataSource = DataSource1
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      OnDblClick = DBGrid1DblClick
    end
    object Panel1: TPanel
      Left = 1
      Top = 1
      Width = 742
      Height = 41
      Align = alTop
      TabOrder = 1
      ExplicitLeft = 0
      ExplicitTop = 20
      object Edit1: TEdit
        Left = 0
        Top = 14
        Width = 577
        Height = 21
        TabOrder = 0
      end
      object Button2: TButton
        Left = 583
        Top = 10
        Width = 92
        Height = 25
        Caption = 'pesquisar'
        TabOrder = 1
      end
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 768
    Height = 41
    Align = alTop
    TabOrder = 2
    ExplicitLeft = 304
    ExplicitTop = 8
    ExplicitWidth = 185
    object Button1: TButton
      Left = 25
      Top = 9
      Width = 121
      Height = 25
      Action = Action1
      Caption = 'troca(F12)'
      TabOrder = 0
    end
    object Button3: TButton
      Left = 152
      Top = 9
      Width = 75
      Height = 25
      Action = DatasetFirst1
      Caption = 'primeiro(F2)'
      TabOrder = 1
    end
    object Button4: TButton
      Left = 233
      Top = 9
      Width = 75
      Height = 25
      Action = DatasetNext1
      Caption = 'proximo(F3)'
      TabOrder = 2
    end
    object Button5: TButton
      Left = 314
      Top = 9
      Width = 75
      Height = 25
      Action = DatasetPrior1
      Caption = 'anterior(F4)'
      TabOrder = 3
    end
    object Button6: TButton
      Left = 395
      Top = 9
      Width = 75
      Height = 25
      Action = DatasetLast1
      Caption = 'ultimo(F5)'
      TabOrder = 4
    end
  end
  object ActionList1: TActionList
    Left = 16
    Top = 472
    object Action1: TAction
      Caption = 'troca'
      ShortCut = 123
      OnExecute = Action1Execute
    end
    object DatasetFirst1: TDataSetFirst
      Category = 'Dataset'
      Caption = '&First'
      Hint = 'First'
      ImageIndex = 0
      ShortCut = 113
      DataSource = DataSource1
    end
    object DatasetPrior1: TDataSetPrior
      Category = 'Dataset'
      Caption = '&Prior'
      Hint = 'Prior'
      ImageIndex = 1
      ShortCut = 115
      DataSource = DataSource1
    end
    object DatasetNext1: TDataSetNext
      Category = 'Dataset'
      Caption = '&Next'
      Hint = 'Next'
      ImageIndex = 2
      ShortCut = 114
      DataSource = DataSource1
    end
    object DatasetLast1: TDataSetLast
      Category = 'Dataset'
      Caption = '&Last'
      Hint = 'Last'
      ImageIndex = 3
      ShortCut = 116
      DataSource = DataSource1
    end
  end
  object SQLConnection1: TSQLConnection
    ConnectionName = 'Devart MySQL Direct'
    DriverName = 'DevartMySQLDirect'
    LoginPrompt = False
    Params.Strings = (
      'BlobSize=-1'
      'HostName=localhost'
      'DataBase=delphi'
      'DriverName=DevartMySQLDirect'
      'User_Name=deivid'
      'Password=6291'
      'FetchAll=True'
      'EnableBoolean=False'
      'IPVersion=IPv4')
    Connected = True
    Left = 88
    Top = 472
  end
  object SQLQuery1: TSQLQuery
    Active = True
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select * from cliente')
    SQLConnection = SQLConnection1
    Left = 160
    Top = 472
    object SQLQuery1id: TIntegerField
      FieldName = 'id'
    end
    object SQLQuery1id_cidade: TIntegerField
      FieldName = 'id_cidade'
    end
    object SQLQuery1descricao: TStringField
      FieldName = 'descricao'
      Size = 50
    end
    object SQLQuery1idade: TIntegerField
      FieldName = 'idade'
    end
    object SQLQuery1id_produto: TIntegerField
      FieldName = 'id_produto'
    end
  end
  object DataSetProvider1: TDataSetProvider
    DataSet = SQLQuery1
    Left = 240
    Top = 472
  end
  object ClientDataSet1: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    ProviderName = 'DataSetProvider1'
    Left = 328
    Top = 472
    object ClientDataSet1id: TIntegerField
      FieldName = 'id'
    end
    object ClientDataSet1id_cidade: TIntegerField
      FieldName = 'id_cidade'
    end
    object ClientDataSet1descricao: TStringField
      FieldName = 'descricao'
      Size = 50
    end
    object ClientDataSet1idade: TIntegerField
      FieldName = 'idade'
    end
    object ClientDataSet1id_produto: TIntegerField
      FieldName = 'id_produto'
    end
  end
  object DataSource1: TDataSource
    DataSet = ClientDataSet1
    Left = 408
    Top = 472
  end
end
