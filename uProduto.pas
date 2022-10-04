unit uProduto;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.Mask, Vcl.DBCtrls,
  Vcl.Grids, Vcl.DBGrids, Vcl.ExtCtrls, uMainForm;

type
  TProdutoForm = class(TForm)
    gbxProdutos: TGroupBox;
    gbxProductData: TGroupBox;
    dbmmDescricao: TDBMemo;
    lblCusto: TLabel;
    dbedtCusto: TDBEdit;
    lblPreco: TLabel;
    dbedtPreco: TDBEdit;
    lblDescricao: TLabel;
    dbnavInsDel: TDBNavigator;
    dbnavEdit: TDBNavigator;
    dbgrdClientes: TDBGrid;
    lblTitulo: TLabel;
    dbedtTitulo: TDBEdit;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ProdutoForm: TProdutoForm;

implementation

{$R *.dfm}

uses
  uUtils;

procedure TProdutoForm.FormCreate(Sender: TObject);
begin
  SetCaption(Self.dbnavEdit);
end;

end.
