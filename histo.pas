unit histo;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.DBCtrls,Dm;

type
  TFormhistorique = class(TForm)
    prenom: TEdit;
    nom: TEdit;
    Panel1: TPanel;
    DBGrid1: TDBGrid;
    Button3: TButton;
    Mois: TDBLookupComboBox;
    Label1: TLabel;
    Recherche: TButton;
    Button6: TButton;
    Image1: TImage;
    procedure MoisCloseUp(Sender: TObject);
    procedure prenomClick(Sender: TObject);
    procedure nomClick(Sender: TObject);
    procedure RechercheClick(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Formhistorique: TFormhistorique;

implementation

{$R *.dfm}

procedure TFormhistorique.Button3Click(Sender: TObject);
begin
       with DataM.DM_solde do
            begin
                      active:= false;
                      sql.Clear;
                      sql.Add('    SELECT P.date_P,E.nom,E.prenom,E.code_F,P.Montant,C.mois');
                      sql.Add('FROM etudiants E , payer P ,echeance C')  ;
                      sql.Add('WHERE  E.num_E = P.num_E and  C.Num_R=P.num_R ')  ;
                      sql.Add('ORDER BY P.date_P ASC;') ;
                      open;
                      active:= true;

            end;
end;

procedure TFormhistorique.MoisCloseUp(Sender: TObject);
begin
if(mois.Text<>'') then
begin
    with DataM.DM_solde do
            begin
                      active:= false;
                      sql.Clear;
                      sql.Add('    SELECT P.date_P,E.nom,E.prenom,E.code_F,P.Montant,C.mois');
                      sql.Add('FROM etudiants E , payer P ,echeance C')  ;
                      sql.Add('WHERE  E.num_E = P.num_E and  C.Num_R=P.num_R and C.moi=:mois')  ;
                      sql.Add('ORDER BY P.date_P ASC;') ;
                      ParamByName('mois').AsString:= mois.KeyValue;
                      open;
                      active:= true;

            end;

end;
end;

procedure TFormhistorique.nomClick(Sender: TObject);
begin
nom.Clear;
end;

procedure TFormhistorique.prenomClick(Sender: TObject);
begin
  prenom.Clear;
end;

procedure TFormhistorique.RechercheClick(Sender: TObject);
begin
    if(mois.Text<>'') then
begin
    with DataM.DM_solde do
            begin
                      active:= false;
                      sql.Clear;
                      sql.Add('    SELECT P.date_P,E.nom,E.prenom,E.code_F,P.Montant,C.mois');
                      sql.Add('FROM etudiants E , payer P ,echeance C')  ;
                      sql.Add('WHERE  E.num_E = P.num_E and  C.Num_R=P.num_R and C.moi=:mois')  ;
                      sql.Add('ORDER BY P.date_P ASC;') ;
                      ParamByName('mois').AsString:= mois.KeyValue;
                      open;
                      active:= true;

            end;

end
else
  begin
    if(nom.Text<>'') or (prenom.Text<>'') then
    begin
   with DataM.DM_solde do
              begin
                        active:= false;
                        sql.Clear;
                        sql.Add(' SELECT P.date_P,E.nom,E.prenom,E.code_F,P.Montant,C.mois');
                        sql.Add('FROM etudiants E , payer P ,echeance C')  ;
                        sql.Add('WHERE  E.num_E = P.num_E and  C.Num_R=P.num_R and nom=:nom or prenom=:prenom')  ;
                        sql.Add('ORDER BY P.date_P ASC;') ;
                        ParamByName('nom').AsString:= nom.text;
                        paramByname('prenom').AsString := prenom.Text;
                        open;
                        active:= true;

              end;
    end;

  end;
end;

end.
