unit principal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    edtEvento: TEdit;
    Label1: TLabel;
    lblEvento: TLabel;
    procedure lblEventoMouseEnter(Sender: TObject);
    procedure lblEventoMouseLeave(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}



procedure TForm1.lblEventoMouseEnter(Sender: TObject);
begin
   lblEvento.Caption := 'Mouse em cima ';
end;

procedure TForm1.lblEventoMouseLeave(Sender: TObject);
begin
    lblEvento.Caption := 'Mouse saiu ';
end;

end.
