unit uCliente;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Mask, Vcl.StdCtrls, Data.DB,
  Data.SqlExpr, Datasnap.DBClient, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.VCLUI.Wait,
  FireDAC.Comp.Client, FireDAC.Phys.FB, FireDAC.Phys.FBDef, FireDAC.Phys.IBBase,
  FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt,
  FireDAC.Comp.DataSet, Vcl.DBCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.ExtCtrls, uMainForm;

type
  TClienteForm = class(TForm)
    gbxClientes: TGroupBox;
    gbxCadastro: TGroupBox;
    lblRazaoSocial: TLabel;
    lblNomeFantasia: TLabel;
    lblEmail: TLabel;
    lblCNPJ: TLabel;
    lblTelefone: TLabel;
    lblEndereco: TLabel;
    lblNumero: TLabel;
    lblBairro: TLabel;
    lblComplemento: TLabel;
    lblCidade: TLabel;
    lblEstado: TLabel;
    dbedtRazaoSocial: TDBEdit;
    dbgrdClientes: TDBGrid;
    dbedtNomeFantasia: TDBEdit;
    dbedtEmail: TDBEdit;
    dbedtCNPJ: TDBEdit;
    dbedtTelefone: TDBEdit;
    dbedtEndereco: TDBEdit;
    dbedtNumero: TDBEdit;
    dbedtBairro: TDBEdit;
    dbedtComplemento: TDBEdit;
    dbedtCidade: TDBEdit;
    dbcbxEstado: TDBComboBox;
    dbnavInsDel: TDBNavigator;
    dbnavEdit: TDBNavigator;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ClienteForm: TClienteForm;

implementation

{$R *.dfm}

uses
  uUtils;


procedure TClienteForm.FormCreate(Sender: TObject);
begin
  SetCaption(Self.dbnavEdit);
end;

end.
