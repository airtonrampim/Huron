unit uUtils;

interface

uses
  Vcl.DBCtrls;

type
  { Used to gain access of protected atributes of TDBNavigator, like Buttons }
  TDBNavigatorButtonsVisible = class(TDBNavigator)
  private
    function GetButtons(Index: TNavigateBtn): TNavButton;
  public
    property PublicButtons[Index: TNavigateBtn]: TNavButton read GetButtons;
  end;

procedure SetCaption(Nav: TDBNavigator);

implementation

procedure SetCaption(Nav: TDBNavigator);
begin
  TDBNavigatorButtonsVisible(Nav).PublicButtons[nbEdit].Caption := '&Editar';
  TDBNavigatorButtonsVisible(Nav).PublicButtons[nbPost].Caption := '&Postar';
  TDBNavigatorButtonsVisible(Nav).PublicButtons[nbCancel].Caption := '&Cancelar';
end;

function TDBNavigatorButtonsVisible.GetButtons(Index: TNavigateBtn): TNavButton;
begin
  GetButtons := Self.Buttons[Index];
end;

end.
