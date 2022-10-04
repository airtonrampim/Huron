unit uPedido;

interface

uses
  uMainForm, Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.Grids, Vcl.DBGrids,
  Vcl.DBCtrls, Vcl.Mask, Vcl.ExtCtrls, Vcl.NumberBox, frxClass, frxDBSet;

type
  TPedidoForm = class(TForm)
    gbxPedidos: TGroupBox;
    gbxCadastro: TGroupBox;
    gbxProdutosPedido: TGroupBox;
    dblcbxTitulo: TDBLookupComboBox;
    dbgrdPedidoProd: TDBGrid;
    dblcbxRazaoSocial: TDBLookupComboBox;
    lblRazaoSocial: TLabel;
    lblTitulo: TLabel;
    lblValor: TLabel;
    lblQuantidade: TLabel;
    dbnavPedidoInsDel: TDBNavigator;
    dbedtValor: TDBEdit;
    dbedtQuantidade: TDBEdit;
    frxRelatorio: TfrxReport;
    dbgrdPedidos: TDBGrid;
    dbnavPedidoProdInsDel: TDBNavigator;
    btnSalvar: TButton;
    btnImprimir: TButton;
    frxdbPedidoProduto: TfrxDBDataset;
    frxdbPedido: TfrxDBDataset;
    fdqryPedido: TFDQuery;
    fdscProdutos: TFDSchemaAdapter;
    fdtPedido: TFDTable;
    fdtPedidoID_PEDIDO: TIntegerField;
    fdtPedidoID_CLIENTE: TIntegerField;
    fdtPedidoRAZAOSOCIAL: TStringField;
    dscPedido: TDataSource;
    fdtPedidoProduto: TFDTable;
    fdtPedidoProdutoID_PEDIDO: TIntegerField;
    fdtPedidoProdutoID_PRODUTO: TIntegerField;
    fdtPedidoProdutoVALOR: TFMTBCDField;
    fdtPedidoProdutoQUANTIDADE: TIntegerField;
    fdtPedidoProdutoTITULO: TStringField;
    fdtPedidoProdutoTOTAL: TFloatField;
    fdtPedidoProdutoPRECO_PRODUTO: TFloatField;
    dscPedidoProduto: TDataSource;
    fdqryPedidoRAZAOSOCIAL: TStringField;
    fdqryPedidoNOMEFANTASIA: TStringField;
    fdqryPedidoEMAIL: TStringField;
    fdqryPedidoCNPJ: TStringField;
    fdqryPedidoTELEFONE: TStringField;
    fdqryPedidoENDERECO: TStringField;
    fdqryPedidoNUMERO: TStringField;
    fdqryPedidoBAIRRO: TStringField;
    fdqryPedidoCOMPLEMENTO: TStringField;
    fdqryPedidoCIDADE: TStringField;
    fdqryPedidoESTADO: TStringField;
    procedure btnSalvarClick(Sender: TObject);
    procedure btnImprimirClick(Sender: TObject);
    procedure fdtPedidoBeforeDelete(DataSet: TDataSet);
    procedure fdtPedidoAfterDelete(DataSet: TDataSet);
    procedure fdtPedidoProdutoCalcFields(DataSet: TDataSet);
    procedure fdtPedidoProdutoID_PRODUTOChange(Sender: TField);
    procedure fdtPedidoID_CLIENTEChange(Sender: TField);
    procedure dscPedidoProdutoStateChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  PedidoForm: TPedidoForm;

implementation

{$R *.dfm}

procedure TPedidoForm.btnSalvarClick(Sender: TObject);
begin
  if Self.fdtPedidoProduto.State in dsWriteModes then
    Self.fdtPedidoProduto.Post;
  if Self.fdtPedido.State in dsWriteModes then
    Self.fdtPedido.Post;
  Self.fdscProdutos.ApplyUpdates;
  Self.fdscProdutos.CommitUpdates;

  Self.btnSalvar.Enabled := False;
  Self.btnImprimir.Enabled := not Self.btnSalvar.Enabled;
end;

procedure TPedidoForm.dscPedidoProdutoStateChange(Sender: TObject);
begin
  Self.btnSalvar.Enabled := Self.fdtPedido.UpdatesPending or Self.fdtPedidoProduto.UpdatesPending;
  Self.btnImprimir.Enabled := not Self.btnSalvar.Enabled;
end;

procedure TPedidoForm.fdtPedidoAfterDelete(DataSet: TDataSet);
begin
  Self.btnSalvarClick(DataSet);
end;

procedure TPedidoForm.fdtPedidoBeforeDelete(DataSet: TDataSet);
begin
  if MessageDlg('Deletar pedido?', mtConfirmation, mbOKCancel, 0) = idCancel then
    Abort;
end;

procedure TPedidoForm.fdtPedidoID_CLIENTEChange(Sender: TField);
begin
  Sender.DataSet.Post;
end;

procedure TPedidoForm.fdtPedidoProdutoCalcFields(DataSet: TDataSet);
begin
  if (not Self.fdtPedidoProduto.FieldByName('VALOR').IsNull) and (not Self.fdtPedidoProduto.FieldByName('QUANTIDADE').IsNull) then
    Self.fdtPedidoProduto.FieldByName('TOTAL').Value := Self.fdtPedidoProduto.FieldByName('VALOR').Value*Self.fdtPedidoProduto.FieldByName('QUANTIDADE').Value;
end;

procedure TPedidoForm.fdtPedidoProdutoID_PRODUTOChange(Sender: TField);
begin
  Self.fdtPedidoProduto.FieldByName('VALOR').Value := Self.fdtPedidoProduto.FieldByName('PRECO_PRODUTO').Value;
  Self.fdtPedidoProduto.Post;
end;

procedure TPedidoForm.btnImprimirClick(Sender: TObject);
begin
  Self.fdqryPedido.Close;
  Self.fdqryPedido.ParamByName('ID_Pedido').Value := Self.fdtPedido.FieldByName('ID_Pedido').Value;
  Self.fdqryPedido.Open;

  if Self.frxRelatorio.PrepareReport then
    Self.frxRelatorio.ShowPreparedReport;
end;

end.
