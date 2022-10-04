object MainForm: TMainForm
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Venda'
  ClientHeight = 266
  ClientWidth = 302
  Color = clBtnFace
  CustomTitleBar.CaptionAlignment = taCenter
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object btnCliente: TButton
    Left = 38
    Top = 24
    Width = 225
    Height = 50
    Caption = 'Cadastrar cliente'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    OnClick = btnClienteClick
  end
  object btnProduto: TButton
    Left = 38
    Top = 96
    Width = 225
    Height = 50
    Caption = 'Cadastrar produto'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    OnClick = btnProdutoClick
  end
  object btnPedido: TButton
    Left = 38
    Top = 168
    Width = 225
    Height = 50
    Caption = 'Cadastrar pedido'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    OnClick = btnPedidoClick
  end
  object fdcConnection: TFDConnection
    Params.Strings = (
      'DriverID=FB'
      'Database=D:\Projetos\Embarcadero\DATABASE.FDB'
      'CharacterSet=win1251'
      'User_Name=sysdba'
      'Password=masterkey')
    Connected = True
    LoginPrompt = False
    Left = 24
    Top = 16
  end
  object dscCliente: TDataSource
    DataSet = fdtCliente
    Left = 264
    Top = 16
  end
  object fdtCliente: TFDTable
    Active = True
    BeforePost = fdtClienteBeforePost
    BeforeDelete = fdtClienteBeforeDelete
    IndexFieldNames = 'ID_CLIENTE'
    Connection = fdcConnection
    TableName = 'CLIENTE'
    Left = 208
    Top = 16
    object fdtClienteID_CLIENTE: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'ID_CLIENTE'
      Origin = 'ID_CLIENTE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object fdtClienteRAZAOSOCIAL: TStringField
      FieldName = 'RAZAOSOCIAL'
      Origin = 'RAZAOSOCIAL'
      Required = True
      Size = 128
    end
    object fdtClienteNOMEFANTASIA: TStringField
      FieldName = 'NOMEFANTASIA'
      Origin = 'NOMEFANTASIA'
      Required = True
      Size = 128
    end
    object fdtClienteEMAIL: TStringField
      FieldName = 'EMAIL'
      Origin = 'EMAIL'
      Required = True
      Size = 128
    end
    object fdtClienteCNPJ: TStringField
      FieldName = 'CNPJ'
      Origin = 'CNPJ'
      Required = True
      EditMask = '99\.999\.999/9999\-99;0;_'
      FixedChar = True
      Size = 14
    end
    object fdtClienteTELEFONE: TStringField
      FieldName = 'TELEFONE'
      Origin = 'TELEFONE'
      Required = True
      EditMask = '\(99\)99999\-9999;1;_'
      Size = 15
    end
    object fdtClienteENDERECO: TStringField
      FieldName = 'ENDERECO'
      Origin = 'ENDERECO'
      Required = True
      Size = 128
    end
    object fdtClienteNUMERO: TStringField
      FieldName = 'NUMERO'
      Origin = 'NUMERO'
      Required = True
      Size = 5
    end
    object fdtClienteBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Origin = 'BAIRRO'
      Required = True
      Size = 128
    end
    object fdtClienteCOMPLEMENTO: TStringField
      FieldName = 'COMPLEMENTO'
      Origin = 'COMPLEMENTO'
      Size = 128
    end
    object fdtClienteCIDADE: TStringField
      FieldName = 'CIDADE'
      Origin = 'CIDADE'
      Required = True
      Size = 128
    end
    object fdtClienteESTADO: TStringField
      FieldName = 'ESTADO'
      Origin = 'ESTADO'
      Required = True
      FixedChar = True
      Size = 2
    end
  end
  object fdtProduto: TFDTable
    Active = True
    BeforeDelete = fdtProdutoBeforeDelete
    IndexFieldNames = 'ID_PRODUTO'
    Connection = fdcConnection
    TableName = 'PRODUTO'
    Left = 208
    Top = 72
    object fdtProdutoID_PRODUTO: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'ID_PRODUTO'
      Origin = 'ID_PRODUTO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object fdtProdutoTITULO: TStringField
      FieldName = 'TITULO'
      Origin = 'TITULO'
      Required = True
      Size = 128
    end
    object fdtProdutoDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Required = True
      Size = 512
    end
    object fdtProdutoCUSTO: TFMTBCDField
      Alignment = taLeftJustify
      FieldName = 'CUSTO'
      Origin = 'CUSTO'
      Required = True
      DisplayFormat = '#.00'
      Precision = 18
      Size = 2
    end
    object fdtProdutoPRECO: TFMTBCDField
      Alignment = taLeftJustify
      FieldName = 'PRECO'
      Origin = 'PRECO'
      Required = True
      DisplayFormat = '#.00'
      Precision = 18
      Size = 2
    end
  end
  object dscProduto: TDataSource
    DataSet = fdtProduto
    Left = 264
    Top = 72
  end
end
