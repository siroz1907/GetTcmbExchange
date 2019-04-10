
{*****************************************************************}
{                                                                 }
{                        XML Data Binding                         }
{                                                                 }
{         Generated on: 10.04.2019 14:22:46                       }
{       Generated from: http://www.tcmb.gov.tr/kurlar/today.xml   }
{                                                                 }
{*****************************************************************}

unit untTcMb;

interface

uses xmldom, XMLDoc, XMLIntf;

type

{ Forward Decls }

  IXMLTarih_DateType = interface;
  IXMLCurrencyType = interface;

{ IXMLTarih_DateType }

  IXMLTarih_DateType = interface(IXMLNodeCollection)
    ['{F47909F6-D2C7-45F2-BEFE-F47988D3DE55}']
    { Property Accessors }
    function Get_Tarih: UnicodeString;
    function Get_Date: UnicodeString;
    function Get_Bulten_No: UnicodeString;
    function Get_Currency(Index: Integer): IXMLCurrencyType;
    procedure Set_Tarih(Value: UnicodeString);
    procedure Set_Date(Value: UnicodeString);
    procedure Set_Bulten_No(Value: UnicodeString);
    { Methods & Properties }
    function Add: IXMLCurrencyType;
    function Insert(const Index: Integer): IXMLCurrencyType;
    property Tarih: UnicodeString read Get_Tarih write Set_Tarih;
    property Date: UnicodeString read Get_Date write Set_Date;
    property Bulten_No: UnicodeString read Get_Bulten_No write Set_Bulten_No;
    property Currency[Index: Integer]: IXMLCurrencyType read Get_Currency; default;
  end;

{ IXMLCurrencyType }

  IXMLCurrencyType = interface(IXMLNode)
    ['{6077E5A4-BCFE-45D2-B917-2A249CCB9F78}']
    { Property Accessors }
    function Get_CrossOrder: Integer;
    function Get_Kod: UnicodeString;
    function Get_CurrencyCode: UnicodeString;
    function Get_Unit_: Integer;
    function Get_Isim: UnicodeString;
    function Get_CurrencyName: UnicodeString;
    function Get_ForexBuying: UnicodeString;
    function Get_ForexSelling: UnicodeString;
    function Get_BanknoteBuying: UnicodeString;
    function Get_BanknoteSelling: UnicodeString;
    function Get_CrossRateUSD: UnicodeString;
    function Get_CrossRateOther: UnicodeString;
    procedure Set_CrossOrder(Value: Integer);
    procedure Set_Kod(Value: UnicodeString);
    procedure Set_CurrencyCode(Value: UnicodeString);
    procedure Set_Unit_(Value: Integer);
    procedure Set_Isim(Value: UnicodeString);
    procedure Set_CurrencyName(Value: UnicodeString);
    procedure Set_ForexBuying(Value: UnicodeString);
    procedure Set_ForexSelling(Value: UnicodeString);
    procedure Set_BanknoteBuying(Value: UnicodeString);
    procedure Set_BanknoteSelling(Value: UnicodeString);
    procedure Set_CrossRateUSD(Value: UnicodeString);
    procedure Set_CrossRateOther(Value: UnicodeString);
    { Methods & Properties }
    property CrossOrder: Integer read Get_CrossOrder write Set_CrossOrder;
    property Kod: UnicodeString read Get_Kod write Set_Kod;
    property CurrencyCode: UnicodeString read Get_CurrencyCode write Set_CurrencyCode;
    property Unit_: Integer read Get_Unit_ write Set_Unit_;
    property Isim: UnicodeString read Get_Isim write Set_Isim;
    property CurrencyName: UnicodeString read Get_CurrencyName write Set_CurrencyName;
    property ForexBuying: UnicodeString read Get_ForexBuying write Set_ForexBuying;
    property ForexSelling: UnicodeString read Get_ForexSelling write Set_ForexSelling;
    property BanknoteBuying: UnicodeString read Get_BanknoteBuying write Set_BanknoteBuying;
    property BanknoteSelling: UnicodeString read Get_BanknoteSelling write Set_BanknoteSelling;
    property CrossRateUSD: UnicodeString read Get_CrossRateUSD write Set_CrossRateUSD;
    property CrossRateOther: UnicodeString read Get_CrossRateOther write Set_CrossRateOther;
  end;

{ Forward Decls }

  TXMLTarih_DateType = class;
  TXMLCurrencyType = class;

{ TXMLTarih_DateType }

  TXMLTarih_DateType = class(TXMLNodeCollection, IXMLTarih_DateType)
  protected
    { IXMLTarih_DateType }
    function Get_Tarih: UnicodeString;
    function Get_Date: UnicodeString;
    function Get_Bulten_No: UnicodeString;
    function Get_Currency(Index: Integer): IXMLCurrencyType;
    procedure Set_Tarih(Value: UnicodeString);
    procedure Set_Date(Value: UnicodeString);
    procedure Set_Bulten_No(Value: UnicodeString);
    function Add: IXMLCurrencyType;
    function Insert(const Index: Integer): IXMLCurrencyType;
  public
    procedure AfterConstruction; override;
  end;

{ TXMLCurrencyType }

  TXMLCurrencyType = class(TXMLNode, IXMLCurrencyType)
  protected
    { IXMLCurrencyType }
    function Get_CrossOrder: Integer;
    function Get_Kod: UnicodeString;
    function Get_CurrencyCode: UnicodeString;
    function Get_Unit_: Integer;
    function Get_Isim: UnicodeString;
    function Get_CurrencyName: UnicodeString;
    function Get_ForexBuying: UnicodeString;
    function Get_ForexSelling: UnicodeString;
    function Get_BanknoteBuying: UnicodeString;
    function Get_BanknoteSelling: UnicodeString;
    function Get_CrossRateUSD: UnicodeString;
    function Get_CrossRateOther: UnicodeString;
    procedure Set_CrossOrder(Value: Integer);
    procedure Set_Kod(Value: UnicodeString);
    procedure Set_CurrencyCode(Value: UnicodeString);
    procedure Set_Unit_(Value: Integer);
    procedure Set_Isim(Value: UnicodeString);
    procedure Set_CurrencyName(Value: UnicodeString);
    procedure Set_ForexBuying(Value: UnicodeString);
    procedure Set_ForexSelling(Value: UnicodeString);
    procedure Set_BanknoteBuying(Value: UnicodeString);
    procedure Set_BanknoteSelling(Value: UnicodeString);
    procedure Set_CrossRateUSD(Value: UnicodeString);
    procedure Set_CrossRateOther(Value: UnicodeString);
  end;

{ Global Functions }

function GetTarih_Date(Doc: IXMLDocument): IXMLTarih_DateType;
function LoadTarih_Date(const FileName: string): IXMLTarih_DateType;
function NewTarih_Date: IXMLTarih_DateType;

const
  TargetNamespace = '';

implementation

{ Global Functions }

function GetTarih_Date(Doc: IXMLDocument): IXMLTarih_DateType;
begin
  Result := Doc.GetDocBinding('Tarih_Date', TXMLTarih_DateType, TargetNamespace) as IXMLTarih_DateType;
end;

function LoadTarih_Date(const FileName: string): IXMLTarih_DateType;
begin
  Result := LoadXMLDocument(FileName).GetDocBinding('Tarih_Date', TXMLTarih_DateType, TargetNamespace) as IXMLTarih_DateType;
end;

function NewTarih_Date: IXMLTarih_DateType;
begin
  Result := NewXMLDocument.GetDocBinding('Tarih_Date', TXMLTarih_DateType, TargetNamespace) as IXMLTarih_DateType;
end;

{ TXMLTarih_DateType }

procedure TXMLTarih_DateType.AfterConstruction;
begin
  RegisterChildNode('Currency', TXMLCurrencyType);
  ItemTag := 'Currency';
  ItemInterface := IXMLCurrencyType;
  inherited;
end;

function TXMLTarih_DateType.Get_Tarih: UnicodeString;
begin
  Result := AttributeNodes['Tarih'].Text;
end;

procedure TXMLTarih_DateType.Set_Tarih(Value: UnicodeString);
begin
  SetAttribute('Tarih', Value);
end;

function TXMLTarih_DateType.Get_Date: UnicodeString;
begin
  Result := AttributeNodes['Date'].Text;
end;

procedure TXMLTarih_DateType.Set_Date(Value: UnicodeString);
begin
  SetAttribute('Date', Value);
end;

function TXMLTarih_DateType.Get_Bulten_No: UnicodeString;
begin
  Result := AttributeNodes['Bulten_No'].Text;
end;

procedure TXMLTarih_DateType.Set_Bulten_No(Value: UnicodeString);
begin
  SetAttribute('Bulten_No', Value);
end;

function TXMLTarih_DateType.Get_Currency(Index: Integer): IXMLCurrencyType;
begin
  Result := List[Index] as IXMLCurrencyType;
end;

function TXMLTarih_DateType.Add: IXMLCurrencyType;
begin
  Result := AddItem(-1) as IXMLCurrencyType;
end;

function TXMLTarih_DateType.Insert(const Index: Integer): IXMLCurrencyType;
begin
  Result := AddItem(Index) as IXMLCurrencyType;
end;

{ TXMLCurrencyType }

function TXMLCurrencyType.Get_CrossOrder: Integer;
begin
  Result := AttributeNodes['CrossOrder'].NodeValue;
end;

procedure TXMLCurrencyType.Set_CrossOrder(Value: Integer);
begin
  SetAttribute('CrossOrder', Value);
end;

function TXMLCurrencyType.Get_Kod: UnicodeString;
begin
  Result := AttributeNodes['Kod'].Text;
end;

procedure TXMLCurrencyType.Set_Kod(Value: UnicodeString);
begin
  SetAttribute('Kod', Value);
end;

function TXMLCurrencyType.Get_CurrencyCode: UnicodeString;
begin
  Result := AttributeNodes['CurrencyCode'].Text;
end;

procedure TXMLCurrencyType.Set_CurrencyCode(Value: UnicodeString);
begin
  SetAttribute('CurrencyCode', Value);
end;

function TXMLCurrencyType.Get_Unit_: Integer;
begin
  Result := ChildNodes['Unit'].NodeValue;
end;

procedure TXMLCurrencyType.Set_Unit_(Value: Integer);
begin
  ChildNodes['Unit'].NodeValue := Value;
end;

function TXMLCurrencyType.Get_Isim: UnicodeString;
begin
  Result := ChildNodes['Isim'].Text;
end;

procedure TXMLCurrencyType.Set_Isim(Value: UnicodeString);
begin
  ChildNodes['Isim'].NodeValue := Value;
end;

function TXMLCurrencyType.Get_CurrencyName: UnicodeString;
begin
  Result := ChildNodes['CurrencyName'].Text;
end;

procedure TXMLCurrencyType.Set_CurrencyName(Value: UnicodeString);
begin
  ChildNodes['CurrencyName'].NodeValue := Value;
end;

function TXMLCurrencyType.Get_ForexBuying: UnicodeString;
begin
  Result := ChildNodes['ForexBuying'].Text;
end;

procedure TXMLCurrencyType.Set_ForexBuying(Value: UnicodeString);
begin
  ChildNodes['ForexBuying'].NodeValue := Value;
end;

function TXMLCurrencyType.Get_ForexSelling: UnicodeString;
begin
  Result := ChildNodes['ForexSelling'].Text;
end;

procedure TXMLCurrencyType.Set_ForexSelling(Value: UnicodeString);
begin
  ChildNodes['ForexSelling'].NodeValue := Value;
end;

function TXMLCurrencyType.Get_BanknoteBuying: UnicodeString;
begin
  Result := ChildNodes['BanknoteBuying'].Text;
end;

procedure TXMLCurrencyType.Set_BanknoteBuying(Value: UnicodeString);
begin
  ChildNodes['BanknoteBuying'].NodeValue := Value;
end;

function TXMLCurrencyType.Get_BanknoteSelling: UnicodeString;
begin
  Result := ChildNodes['BanknoteSelling'].Text;
end;

procedure TXMLCurrencyType.Set_BanknoteSelling(Value: UnicodeString);
begin
  ChildNodes['BanknoteSelling'].NodeValue := Value;
end;

function TXMLCurrencyType.Get_CrossRateUSD: UnicodeString;
begin
  Result := ChildNodes['CrossRateUSD'].Text;
end;

procedure TXMLCurrencyType.Set_CrossRateUSD(Value: UnicodeString);
begin
  ChildNodes['CrossRateUSD'].NodeValue := Value;
end;

function TXMLCurrencyType.Get_CrossRateOther: UnicodeString;
begin
  Result := ChildNodes['CrossRateOther'].Text;
end;

procedure TXMLCurrencyType.Set_CrossRateOther(Value: UnicodeString);
begin
  ChildNodes['CrossRateOther'].NodeValue := Value;
end;

end.