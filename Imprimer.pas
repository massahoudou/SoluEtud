unit Imprimer;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs,DM, QRCtrls, QuickRpt, Vcl.ExtCtrls;

type
  TForm_print = class(TForm)
    Panel_imprime_etud: TPanel;
    QRlist_etud: TQuickRep;
    PageHeaderBand1: TQRBand;
    PanelSolde: TPanel;
    QuickRep1: TQuickRep;
    qrsolde: TQuickRep;
    QRBand1: TQRBand;
    QRBand2: TQRBand;
    QRBand3: TQRBand;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel14: TQRLabel;
    QRLabel15: TQRLabel;
    QRBand4: TQRBand;
    QRDBText8: TQRDBText;
    QRDBText9: TQRDBText;
    QRDBText10: TQRDBText;
    QRDBText12: TQRDBText;
    QRDBText14: TQRDBText;
    QRBand5: TQRBand;
    QRShape9: TQRShape;
    QRShape10: TQRShape;
    QRShape11: TQRShape;
    QRShape12: TQRShape;
    QRShape13: TQRShape;
    QRDBText11: TQRDBText;
    QRLabel12: TQRLabel;
    Panelhistorique: TPanel;
    QuickRep2: TQuickRep;
    DetailBand2: TQRBand;
    TitleBand1: TQRBand;
    QRLabel7: TQRLabel;
    QRLabel20: TQRLabel;
    QRLabel24: TQRLabel;
    DetailBand1: TQRBand;
    QRShape18: TQRShape;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRShape17: TQRShape;
    QRShape16: TQRShape;
    QRShape15: TQRShape;
    QRShape14: TQRShape;
    QRShape8: TQRShape;
    QRDBText7: TQRDBText;
    QRShape3: TQRShape;
    QRShape5: TQRShape;
    QRShape6: TQRShape;
    QRShape7: TQRShape;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRShape1: TQRShape;
    QRLabel5: TQRLabel;
    QRShape2: TQRShape;
    QRLabel6: TQRLabel;
    QRShape4: TQRShape;
    QRLabel8: TQRLabel;
    QRShape20: TQRShape;
    QRDBText17: TQRDBText;
    QRLabel25: TQRLabel;
    QRShape19: TQRShape;
    QRShape21: TQRShape;
    QRShape22: TQRShape;
    QRShape23: TQRShape;
    QRShape24: TQRShape;
    TitleBand2: TQRBand;
    PageHeaderBand2: TQRBand;
    QRLabel13: TQRLabel;
    QRShape26: TQRShape;
    QRShape27: TQRShape;
    QRShape28: TQRShape;
    QRShape29: TQRShape;
    QRShape30: TQRShape;
    QRLabel17: TQRLabel;
    QRLabel18: TQRLabel;
    QRLabel19: TQRLabel;
    QRLabel21: TQRLabel;
    QRLabel22: TQRLabel;
    QRDBText20: TQRDBText;
    QRDBText21: TQRDBText;
    QRDBText22: TQRDBText;
    QRDBText23: TQRDBText;
    QRDBText24: TQRDBText;
    QRLabel23: TQRLabel;
    QRLabel26: TQRLabel;
    QRLabel27: TQRLabel;
    QRLabel28: TQRLabel;
    QRLabel16: TQRLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form_print: TForm_print;

implementation

{$R *.dfm}

end.
