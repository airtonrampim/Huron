object ClienteForm: TClienteForm
  Left = 0
  Top = 0
  ActiveControl = dbgrdClientes
  BorderStyle = bsDialog
  Caption = 'Cliente'
  ClientHeight = 481
  ClientWidth = 661
  Color = clBtnFace
  CustomTitleBar.CaptionAlignment = taCenter
  Constraints.MinHeight = 510
  Constraints.MinWidth = 667
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  DesignSize = (
    661
    481)
  PixelsPerInch = 96
  TextHeight = 13
  object gbxClientes: TGroupBox
    Left = 16
    Top = 32
    Width = 257
    Height = 441
    Anchors = [akLeft, akTop, akBottom]
    Caption = 'Selecione um cliente'
    TabOrder = 0
    DesignSize = (
      257
      441)
    object dbgrdClientes: TDBGrid
      Left = 8
      Top = 21
      Width = 235
      Height = 374
      Anchors = [akLeft, akTop, akBottom]
      DataSource = MainForm.dscCliente
      Options = [dgIndicator, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgTitleClick, dgTitleHotTrack]
      ReadOnly = True
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'ID_CLIENTE'
          Width = 20
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'RAZAOSOCIAL'
          Width = 185
          Visible = True
        end>
    end
    object dbnavInsDel: TDBNavigator
      Left = 183
      Top = 405
      Width = 66
      Height = 25
      DataSource = MainForm.dscCliente
      VisibleButtons = [nbInsert, nbDelete]
      Hints.Strings = (
        'First record'
        'Prior record'
        'Next record'
        'Last record'
        'Inserir cliente'
        'Deletar cliente'
        'Edit record'
        'Post edit'
        'Cancel edit'
        'Refresh data'
        'Apply updates'
        'Cancel updates')
      ParentShowHint = False
      ConfirmDelete = False
      ShowHint = True
      TabOrder = 1
      TabStop = True
    end
  end
  object gbxCadastro: TGroupBox
    Left = 297
    Top = 32
    Width = 350
    Height = 441
    Anchors = [akLeft, akTop, akRight, akBottom]
    Caption = 'Dados do cliente selecionado'
    TabOrder = 1
    DesignSize = (
      350
      441)
    object lblRazaoSocial: TLabel
      Left = 16
      Top = 21
      Width = 60
      Height = 13
      Caption = '&Raz'#227'o Social'
      FocusControl = dbedtRazaoSocial
    end
    object lblNomeFantasia: TLabel
      Left = 16
      Top = 69
      Width = 71
      Height = 13
      Caption = 'Nome &Fantasia'
      FocusControl = dbedtNomeFantasia
    end
    object lblEmail: TLabel
      Left = 16
      Top = 117
      Width = 24
      Height = 13
      Caption = 'E&mail'
      FocusControl = dbedtEmail
    end
    object lblCNPJ: TLabel
      Left = 16
      Top = 165
      Width = 25
      Height = 13
      Caption = 'CNP&J'
      FocusControl = dbedtCNPJ
    end
    object lblTelefone: TLabel
      Left = 249
      Top = 165
      Width = 42
      Height = 13
      Anchors = [akTop, akRight]
      Caption = '&Telefone'
      FocusControl = dbedtTelefone
      ExplicitLeft = 245
    end
    object lblEndereco: TLabel
      Left = 16
      Top = 258
      Width = 45
      Height = 13
      Anchors = [akLeft, akBottom]
      Caption = 'En&dere'#231'o'
      FocusControl = dbedtEndereco
    end
    object lblNumero: TLabel
      Left = 284
      Top = 258
      Width = 37
      Height = 13
      Anchors = [akRight, akBottom]
      Caption = '&N'#250'mero'
      FocusControl = dbedtNumero
      ExplicitLeft = 290
    end
    object lblBairro: TLabel
      Left = 16
      Top = 306
      Width = 28
      Height = 13
      Anchors = [akLeft, akBottom]
      Caption = '&Bairro'
      FocusControl = dbedtBairro
    end
    object lblComplemento: TLabel
      Left = 202
      Top = 306
      Width = 65
      Height = 13
      Anchors = [akRight, akBottom]
      Caption = 'Comp&lemento'
      FocusControl = dbedtComplemento
      ExplicitLeft = 208
    end
    object lblCidade: TLabel
      Left = 16
      Top = 354
      Width = 33
      Height = 13
      Anchors = [akLeft, akBottom]
      Caption = 'C&idade'
      FocusControl = dbedtCidade
    end
    object lblEstado: TLabel
      Left = 277
      Top = 354
      Width = 33
      Height = 13
      Anchors = [akRight, akBottom]
      Caption = 'E&stado'
      FocusControl = dbcbxEstado
      ExplicitLeft = 283
    end
    object dbedtRazaoSocial: TDBEdit
      Left = 16
      Top = 40
      Width = 318
      Height = 21
      Anchors = [akLeft, akTop, akRight]
      DataField = 'RAZAOSOCIAL'
      DataSource = MainForm.dscCliente
      TabOrder = 0
    end
    object dbedtNomeFantasia: TDBEdit
      Left = 16
      Top = 88
      Width = 318
      Height = 21
      Anchors = [akLeft, akTop, akRight]
      DataField = 'NOMEFANTASIA'
      DataSource = MainForm.dscCliente
      TabOrder = 1
    end
    object dbedtEmail: TDBEdit
      Left = 16
      Top = 136
      Width = 318
      Height = 21
      Anchors = [akLeft, akTop, akRight]
      Constraints.MaxWidth = 500
      DataField = 'EMAIL'
      DataSource = MainForm.dscCliente
      TabOrder = 2
    end
    object dbedtCNPJ: TDBEdit
      Left = 16
      Top = 184
      Width = 109
      Height = 21
      DataField = 'CNPJ'
      DataSource = MainForm.dscCliente
      MaxLength = 18
      TabOrder = 3
    end
    object dbedtTelefone: TDBEdit
      Left = 249
      Top = 184
      Width = 85
      Height = 21
      Anchors = [akTop, akRight]
      DataField = 'TELEFONE'
      DataSource = MainForm.dscCliente
      MaxLength = 14
      TabOrder = 4
    end
    object dbedtEndereco: TDBEdit
      Left = 16
      Top = 277
      Width = 253
      Height = 21
      Anchors = [akLeft, akRight, akBottom]
      DataField = 'ENDERECO'
      DataSource = MainForm.dscCliente
      TabOrder = 5
    end
    object dbedtNumero: TDBEdit
      Left = 284
      Top = 277
      Width = 50
      Height = 21
      Anchors = [akRight, akBottom]
      DataField = 'NUMERO'
      DataSource = MainForm.dscCliente
      TabOrder = 6
    end
    object dbedtBairro: TDBEdit
      Left = 16
      Top = 325
      Width = 171
      Height = 21
      Anchors = [akLeft, akRight, akBottom]
      DataField = 'BAIRRO'
      DataSource = MainForm.dscCliente
      TabOrder = 7
    end
    object dbedtComplemento: TDBEdit
      Left = 202
      Top = 325
      Width = 132
      Height = 21
      Anchors = [akRight, akBottom]
      DataField = 'COMPLEMENTO'
      DataSource = MainForm.dscCliente
      TabOrder = 8
    end
    object dbedtCidade: TDBEdit
      Left = 16
      Top = 373
      Width = 246
      Height = 21
      Anchors = [akLeft, akRight, akBottom]
      DataField = 'CIDADE'
      DataSource = MainForm.dscCliente
      TabOrder = 9
    end
    object dbcbxEstado: TDBComboBox
      Left = 277
      Top = 373
      Width = 57
      Height = 21
      Style = csDropDownList
      Anchors = [akRight, akBottom]
      DataField = 'ESTADO'
      DataSource = MainForm.dscCliente
      Items.Strings = (
        'AC'
        'AL'
        'AM'
        'AP'
        'BA'
        'CE'
        'DF'
        'ES'
        'GO'
        'MA'
        'MG'
        'MS'
        'MT'
        'PA'
        'PB'
        'PE'
        'PI'
        'PR'
        'RJ'
        'RN'
        'RO'
        'RR'
        'RS'
        'SC'
        'SE'
        'SP'
        'TO')
      TabOrder = 10
    end
    object dbnavEdit: TDBNavigator
      Left = 112
      Top = 405
      Width = 228
      Height = 25
      DataSource = MainForm.dscCliente
      VisibleButtons = [nbEdit, nbPost, nbCancel]
      Hints.Strings = (
        'First record'
        'Prior record'
        'Next record'
        'Last record'
        'Insert record'
        'Delete record'
        'Editar cliente'
        'Submeter edi'#231#227'o'
        'Cancelar edi'#231#227'o'
        'Refresh data'
        'Apply updates'
        'Cancel updates')
      ParentShowHint = False
      ShowHint = False
      TabOrder = 11
      TabStop = True
    end
  end
end
