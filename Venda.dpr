program Venda;

uses
  Vcl.Forms,
  uMainForm in 'uMainForm.pas' {MainForm},
  uCliente in 'uCliente.pas' {ClienteForm},
  uProduto in 'uProduto.pas' {ProdutoForm},
  uPedido in 'uPedido.pas' {PedidoForm},
  uUtils in 'uUtils.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TMainForm, MainForm);
  Application.CreateForm(TClienteForm, ClienteForm);
  Application.CreateForm(TProdutoForm, ProdutoForm);
  Application.CreateForm(TPedidoForm, PedidoForm);
  Application.Run;
end.
