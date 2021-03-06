unit Listes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs,DM, Data.DB, Vcl.ExtCtrls, Vcl.Grids,imprimer,
  Vcl.DBGrids, Vcl.ComCtrls, Vcl.StdCtrls, Vcl.DBCtrls;

type
  Tform_list = class(TForm)
    PanelEtudiant: TPanel;
    Panel1: TPanel;
    DBGrid1: TDBGrid;
    PanelFiliere: TPanel;
    Panel2: TPanel;
    DBGrid2: TDBGrid;
    PanelRecouvre: TPanel;
    Panel4: TPanel;
    DBGrid3: TDBGrid;
    Button1: TButton;
    Filiere: TDBLookupComboBox;
    Label1: TLabel;
    Button3: TButton;
    Button7: TButton;
    Button6: TButton;
    Button5: TButton;
    procedure FormActivate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FiliereCloseUp(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  form_list: Tform_list;

implementation

{$R *.dfm}

uses imprimer2;

procedure Tform_list.Button1Click(Sender: TObject);
begin
  form_list.hide;
  Form_print.QRlist_etud.Preview;

end;

procedure Tform_list.Button3Click(Sender: TObject);
begin
dataM.etud_list.next;
end;

procedure Tform_list.Button5Click(Sender: TObject);
begin
     dataM.etud_list.first;
end;

procedure Tform_list.Button6Click(Sender: TObject);
begin
dataM.etud_list.Prior;
end;

procedure Tform_list.Button7Click(Sender: TObject);
begin
  dataM.etud_list.Last
end;

procedure Tform_list.FiliereCloseUp(Sender: TObject);
begin
if(filiere.Text<>'') then
begin
    with DataM.etud_list do
            begin
                      active:= false;
                      sql.Clear;
                      sql.Add('  SELECT  * ');
                      sql.Add('FROM etudiants ')  ;
                      sql.Add('WHERE  code_F=:F')  ;
                      sql.Add('ORDER BY num_E') ;
                      ParamByName('F').AsString:= Filiere.KeyValue;
                      open;
                      active:= true;
            end;

end;
end;

procedure Tform_list.FormActivate(Sender: TObject);
begin
  panelEtudiant.Visible:= true;
  panelfiliere.Visible := false;
  panelRecouvre.Visible := false;
end;

end.
