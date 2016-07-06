unit uMain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls,
  Vcl.ComCtrls,
  Vcl.TabNotBk, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinOffice2016Colorful,
  dxSkinOffice2016Dark, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic,
  dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, dxSkinscxPCPainter, dxBarBuiltInMenu, cxPC,
  System.Actions, Vcl.ActnList, DbxDevartMySql, Data.FMTBcd, Data.DB,
  cxContainer, cxEdit, cxDBEdit, cxTextEdit, cxMaskEdit, cxSpinEdit, Vcl.Grids,
  Vcl.DBGrids, Datasnap.DBClient, Datasnap.Provider, Data.SqlExpr, Vcl.DBActns;

type
  Tmain = class(TForm)
    Button1: TButton;
    form: TPanel;
    grid: TPanel;
    Panel2: TPanel;
    ActionList1: TActionList;
    Action1: TAction;
    SQLConnection1: TSQLConnection;
    SQLQuery1: TSQLQuery;
    DataSetProvider1: TDataSetProvider;
    ClientDataSet1: TClientDataSet;
    DataSource1: TDataSource;
    SQLQuery1id: TIntegerField;
    SQLQuery1id_cidade: TIntegerField;
    SQLQuery1descricao: TStringField;
    SQLQuery1idade: TIntegerField;
    SQLQuery1id_produto: TIntegerField;
    ClientDataSet1id: TIntegerField;
    ClientDataSet1id_cidade: TIntegerField;
    ClientDataSet1descricao: TStringField;
    ClientDataSet1idade: TIntegerField;
    ClientDataSet1id_produto: TIntegerField;
    DBGrid1: TDBGrid;
    Panel1: TPanel;
    Edit1: TEdit;
    Button2: TButton;
    Label1: TLabel;
    cxDBSpinEdit1: TcxDBSpinEdit;
    Label2: TLabel;
    cxDBSpinEdit2: TcxDBSpinEdit;
    Label3: TLabel;
    cxDBTextEdit1: TcxDBTextEdit;
    Label4: TLabel;
    cxDBSpinEdit3: TcxDBSpinEdit;
    Label5: TLabel;
    cxDBSpinEdit4: TcxDBSpinEdit;
    DatasetFirst1: TDataSetFirst;
    DatasetPrior1: TDataSetPrior;
    DatasetNext1: TDataSetNext;
    DatasetLast1: TDataSetLast;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Action1Execute(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);

  private
    procedure trocap;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  main: Tmain;
  troca: integer;

implementation

{$R *.dfm}

procedure Tmain.Action1Execute(Sender: TObject);
begin
  trocap;
end;

procedure Tmain.Button1Click(Sender: TObject);
begin
  trocap;
end;

procedure Tmain.DBGrid1DblClick(Sender: TObject);
begin
  grid.Visible := false;
  form.Visible := true;
  form.Align := alClient;
  troca := 1;
end;

procedure Tmain.FormCreate(Sender: TObject);
begin
  form.Visible := false;
  grid.Visible := true;
  grid.Align := alClient;
  troca := 2;

end;

procedure Tmain.trocap;
begin
  if troca = 1 then
  begin
    form.Visible := false;
    grid.Visible := true;
    grid.Align := alClient;
    troca := 2;
  end
  else
  begin
    grid.Visible := false;
    form.Visible := true;
    form.Align := alClient;
    troca := 1;
  end;
end;

end.
