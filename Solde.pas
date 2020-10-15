unit Solde;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DM, Data.DB, Vcl.StdCtrls, Vcl.Grids,
  Vcl.DBGrids, Vcl.ExtCtrls,imprimer, Vcl.DBCtrls;

type
  TFormSolde = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Button6: TButton;
    Recherche: TButton;
    DBGrid1: TDBGrid;
    Filiere: TDBLookupComboBox;
    Label1: TLabel;
    nom: TEdit;
    Button3: TButton;
    Label2: TLabel;
    montant: TEdit;
    procedure RechercheClick(Sender: TObject);
    procedure FiliereCloseUp(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure nomClick(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure montantChange(Sender: TObject);
    procedure montantKeyPress(Sender: TObject; var Key: Char);
    procedure nomKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormSolde: TFormSolde;

implementation

{$R *.dfm}

procedure TFormSolde.Button3Click(Sender: TObject);
begin
     with DataM.DM_solde do
            begin
                      active:= false;
                      sql.Clear;
                      sql.Add('  SELECT E.Num_E,E.nom,E.prenom,E.code_F,SUM(P.Montant) as Montant,P.date_P');
                      sql.Add('FROM etudiants E , payer P')  ;
                      sql.Add('WHERE  E.num_E = P.num_E')  ;
                      sql.Add('GROUP By nom');
                      sql.Add('ORDER BY Montant ASC;') ;
                      open;
                      active:= true;
            end;

end;

procedure TFormSolde.Button6Click(Sender: TObject);
begin
  Form_print.qrsolde.Preview;
end;

procedure TFormSolde.FiliereCloseUp(Sender: TObject);
begin
if(filiere.Text<>'') then
begin
    with DataM.DM_solde do
            begin
                      active:= false;
                      sql.Clear;
                      sql.Add('  SELECT E.Num_E,E.nom,E.prenom,E.code_F,SUM(P.Montant) as Montant,P.date_P');
                      sql.Add('FROM etudiants E , payer P')  ;
                      sql.Add('WHERE  E.num_E = P.num_E and E.code_F=:F')  ;
                      sql.Add('GROUP By nom');
                      sql.Add('ORDER BY Montant ASC;') ;
                      ParamByName('F').AsString:= Filiere.KeyValue;
                      open;
                      active:= true;
            end;

end;
end;

procedure TFormSolde.FormActivate(Sender: TObject);
begin
with dataM.DM_solde do
begin

  refresh;
  close ;
  open;
end;

end;

procedure TFormSolde.montantChange(Sender: TObject);
begin
 if (Filiere.Text='')  then
     begin
            with DataM.DM_solde do
                    begin
                              active:= false;
                              sql.Clear;
                              sql.Add('  SELECT E.Num_E,E.nom,E.prenom,E.code_F,SUM(P.Montant) as Montant,P.date_P');
                              sql.Add('FROM etudiants E , payer P')  ;
                              sql.Add('WHERE  E.num_E = P.num_E ')  ;
                              sql.Add('GROUP By nom');
                              sql.Add('HAVING sum(P.montant) =:montant');
                              sql.Add('ORDER BY Montant ASC;') ;
                              ParamByName('montant').AsString:= montant.text;
                              open;
                              active:= true;
                    end;

     end
     else
     begin
          with DataM.DM_solde do
                    begin
                              active:= false;
                              sql.Clear;
                              sql.Add('  SELECT E.Num_E,E.nom,E.prenom,E.code_F,SUM(P.Montant) as Montant,P.date_P');
                              sql.Add('FROM etudiants E , payer P')  ;
                              sql.Add('WHERE  E.num_E = P.num_E and E.code_F=:F ')  ;
                              sql.Add('GROUP By nom');
                              sql.Add('HAVING sum(P.montant) >=:montant');
                              sql.Add('ORDER BY Montant ASC;') ;
                              ParamByName('montant').AsString:=  montant.text;
                              ParamByName('F').AsString:= Filiere.KeyValue;
                              open;
                              active:= true;
                    end;
     end;
end;

procedure TFormSolde.montantKeyPress(Sender: TObject; var Key: Char);
begin
if not (key  in ['0'..'9',#8] ) then
 key :=#0;
end;


procedure TFormSolde.nomClick(Sender: TObject);
begin
nom.Clear;
end;

procedure TFormSolde.nomKeyPress(Sender: TObject; var Key: Char);
begin
  if not (key  in ['a'..'z','A'..'Z',#8] ) then
    begin
         key :=#0;
    end
end;

procedure TFormSolde.RechercheClick(Sender: TObject);
begin
if (filiere.Text<>'') and(montant.Text<>'') then
  begin
    if (nom.Text<>'' ) then
    begin

              with DataM.DM_solde do
                    begin
                              active:= false;
                              sql.Clear;
                              sql.Add('  SELECT E.Num_E,E.nom,E.prenom,E.code_F,SUM(P.Montant) as Montant,P.date_P');
                              sql.Add('FROM etudiants E , payer P')  ;
                              sql.Add('WHERE  E.num_E = P.num_E and E.code_F=:F and nom=:nom ')  ;
                              sql.Add('GROUP By nom');
                              sql.Add('HAVING sum(P.montant) >=:montant');
                              sql.Add('ORDER BY Montant ASC;') ;
                              ParamByName('F').AsString:= Filiere.KeyValue;
                              ParamByName('nom').AsString:= nom.text;
                              ParamByName('montant').AsString:= montant.text;
                              open;
                              active:= true;
                    end;


    end;
  end
else
  begin

           if (nom.Text<>'' ) then
        begin
               with DataM.DM_solde do
                    begin
                              active:= false;
                              sql.Clear;
                              sql.Add('  SELECT E.Num_E,E.nom,E.prenom,E.code_F,SUM(P.Montant) as Montant,P.date_P');
                              sql.Add('FROM etudiants E , payer P')  ;
                              sql.Add('WHERE  E.num_E = P.num_E and  nom=:nom')  ;
                              sql.Add('GROUP By nom');
                              sql.Add('ORDER BY Montant ASC;') ;
                              ParamByName('nom').AsString:= nom.text;
                              open;
                              active:= true;
                    end;

        end
  end;


end;

end.
