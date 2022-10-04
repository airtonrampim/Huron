unit uMainForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.UI.Intf,
  FireDAC.Phys.Intf, FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Stan.Async,
  FireDAC.Phys, FireDAC.Phys.FB, FireDAC.Phys.FBDef, FireDAC.VCLUI.Wait,
  Data.DB, FireDAC.Comp.Client, FireDAC.Stan.Param, FireDAC.DatS,
  FireDAC.DApt.Intf, FireDAC.DApt, FireDAC.Comp.DataSet;

type
  TMainForm = class(TForm)
    btnCliente: TButton;
    fdcConnection: TFDConnection;
    btnProduto: TButton;
    btnPedido: TButton;
    dscCliente: TDataSource;
    fdtCliente: TFDTable;
    fdtProduto: TFDTable;
    fdtProdutoID_PRODUTO: TIntegerField;
    fdtProdutoTITULO: TStringField;
    fdtProdutoDESCRICAO: TStringField;
    fdtProdutoCUSTO: TFMTBCDField;
    fdtProdutoPRECO: TFMTBCDField;
    dscProduto: TDataSource;
    fdtClienteID_CLIENTE: TIntegerField;
    fdtClienteRAZAOSOCIAL: TStringField;
    fdtClienteNOMEFANTASIA: TStringField;
    fdtClienteEMAIL: TStringField;
    fdtClienteCNPJ: TStringField;
    fdtClienteTELEFONE: TStringField;
    fdtClienteENDERECO: TStringField;
    fdtClienteNUMERO: TStringField;
    fdtClienteBAIRRO: TStringField;
    fdtClienteCOMPLEMENTO: TStringField;
    fdtClienteCIDADE: TStringField;
    fdtClienteESTADO: TStringField;
    procedure btnClienteClick(Sender: TObject);
    procedure btnProdutoClick(Sender: TObject);
    procedure btnPedidoClick(Sender: TObject);
    procedure fdtClienteBeforeDelete(DataSet: TDataSet);
    procedure fdtProdutoBeforeDelete(DataSet: TDataSet);
    procedure fdtClienteBeforePost(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  MainForm: TMainForm;

implementation

{$R *.dfm}

uses
   uCliente, uProduto, uPedido, System.RegularExpressions;

procedure TMainForm.btnClienteClick(Sender: TObject);
begin
  ClienteForm.Show;
end;

procedure TMainForm.btnProdutoClick(Sender: TObject);
begin
  ProdutoForm.Show;
end;

procedure TMainForm.btnPedidoClick(Sender: TObject);
begin
  PedidoForm.Show;
end;

procedure TMainForm.fdtClienteBeforeDelete(DataSet: TDataSet);
begin
  if MessageDlg('Deletar cliente?', mtConfirmation, mbOKCancel, 0) = idCancel then
    Abort;
end;

procedure TMainForm.fdtClienteBeforePost(DataSet: TDataSet);
begin
  if not TRegEx.IsMatch(Self.fdtCliente.FieldByName('EMAIL').Value,
                        '^\s*(?:[^@\s]+|[^@\s]*".+"[^@\s]*)@[^@\s]+\s*$') then
  begin
    MessageBox(ClienteForm.Handle, 'Email inválido', 'Erro', MB_ICONHAND + MB_OK);
    Abort;
  end;
end;

procedure TMainForm.fdtProdutoBeforeDelete(DataSet: TDataSet);
begin
  if MessageDlg('Deletar produto?', mtConfirmation, mbOKCancel, 0) = idCancel then
    Abort;
end;

end.
