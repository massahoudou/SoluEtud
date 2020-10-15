unit historique;

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
    procedure MoisCloseUp(Sender: TObject);
    procedure prenomClick(Sender: TObject);
    procedure nomClick(Sender: TObject);
    procedure RechercheClick(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure prenomKeyPress(Sender: TObject; var Key: Char);
    procedure nomKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Formhistorique: TFormhistorique;

implementation

{$R *.dfm}

uses Imprimer;

procedure TFormhistorique.Button3Click(Sender: TObject);
begin
       with DataM.DM_solde do
            begin
                      active:= false;
                      sql.Clear;
                      sql.Add('SELECT P.date_P,E.nom,E.prenom,E.code_F,P.Montant,C.mois');
                      sql.Add('FROM etudiants E , payer P ,echeance C')  ;
                      sql.Add('WHERE  E.num_E = P.num_E and  C.Num_R=P.num_R ')  ;
                      sql.Add('ORDER BY P.date_P ASC;') ;
                      open;
                      active:= true;

            end;
end;

procedure TFormhistorique.Button6Click(Sender: TObject);
begin
    Form_print.QuickRep2.Preview;
end;

procedure TFormhistorique.MoisCloseUp(Sender: TObject);
begin
if(mois.Text<>'') then
begin
    with DataM.Dm_historique do
            begin
                      active:= false;
                      sql.Clear;
                      sql.Add('    SELECT P.date_P,E.nom,E.prenom,E.code_F,P.Montant,C.mois');
                      sql.Add('FROM etudiants E , payer P ,echeance C')  ;
                      sql.Add('WHERE  E.num_E = P.num_E and  C.Num_R=P.num_R and C.mois=:mois')  ;
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

procedure TFormhistorique.nomKeyPress(Sender: TObject; var Key: Char);
begin
 if not (key  in ['a'..'z','A'..'Z',#8] ) then
    begin
         key :=#0;
    end

end;

procedure TFormhistorique.prenomClick(Sender: TObject);
begin
  prenom.Clear;
end;

procedure TFormhistorique.prenomKeyPress(Sender: TObject; var Key: Char);
begin
  if not (key  in ['a'..'z','A'..'Z',#8] ) then
    begin
         key :=#0;
    end

end;

procedure TFormhistorique.RechercheClick(Sender: TObject);
begin
if(mois.Text<>'') then
begin
    with DataM.dm_historique do
            begin
                      active:= false;
                      sql.Clear;
                      sql.Add('    SELECT P.date_P,E.nom,E.prenom,E.code_F,P.Montant,C.mois');
                      sql.Add('FROM etudiants E , payer P ,echeance C')  ;
                      sql.Add('WHERE  E.num_E = P.num_E and  C.Num_R=P.num_R and C.mois=:mois and nom=:nom and prenom=:prenom')  ;
                      sql.Add('ORDER BY P.date_P ASC;') ;
                      ParamByName('mois').AsString:= mois.KeyValue;
                       ParamByName('nom').AsString:= prenom.Text;
                       ParamByName('prenom').AsString:= nom.Text;
                      open;
                      active:= true;

            end;

end
else
  begin
    if(nom.Text<>'') or (prenom.Text<>'') then
    begin
   with DataM.dm_historique do
              begin
                        active:= false;
                        sql.Clear;
                        sql.Add(' SELECT P.date_P,E.nom,E.prenom,E.code_F,P.Montant,C.mois');
                        sql.Add('FROM etudiants E , payer P ,echeance C')  ;
                        sql.Add('WHERE  E.num_E = P.num_E and  C.Num_R=P.num_R and nom=:N and prenom=:P')  ;
                        sql.Add('ORDER BY P.date_P ASC;') ;
                        ParamByName('N').AsString:= nom.text;
                        paramByname('P').AsString := prenom.Text;
                        open;
                        active:= true;

              end;
    end;

  end;
end;

end.
