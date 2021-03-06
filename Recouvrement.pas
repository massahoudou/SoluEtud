unit Recouvrement;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DM, Data.DB, Vcl.StdCtrls,
  Vcl.Imaging.pngimage, Vcl.ExtCtrls, Vcl.ComCtrls, Vcl.Grids, Vcl.DBGrids;

type
  TForm_recouvr = class(TForm)
    date: TDateTimePicker;
    Montant: TEdit;
    Label2: TLabel;
    Label3: TLabel;
    Ajouter: TButton;
    Suppr: TButton;
    Modifié: TButton;
    DBGrid1: TDBGrid;
    Button1: TButton;
    Panel1: TPanel;
    mois: TEdit;
    Label1: TLabel;
    procedure AjouterClick(Sender: TObject);
    procedure SupprClick(Sender: TObject);
    procedure ModifiéClick(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure Button1Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure moisKeyPress(Sender: TObject; var Key: Char);
    procedure MontantKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form_recouvr: TForm_recouvr;

implementation

{$R *.dfm}

procedure TForm_recouvr.AjouterClick(Sender: TObject);
begin
    with DataM.DM_recouvr do
    begin
      open ;
      insert ;
      FieldByName('Montant').AsString := montant.Text;
      FieldByName('Date_R').AsDateTime := date.Date ;
      FieldByname('mois').AsString  := mois.Text;
       post;
    end;
       DataM.DM_recouvr.Refresh;
       Montant.Clear;
       mois.Clear;

end;

procedure TForm_recouvr.Button1Click(Sender: TObject);
begin
       montant.Clear;
       mois.clear;
end;

procedure TForm_recouvr.DBGrid1CellClick(Column: TColumn);
begin
  mois.Text := Dbgrid1.fields[1].value;
  montant.Text := DBGrid1.Fields[2].Value;
  date.date := Dbgrid1.Fields[3].Value;

end;

procedure TForm_recouvr.FormActivate(Sender: TObject);
begin
  montant.Clear;
  mois.Clear;
end;

procedure TForm_recouvr.ModifiéClick(Sender: TObject);
begin
  with DataM.Recouvr_update do
  begin
      ParamByName('M').AsString := montant.Text;
      ParamByName('D').AsDateTime := date.Date ;
      ParamByname('O').asstring  := mois.Text;
      ParamByName('E').AsString  := DBGrid1.Fields[0].Value;
    ExecSQL;
  end;
   DataM.DM_recouvr.Refresh;
   Montant.Clear;
   mois.Clear;
   showMessage('modiifier avec success!!');

end;

procedure TForm_recouvr.moisKeyPress(Sender: TObject; var Key: Char);
begin
 if not (key  in ['a'..'z','A'..'Z',#8] ) then
    begin
         key :=#0;
    end

end;

procedure TForm_recouvr.MontantKeyPress(Sender: TObject; var Key: Char);
begin
if not (key  in ['0'..'9',#8] ) then
 key :=#0;
end;

procedure TForm_recouvr.SupprClick(Sender: TObject);
begin
     with DataM.Recouvr_supp do
    begin
      ParamByName('N').AsString  := DBGrid1.Fields[0].Value;
      ExecSQL
    end;
       DataM.DM_recouvr.Refresh;
       Montant.Clear;
       mois.Clear;

end;

end.
