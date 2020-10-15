    unit Acceuil;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Imaging.pngimage, Vcl.ExtCtrls,
  System.ImageList, Vcl.ImgList, Vcl.StdCtrls, Vcl.Menus,Etudiant,DM,filiere,recouvrement,historique,
  Data.DB, Vcl.ComCtrls, Vcl.DBCtrls, Vcl.Grids, Vcl.DBGrids , progressbar,Listes,solde,imprimer,Recu;

type
  Tform_acceuil = class(TForm)
    panel_acceuil: TPanel;
    Image1: TImage;
    btn_recouvr: TButton;
    btn_solde: TButton;
    btn_pay: TButton;
    MainMenu1: TMainMenu;
    Fichier1: TMenuItem;
    Filire1: TMenuItem;
    Recouvrement1: TMenuItem;
    Edit1: TMenuItem;
    Etudiant1: TMenuItem;
    Filire2: TMenuItem;
    Recouvrement2: TMenuItem;
    Quit1: TMenuItem;
    N1: TMenuItem;
    Panel_pay: TPanel;
    Panel1: TPanel;
    Montant: TEdit;
    Mois: TDBLookupComboBox;
    Date: TDateTimePicker;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Button1: TButton;
    Suppr: TButton;
    Modifier: TButton;
    Button2: TButton;
    Payementffectu1: TMenuItem;
    Etudiants1: TMenuItem;
    Quitter: TButton;
    imprimer1: TMenuItem;
    Etudiant2: TMenuItem;
    solde1: TMenuItem;
    Image2: TImage;
    PanelConsulte: TPanel;
    Nom: TEdit;
    Prenom: TEdit;
    DBLF: TDBLookupComboBox;
    DBGrid3: TDBGrid;
    ConsulteRap: TButton;
    Button3: TButton;
    imprimer21: TMenuItem;
    Filiere: TDBLookupComboBox;
    Label1: TLabel;
    Nom2: TEdit;
    Prenom2: TEdit;
    recherche: TButton;
    Button4: TButton;
    Button9: TButton;
    Numero: TEdit;
    DBGrid2: TDBGrid;
    Historique: TPanel;
    DBGrid1: TDBGrid;
    Solde2: TMenuItem;
    Re�u: TButton;
    btn_etud: TButton;
    Image3: TImage;
    Image4: TImage;
    procedure Etudiant1Click(Sender: TObject);
    procedure Filire2Click(Sender: TObject);
    procedure Recouvrement2Click(Sender: TObject);
    procedure btn_recouvrClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure btn_payClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Etudiants1Click(Sender: TObject);
    procedure Filire1Click(Sender: TObject);
    procedure Recouvrement1Click(Sender: TObject);
    procedure btn_soldeClick(Sender: TObject);
    procedure PrenomClick(Sender: TObject);
    procedure NomClick(Sender: TObject);
    procedure ConsulteRapClick(Sender: TObject);
    procedure consulterClick(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure ModifierClick(Sender: TObject);
    procedure SupprClick(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure QuitterClick(Sender: TObject);
    procedure imprimer21Click(Sender: TObject);
    procedure rechercheClick(Sender: TObject);
    procedure DBGrid2CellClick(Column: TColumn);
    procedure Button9Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure FiliereCloseUp(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure Solde2Click(Sender: TObject);
    procedure Payementffectu1Click(Sender: TObject);
    procedure Re�uClick(Sender: TObject);
    procedure Etudiant2Click(Sender: TObject);
    procedure btn_etudClick(Sender: TObject);
    procedure Image4Click(Sender: TObject);
    procedure solde1Click(Sender: TObject);
    procedure MontantKeyPress(Sender: TObject; var Key: Char);
    procedure Nom2KeyPress(Sender: TObject; var Key: Char);
    procedure Prenom2KeyPress(Sender: TObject; var Key: Char);
    procedure NomKeyPress(Sender: TObject; var Key: Char);
    procedure PrenomKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  form_acceuil: Tform_acceuil;

implementation

{$R *.dfm}

uses connexion, utilisateur;

procedure Tform_acceuil.btn_etudClick(Sender: TObject);
begin
  Form_etud.Showmodal;
end;

procedure Tform_acceuil.btn_payClick(Sender: TObject);
begin
panel_pay.Show;
end;

procedure Tform_acceuil.btn_recouvrClick(Sender: TObject);
begin
form_recouvr.Show;
end;

procedure Tform_acceuil.btn_soldeClick(Sender: TObject);
begin
  formsolde.Showmodal;
end;

procedure Tform_acceuil.Button1Click(Sender: TObject);
begin

  with DataM.DM_paye do
  begin
       open;
       insert;
       FieldByName('Num_E').AsString := numero.text;
       FieldByName('Date_P').AsdateTime := Date.date;
       FieldByName('Montant').AsString := Montant.text;
       FieldByName('Num_R').AsString := Mois.KeyValue;
       post;
  end;
  DataM.DM_paye.Refresh;
  dataM.DM_solde.Close;
  dataM.DM_solde.Open;
  dataM.Dm_historique.Close;
  dataM.Dm_historique.Open;
  showMessage('Enregistrer avec succes!!');
end;

procedure Tform_acceuil.Button2Click(Sender: TObject);
begin
    Panel_pay.visible :=false;
    nom2.Clear;
    prenom2.clear;

end;

procedure Tform_acceuil.Button3Click(Sender: TObject);
begin
  panelconsulte.visible:=false;
end;

procedure Tform_acceuil.Button4Click(Sender: TObject);
begin
Dbgrid2.Visible := true;
dbgrid1.Visible := false;
end;

procedure Tform_acceuil.Button5Click(Sender: TObject);
begin
DataM.DM_etud.first;
end;

procedure Tform_acceuil.Button6Click(Sender: TObject);
begin
DataM.DM_etud.Prior;
end;

procedure Tform_acceuil.Button7Click(Sender: TObject);
begin
  DataM.DM_etud.last;
end;

procedure Tform_acceuil.Button8Click(Sender: TObject);
begin
    DataM.DM_etud.Next;
end;

procedure Tform_acceuil.Button9Click(Sender: TObject);
begin
  DBGrid1.Visible:=true;
  dBgrid2.visible := false;
end;

procedure Tform_acceuil.ConsulteRapClick(Sender: TObject);
begin
  panelConsulte.Show;
end;


procedure Tform_acceuil.consulterClick(Sender: TObject);
begin
 with DataM.DM_consulte do
  begin
           if (nom.Text <>'') and(prenom.Text<>'') and (DBLF.Text<>'')  then
            begin
              active:= false;
              sql.Clear;
              sql.Add(' SELECT nom, prenom, code_f, SUM(montant) as montant ');
              sql.Add('FROM etudiants E , payer P')  ;
              sql.Add('WHERE E.num_E=P.num_E  AND code_f=:F AND nom=:N AND prenom=:P')  ;
              sql.Add('ORDER BY E.num_E') ;
              ParamByName('N').AsString := nom.Text;
              ParamByName('F').asstring := DBLF.KeyValue ;
              parambyname('P').AsString := prenom.Text;
              open;
              active:=true;
            end
            else
            begin
               showmessage ('tous les shamps doivent etre rempit');
                active:= false;
              sql.Clear;
              sql.Add(' SELECT nom, prenom, code_f, SUM(montant) as montant ');
              sql.Add('FROM etudiants E , payer P')  ;
              sql.Add('WHERE E.num_E=P.num_E ')  ;
              sql.Add('group by nom');
              sql.Add('ORDER BY E.num_E') ;
              open;
              active:=true;

            end;


  end;
end;

procedure Tform_acceuil.DBGrid1CellClick(Column: TColumn);
begin
  date.Date := Dbgrid1.fields[5].Value;
  nom2.Text := DBgrid1.Fields[1].Value;
  prenom2.Text := Dbgrid1.fields[2].value;
  numero.Text := Dbgrid1.fields[0].value;
  montant.Text := DBGrid1.Fields[4].value;
  mois.keyvalue := DBGrid1.Fields[3].Value;
end;

procedure Tform_acceuil.DBGrid2CellClick(Column: TColumn);
begin
  nom2.Text := DBgrid2.Fields[1].Value;
  prenom2.Text := Dbgrid2.fields[2].value;
  numero.Text := Dbgrid2.fields[0].value;
end;

procedure Tform_acceuil.Etudiant1Click(Sender: TObject);
begin
Form_etud.showmodal;

end;

procedure Tform_acceuil.Etudiant2Click(Sender: TObject);
begin
Form_print.QuickRep2.Preview;
end;

procedure Tform_acceuil.Etudiants1Click(Sender: TObject);
begin
  form_list.Show;
  form_list.panelEtudiant.Visible := true;
end;

procedure Tform_acceuil.FiliereCloseUp(Sender: TObject);
begin
if (Filiere.Text <> '') then
begin
    with DataM.DM_etud_query do
      begin
                active:= false;
                sql.Clear;
                sql.Add(' SELECT *');
                sql.Add('FROM etudiants ')  ;
                sql.Add('WHERE code_F=:Filiere');
                sql.Add('ORDER BY num_E');
                ParamByName('Filiere').AsString:= Filiere.KeyValue;
                open;
                active:= true;
      end;
      DBGrid1.Visible:= false;
      dbgrid2.visible := true;
end;

end;


procedure Tform_acceuil.Filire1Click(Sender: TObject);
begin
 form_list.Show;
  form_list.PanelFiliere.show;
end;

procedure Tform_acceuil.Filire2Click(Sender: TObject);
begin
    Form_filiere.showmodal;
end;

procedure Tform_acceuil.FormActivate(Sender: TObject);
begin

  Panel_pay.Visible:= false;
  PanelConsulte.Visible:=false ;
  DBGrid1.Visible := false;

 end;

procedure Tform_acceuil.Image4Click(Sender: TObject);
begin
    form_utilisateur.showmodal;
end;

procedure Tform_acceuil.imprimer21Click(Sender: TObject);
begin
  Form_print.QRlist_etud.Preview;
end;

procedure Tform_acceuil.ModifierClick(Sender: TObject);
begin
  with DataM.Payer_update do
  begin
   active:= false;
                sql.Clear;
                sql.Add(' update payer set date_P=:D , Montant=:M');
                sql.Add(' WHERE   num_R=:R and num_E=:E;')  ;
                ParamByName('D').asdatetime :=  date.date;
                parambyname('M').AsString  := Montant.Text;
                parambyname('E').AsString  := numero.Text;
                parambyname('R').AsString  := mois.keyvalue;
                ExecSQL;
  end;
  DataM.Dm_historique.Refresh;
                   DataM.Dm_historique.Close;
                    DataM.Dm_historique.Open();
                    ShowMessage('Modifier avec success !');

end;

procedure Tform_acceuil.MontantKeyPress(Sender: TObject; var Key: Char);
begin
 if not (key  in ['0'..'9',#8] ) then
 key :=#0;
end;

procedure Tform_acceuil.Nom2KeyPress(Sender: TObject; var Key: Char);
begin
 if not (key  in ['a'..'z','A'..'Z',#8] ) then
    begin
         key :=#0;
    end
end;

procedure Tform_acceuil.NomClick(Sender: TObject);
begin
nom.Clear;
end;

procedure Tform_acceuil.NomKeyPress(Sender: TObject; var Key: Char);
begin
     if not (key  in ['a'..'z','A'..'Z',#8] ) then
    begin
         key :=#0;
    end
end;

procedure Tform_acceuil.Payementffectu1Click(Sender: TObject);
begin
  Formhistorique.Showmodal;
end;

procedure Tform_acceuil.Prenom2KeyPress(Sender: TObject; var Key: Char);
begin
 if not (key  in ['a'..'z','A'..'Z',#8] ) then
    begin
         key :=#0;
    end
end;

procedure Tform_acceuil.PrenomClick(Sender: TObject);
begin
prenom.clear;
end;

procedure Tform_acceuil.PrenomKeyPress(Sender: TObject; var Key: Char);
begin
 if not (key  in ['a'..'z','A'..'Z',#8] ) then
    begin
         key :=#0;
    end
end;

procedure Tform_acceuil.QuitterClick(Sender: TObject);
begin
if MessageDlg('Quitter l application ', mtConfirmation,[mbYes, mbNo],0,mbYes) = mrYes then
application.Terminate;
end;

procedure Tform_acceuil.rechercheClick(Sender: TObject);
begin
if (Nom2.text<>'') and (prenom2.Text<>'') then
    begin
          with DataM.Dm_Historique do
      begin
                active:= false;
                sql.Clear;
                sql.Add(' SELECT  E.num_E, nom, prenom,C.mois , P.montant,P.Date_P');
                sql.Add('FROM etudiants E , payer P ,echeance C')  ;
                sql.Add('WHERE E.num_E=P.num_E AND  C.num_R=P.num_R  AND nom=:nom AND E.prenom=:prenom')  ;
                sql.Add('ORDER BY P.date_P') ;
                ParamByName('nom').AsString:=nom2.Text;
                ParamByName('prenom').AsString:= prenom2.Text;
                open;
                active:= true;
      end;
      if(DataM.Dm_Historique.RowsAffected >= 1 )  then
      begin

              DBGrid1.Visible:= true;
              DBGrid2.Visible := false;
      end
      else
        begin
          showmessage('Pas encore de payement enregistrer pour cet etudiant');
          DBGrid1.Visible:= true;
          DBGrid2.Visible := false;
           with DataM.Dm_Historique do
            begin
                      active:= false;
                      sql.Clear;
                      sql.Add('SELECT  E.num_E, nom, prenom,C.mois , P.montant,P.Date_P');
                      sql.Add('FROM etudiants E , payer P ,echeance C')  ;
                      sql.Add('WHERE E.num_E=P.num_E AND  C.num_R=P.num_R');
                      sql.Add('ORDER BY P.date_P');
                      open;
                      active:= true;
            end;
        end;
    end
    else
    begin
        with DataM.Dm_Historique do
            begin
                      active:= false;
                      sql.Clear;
                      sql.Add(' SELECT  E.num_E, nom, prenom,C.mois , P.montant,P.Date_P');
                      sql.Add('FROM etudiants E , payer P ,echeance C')  ;
                      sql.Add('WHERE E.num_E=P.num_E and C.num_R=P.num_R ');
                      sql.Add('ORDER BY P.date_P') ;
                      open;
                      active:= true;
            end;

    end;


end;

procedure Tform_acceuil.Recouvrement1Click(Sender: TObject);
begin
form_list.Show;
form_list.panelRecouvre.show;
end;

procedure Tform_acceuil.Recouvrement2Click(Sender: TObject);
begin

      Form_recouvr.Showmodal;
end;

procedure Tform_acceuil.Re�uClick(Sender: TObject);
begin
    if (nom2.Text<>'' ) and (prenom2.Text<>'')  then
    begin
       with DataM.DM_Solde do
        begin
             active:= false;
                      sql.Clear;
                      sql.Add(' SELECT  E.num_E, nom, prenom ,code_F, SUM(P.montant) as montant,P.Date_P');
                      sql.Add('FROM etudiants E , payer P ');
                      sql.Add('WHERE E.num_E=P.num_E and nom=:nom and prenom=:prenom ');
                      ParamByName('nom').AsString:=nom2.Text;
                      ParamByName('prenom').AsString:= prenom2.Text;
                open;
                      open;
                      active:= true;
                      if (dataM.DM_solde.RowsAffected =1) then
                      begin
                              impression2.QuickRep1.Preview;
                      end
                      else
                      begin
                        showMessage('Une erreur c''est produite!!');
                      end;

        end;
    end
    else
    begin
      showmessage('Veuiller Renseigner les champs Nom et Prenom :)' )
    end;
end;

procedure Tform_acceuil.solde1Click(Sender: TObject);
begin
  Form_print.qrsolde.Preview;
end;

procedure Tform_acceuil.Solde2Click(Sender: TObject);
begin
  FormSolde.Showmodal;
end;

procedure Tform_acceuil.SupprClick(Sender: TObject);
begin


      with DataM.payer_suppr do
    begin
         ParamByName('E').AsString :=numero.text;
         paramByname('D').asdate  := DBGrid1.Fields[5].value;
         paramByname('M').Asstring := dbgrid1.fields[4].Value;
      ExecSQL
    end;
    DataM.DM_paye.Refresh;
      DataM.Dm_historique.Refresh;
    ShowMessage('Supprimer avec success!');
end;
end.
