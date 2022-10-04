object ProdutoForm: TProdutoForm
  Left = 0
  Top = 0
  Caption = 'Produto'
  ClientHeight = 486
  ClientWidth = 651
  Color = clBtnFace
  CustomTitleBar.CaptionAlignment = taCenter
  Constraints.MinHeight = 525
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
    651
    486)
  PixelsPerInch = 96
  TextHeight = 13
  object gbxProdutos: TGroupBox
    Left = 16
    Top = 32
    Width = 289
    Height = 441
    Anchors = [akLeft, akTop, akBottom]
    Caption = 'Selecione um produto'
    TabOrder = 0
    DesignSize = (
      289
      441)
    object dbnavInsDel: TDBNavigator
      Left = 215
      Top = 404
      Width = 66
      Height = 25
      DataSource = MainForm.dscProduto
      VisibleButtons = [nbInsert, nbDelete]
      Anchors = [akRight, akBottom]
      Hints.Strings = (
        'First record'
        'Prior record'
        'Next record'
        'Last record'
        'Inserir produto'
        'Deletar produto'
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
    object dbgrdClientes: TDBGrid
      Left = 8
      Top = 21
      Width = 273
      Height = 374
      Anchors = [akLeft, akTop, akBottom]
      DataSource = MainForm.dscProduto
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
          FieldName = 'ID_PRODUTO'
          Width = 15
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TITULO'
          Width = 220
          Visible = True
        end>
    end
  end
  object gbxProductData: TGroupBox
    Left = 328
    Top = 32
    Width = 305
    Height = 446
    Anchors = [akLeft, akTop, akRight, akBottom]
    Caption = 'Dados do produto selecionado'
    TabOrder = 1
    DesignSize = (
      305
      446)
    object lblCusto: TLabel
      Left = 16
      Top = 345
      Width = 28
      Height = 13
      Anchors = [akLeft, akBottom]
      Caption = 'C&usto'
      FocusControl = dbedtCusto
    end
    object lblPreco: TLabel
      Left = 192
      Top = 345
      Width = 75
      Height = 13
      Anchors = [akRight, akBottom]
      Caption = 'Pre'#231'o de &venda'
      FocusControl = dbedtPreco
    end
    object lblDescricao: TLabel
      Left = 16
      Top = 69
      Width = 46
      Height = 13
      Caption = '&Descri'#231#227'o'
      FocusControl = dbmmDescricao
    end
    object lblTitulo: TLabel
      Left = 16
      Top = 23
      Width = 26
      Height = 13
      Caption = '&T'#237'tulo'
      FocusControl = dbedtTitulo
    end
    object dbmmDescricao: TDBMemo
      Left = 16
      Top = 88
      Width = 273
      Height = 252
      Anchors = [akLeft, akTop, akRight, akBottom]
      DataField = 'DESCRICAO'
      DataSource = MainForm.dscProduto
      TabOrder = 1
    end
    object dbedtCusto: TDBEdit
      Left = 16
      Top = 364
      Width = 97
      Height = 21
      Anchors = [akLeft, akBottom]
      DataField = 'CUSTO'
      DataSource = MainForm.dscProduto
      TabOrder = 2
    end
    object dbedtPreco: TDBEdit
      Left = 192
      Top = 364
      Width = 97
      Height = 21
      Anchors = [akRight, akBottom]
      DataField = 'PRECO'
      DataSource = MainForm.dscProduto
      TabOrder = 3
    end
    object dbnavEdit: TDBNavigator
      Left = 61
      Top = 404
      Width = 228
      Height = 25
      DataSource = MainForm.dscProduto
      VisibleButtons = [nbEdit, nbPost, nbCancel]
      Anchors = [akRight, akBottom]
      TabOrder = 4
      TabStop = True
    end
    object dbedtTitulo: TDBEdit
      Left = 16
      Top = 42
      Width = 273
      Height = 21
      Anchors = [akLeft, akTop, akRight]
      DataField = 'TITULO'
      DataSource = MainForm.dscProduto
      TabOrder = 0
    end
  end
end
