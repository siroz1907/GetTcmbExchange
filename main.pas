unit main;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls,Menus, Grids, ValEdit, ExtCtrls, ComCtrls;



type
  TForm1 = class(TForm)
    StatusBar1: TStatusBar;
    Panel1: TPanel;
    Edit1: TEdit;
    Memo1: TMemo;
    Button1: TButton;
    Label1: TLabel;
    procedure btnGetClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }

    function fnStringToCurrency(prm:string):Currency;
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses untTcMb;

{$R *.dfm}

procedure TForm1.btnGetClick(Sender: TObject);
var
   xml : IXMLTarih_DateType;
   i : integer;
   str : string;
begin
  xml := LoadTarih_Date('http://www.tcmb.gov.tr/kurlar/today.xml');

  StatusBar1.Panels[0].Text := IntToStr(xml.Count);

  memo1.Lines.Clear;
  str := 'Cur.Code' //6
         +' | Forex Buy'//12
         +' | Forex Sel'//12
         +' | Bankn Buy'//12
         +' | Bankn Sel'//12
         ;
  memo1.Lines.Add(str);
  for i := 0 to (xml.Count-1)do
  begin


    str := xml.Currency[i].Kod + StringOfChar(' ', 12-length(xml.Currency[i].Kod))
          +xml.Currency[i].ForexBuying + StringOfChar(' ', 12-length(xml.Currency[i].ForexBuying))
          +xml.Currency[i].ForexSelling + StringOfChar(' ', 12-length(xml.Currency[i].ForexSelling))
          +xml.Currency[i].BanknoteBuying + StringOfChar(' ', 12-length(xml.Currency[i].BanknoteBuying))
          +xml.Currency[i].BanknoteSelling+ StringOfChar(' ', 12-length(xml.Currency[i].BanknoteSelling));
    memo1.Lines.Add(str);


  end;
end;



function TForm1.fnStringToCurrency(prm: string): Currency;
begin

  if(pos(DecimalSeparator, prm)=0)then //or if(pos(FormatSettings.DecimalSeparator, prm)=0)then
    prm := StringReplace(prm, '.',DecimalSeparator, [rfReplaceAll]);

  result := StrToCurrDef(prm, 0);
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  memo1.Lines.Clear;
end;

end.
