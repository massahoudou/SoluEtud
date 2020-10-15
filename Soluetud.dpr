program Soluetud;

uses
  Vcl.Forms,
  Acceuil in 'Acceuil.pas' {form_acceuil},
  Vcl.Themes,
  Vcl.Styles,
  Etudiant in 'Etudiant.pas' {Form_etud},
  DM in 'DM.pas' {DataM: TDataModule},
  Filiere in 'Filiere.pas' {Form_filiere},
  Recouvrement in 'Recouvrement.pas' {Form_recouvr},
  utilisateur in 'utilisateur.pas' {Form_utilisateur},
  Listes in 'Listes.pas' {form_list},
  Solde in 'Solde.pas' {FormSolde},
  Imprimer in 'Imprimer.pas' {Form_print},
  Recu in 'Recu.pas' {impression2},
  historique in 'historique.pas' {Formhistorique},
  connexion in 'connexion.pas' {Form_connexion};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  TStyleManager.TrySetStyle('Tablet Light');
  Application.CreateForm(TForm_connexion, Form_connexion);
  Application.CreateForm(Tform_acceuil, form_acceuil);
  Application.CreateForm(TForm_etud, Form_etud);
  Application.CreateForm(TDataM, DataM);
  Application.CreateForm(TForm_filiere, Form_filiere);
  Application.CreateForm(TForm_recouvr, Form_recouvr);
  Application.CreateForm(TForm_utilisateur, Form_utilisateur);
  Application.CreateForm(Tform_list, form_list);
  Application.CreateForm(TFormSolde, FormSolde);
  Application.CreateForm(TForm_print, Form_print);
  Application.CreateForm(Timpression2, impression2);
  Application.CreateForm(TFormhistorique, Formhistorique);
  Application.Run;
end.
