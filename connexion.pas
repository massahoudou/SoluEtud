unit connexion;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls;

type
  TForm_connexion = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    login: TEdit;
    mdp: TEdit;
    Image2: TImage;
    Image3: TImage;
    Connexion: TButton;
    Annuler: TButton;
    CheckBox1: TCheckBox;
    procedure AnnulerClick(Sender: TObject);
    procedure ConnexionClick(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form_connexion: TForm_connexion;

implementation

{$R *.dfm}

uses DM, Acceuil;

procedure TForm_connexion.AnnulerClick(Sender: TObject);
begin
  login.Clear;
  mdp.Clear;
end;

procedure TForm_connexion.CheckBox1Click(Sender: TObject);
begin
if CheckBox1.Checked then
mdp.PasswordChar := #0  else  mdp.PasswordChar :='*';
end;

procedure TForm_connexion.ConnexionClick(Sender: TObject);
begin
  if(login.Text='') then
    begin
       showmessage('Login manquant !');
       login.SetFocus;
       abort;
    end
  else if (mdp.Text='') then
    begin
        showmessage('mot de passe manquant!');
    end
    else
    begin
      with DataM.DM_admin do
        begin
          active:= false;
          sql.Clear;
           sql.Add('select id,login ,mdp From utilisateur where login=:login and mdp=:mdp;');
          ParamByName('login').AsString := login.Text;
          ParamByName('mdp').AsString := mdp.Text;
          active := true;
          open;
        end;
        if(dataM.DM_admin.RecordCount=1) then
          begin
             login.Clear;
             mdp.Clear;

             form_acceuil.Showmodal;
             Form_connexion.hide;
          end
          else
            begin
              ShowMessage('Login ou mot de passe incorrect!');
              mdp.Clear;
              login.SetFocus;
            end;
    end;
end;

end.
