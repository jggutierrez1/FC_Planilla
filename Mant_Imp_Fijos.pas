unit Mant_Imp_Fijos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, PngBitBtn, Vcl.ExtCtrls, Vcl.DBCtrls, Vcl.ComCtrls, Vcl.Mask, DBCtrlsEh,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def, FireDAC.Stan.Pool,
  FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.MySQL, FireDAC.Phys.MySQLDef, FireDAC.VCLUI.Wait, FireDAC.Stan.Param, FireDAC.DatS,
  FireDAC.DApt.Intf, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TfMant_Imp_Fijos = class(TForm)
    StatusBar1: TStatusBar;
    oBtnExit: TPngBitBtn;
    oBtnAbort: TPngBitBtn;
    oBtnSave: TPngBitBtn;
    oBtnEdit: TPngBitBtn;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    oPorc_SegS: TDBNumberEditEh;
    Label1: TLabel;
    oPorc_SegE: TDBNumberEditEh;
    Label2: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    oConection: TFDConnection;
    otImp_Fijos: TFDTable;
    oDS_Imp_Fijos: TDataSource;
    GroupBox1: TGroupBox;
    Label4: TLabel;
    oPorc_Isr1: TDBNumberEditEh;
    oPorc_Isr2: TDBNumberEditEh;
    Label7: TLabel;
    Label8: TLabel;
    Label10: TLabel;
    Label9: TLabel;
    omonto_isr1_hasta: TDBNumberEditEh;
    omonto_isr2_hasta: TDBNumberEditEh;
    Label11: TLabel;
    Label3: TLabel;
    oporc_isr3: TDBNumberEditEh;
    Label12: TLabel;
    Label13: TLabel;
    omonto_isr3_hasta: TDBNumberEditEh;
    Label14: TLabel;
    omonto_isr1_desde: TDBNumberEditEh;
    Label15: TLabel;
    omonto_isr2_desde: TDBNumberEditEh;
    Label16: TLabel;
    omonto_isr3_desde: TDBNumberEditEh;
    procedure FormCreate(Sender: TObject);
    procedure oBtnExitClick(Sender: TObject);
    procedure oBtnDeleteClick(Sender: TObject);
    procedure oBtnNewClick(Sender: TObject);
    procedure Activa_Objetos(bPar: boolean);
    procedure Action_Control(pOption: integer);
    procedure oBtnSaveClick(Sender: TObject);
    procedure oBtnAbortClick(Sender: TObject);
    procedure oBtnEditClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fMant_Imp_Fijos: TfMant_Imp_Fijos;

implementation

uses utilesv20;
{$R *.dfm}

procedure TfMant_Imp_Fijos.FormCreate(Sender: TObject);
begin
  freeandnil(oConection);
  // self.ResizeKit1.Enabled := utiles.Ctrl_Resize;
  self.PageControl1.ActivePageIndex := 0;
  self.otImp_Fijos.Connection := futilesv20.oPublicCnn;
  self.otImp_Fijos.Active := true;
  self.oDS_Imp_Fijos.Enabled := true;

end;

procedure TfMant_Imp_Fijos.FormShow(Sender: TObject);
begin
  self.Activa_Objetos(false);
  self.PageControl1.ActivePageIndex := 0;
end;

procedure TfMant_Imp_Fijos.oBtnAbortClick(Sender: TObject);
begin
  self.otImp_Fijos.Cancel;
  self.Action_Control(7);
  self.Activa_Objetos(false);
  self.PageControl1.ActivePageIndex := 0;
end;

procedure TfMant_Imp_Fijos.oBtnDeleteClick(Sender: TObject);
var
  nResp: integer;
begin
  if otImp_Fijos.isEmpty then
  begin
    self.Action_Control(6);
    exit;
  end;
  self.Action_Control(3);
  nResp := MessageDlg('Seguro que desea borrar eliminar el registro alctual?', mtConfirmation, [mbYes, mbNo], 0);
  If (nResp = mrYes) Then
  begin
    self.otImp_Fijos.Delete;
    self.otImp_Fijos.Refresh;
  end;

end;

procedure TfMant_Imp_Fijos.oBtnEditClick(Sender: TObject);
begin
  if otImp_Fijos.isEmpty then
  begin
    self.Action_Control(6);
    exit;
  end;
  self.PageControl1.ActivePageIndex := 0;
  self.otImp_Fijos.Edit;
  self.Action_Control(2);
  self.Activa_Objetos(true);
  self.oPorc_SegS.SetFocus;
end;

procedure TfMant_Imp_Fijos.oBtnExitClick(Sender: TObject);
begin
  close;
end;

procedure TfMant_Imp_Fijos.oBtnNewClick(Sender: TObject);
begin
  self.PageControl1.ActivePageIndex := 0;
  self.otImp_Fijos.Insert;
  self.Action_Control(1);
  self.Activa_Objetos(true);
  self.otImp_Fijos.FieldByName('Porc_Seg').Value := 0;
  self.oPorc_SegS.SetFocus;
end;

procedure TfMant_Imp_Fijos.oBtnSaveClick(Sender: TObject);
begin
  self.otImp_Fijos.Post;
  self.Action_Control(6);
  self.Activa_Objetos(false);
  self.PageControl1.ActivePageIndex := 0;
end;

procedure TfMant_Imp_Fijos.Action_Control(pOption: integer);
begin
  if ((pOption = 1) or (pOption = 2)) then
  begin
    oBtnEdit.Visible := false;
    oBtnExit.Enabled := false;

    oBtnAbort.Top := oBtnEdit.Top;
    oBtnAbort.Left := oBtnEdit.Left;

    oBtnAbort.Visible := true;
    oBtnSave.Visible := true;
    oBtnExit.Visible := false;
  end;

  if ((pOption = 6) or (pOption = 7)) then
  begin
    oBtnEdit.Visible := true;
    oBtnExit.Enabled := true;

    oBtnAbort.Top := oBtnEdit.Top;
    oBtnAbort.Left := oBtnEdit.Left;

    oBtnAbort.Visible := false;
    oBtnSave.Visible := false;
    oBtnExit.Visible := true;
  end;

end;

procedure TfMant_Imp_Fijos.Activa_Objetos(bPar: boolean);
var
  i: Word;
begin
  for i := 0 to self.ComponentCount - 1 do
  begin
    if (self.Components[i] is TDBEdit) then
      TDBEdit(self.Components[i]).Enabled := bPar;
    if (self.Components[i] is TDBMemo) then
      TDBMemo(self.Components[i]).Enabled := bPar;
    if (self.Components[i] is TDBNumberEditEh) then
      TDBNumberEditEh(self.Components[i]).Enabled := bPar;
    if (self.Components[i] is TDBCheckBoxEh) then
      TDBCheckBoxEh(self.Components[i]).Enabled := bPar;
    if (self.Components[i] is TDBCheckBox) then
      TDBCheckBox(self.Components[i]).Enabled := bPar;
  end;
end;

end.
