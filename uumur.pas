unit uumur;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, StdCtrls, DateUtils;

type

  { TForm1 }

  TForm1 = class(TForm)
    btnHasil: TButton;
    ebNama: TEdit;
    ebTahunlahir: TEdit;
    ebTahunsekarang: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Lumur: TLabel;
    Ltahunsekarang: TLabel;
    Ltahunlahir: TLabel;
    Lnama: TLabel;
    procedure btnHasilClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.btnHasilClick(Sender: TObject);
var
  nama:string;
  tahunlahir, tahunsekarang, umur:integer;
begin
  nama:=ebNama.Text;
  tahunlahir:= StrToInt(ebTahunlahir.Text);
  tahunsekarang:= StrToInt(ebTahunSekarang.Text);

  umur := tahunsekarang - tahunlahir;

  Lnama.Caption := nama;
  Ltahunlahir.Caption := IntToStr(tahunlahir);
  Ltahunsekarang.Caption := IntToStr(tahunsekarang);
  Lumur.Caption := IntToStr(umur);
end;

procedure TForm1.FormShow(Sender: TObject);
begin
  ebTahunsekarang.Text:=IntToStr(YearOf(now));
end;

end.

