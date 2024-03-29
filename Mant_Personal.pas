unit Mant_Personal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf,
  FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys,
  FireDAC.Phys.MySQL, FireDAC.Phys.MySQLDef, FireDAC.VCLUI.Wait,
  FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.StdCtrls,
  Vcl.Buttons, PngBitBtn, Vcl.ExtCtrls, Vcl.DBCtrls, Vcl.Mask, Vcl.ComCtrls,
  DBGridEh, DBCtrlsEh, DBLookupEh, Vcl.ExtDlgs, DateUtils,
  DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh, EhLibVCL,
  GridsEh, DBAxisGridsEh,
  ResizeKit, MemTableDataEh, MemTableEh;

type
  TfMant_Personal = class(TForm)
    oDBNav: TDBNavigator;
    oBtnExit: TPngBitBtn;
    oBtnAbort: TPngBitBtn;
    oBtnSave: TPngBitBtn;
    oBtnFind: TPngBitBtn;
    oBtnDelete: TPngBitBtn;
    oBtnEdit: TPngBitBtn;
    oBtnNew: TPngBitBtn;
    oBtnPrint: TPngBitBtn;
    oDS_Personal: TDataSource;
    oConection: TFDConnection;
    otPersonal: TFDTable;
    StatusBar1: TStatusBar;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    Label1: TLabel;
    oPer_num: TDBEdit;
    Label2: TLabel;
    oPer_nom_primer: TDBEdit;
    Label3: TLabel;
    oPer_nom_segundo: TDBEdit;
    Label4: TLabel;
    oPer_apell_paterno: TDBEdit;
    Label5: TLabel;
    oPer_apelli_materno: TDBEdit;
    olNombre_Full: TLabel;
    Label8: TLabel;
    oPer_direccion: TDBMemo;
    Label9: TLabel;
    oPer_telef1: TDBEdit;
    Label10: TLabel;
    oPer_telef2: TDBEdit;
    Label11: TLabel;
    oPer_telef_movil: TDBEdit;
    Label12: TLabel;
    oPer_correo_electr: TDBEdit;
    oLst_Status_Civil: TDBComboBoxEh;
    Label13: TLabel;
    Label14: TLabel;
    oLst_Sexo: TDBComboBoxEh;
    oPer_fecha_nac: TDBDateTimeEditEh;
    Label15: TLabel;
    Label16: TLabel;
    oPer_fecha_ingreso: TDBDateTimeEditEh;
    oEdad: TDBNumberEditEh;
    Label17: TLabel;
    Label19: TLabel;
    oPer_nacionalidad: TDBEdit;
    Label20: TLabel;
    oPer_nip: TDBEdit;
    oCk_Status: TDBCheckBoxEh;
    oBtn_Add_Img: TPngBitBtn;
    oBtn_Del_Img: TPngBitBtn;
    oPer_image_file: TDBEdit;
    oImage: TImage;
    OpenTextFileDialog1: TOpenTextFileDialog;
    TabSheet3: TTabSheet;
    GroupBox1: TGroupBox;
    Label6: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    oPer_contacto_nom: TDBEdit;
    oPer_contacto_movil: TDBEdit;
    oPer_contacto_email: TDBEdit;
    oPer_contacto_telefono: TDBEdit;
    Label24: TLabel;
    oPer_notas: TDBMemo;
    Label25: TLabel;
    oPer_fecha_finrela: TDBDateTimeEditEh;
    otNombre_Full: TEdit;
    DBGridEh1: TDBGridEh;
    otAgent_Cred: TFDTable;
    oDs_Agent_Cred: TDataSource;
    oBtn_Adm_Acr: TPngBitBtn;
    otPpersonal_deduc: TFDTable;
    oDs_Personal_deduc: TDataSource;
    MemTableEh1: TMemTableEh;
    MemTableEh1tipo: TIntegerField;
    MemTableEh1descripcion: TStringField;
    Label7: TLabel;
    DBNumberEditEh1: TDBNumberEditEh;
    PngBitBtn1: TPngBitBtn;
    TabSheet4: TTabSheet;
    Label18: TLabel;
    oFecha_Alta: TDBDateTimeEditEh;
    Label32: TLabel;
    DBEdit1: TDBEdit;
    Label26: TLabel;
    oFecha_Mof: TDBDateTimeEditEh;
    Label33: TLabel;
    DBEdit2: TDBEdit;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Activa_Objetos(bPar: boolean);
    procedure Action_Control(pOption: integer);
    procedure oBtnExitClick(Sender: TObject);
    procedure oBtnFindClick(Sender: TObject);
    procedure oBtnDeleteClick(Sender: TObject);
    procedure oBtnEditClick(Sender: TObject);
    procedure oBtnNewClick(Sender: TObject);
    procedure oBtn_Del_ImgClick(Sender: TObject);
    procedure oBtn_Add_ImgClick(Sender: TObject);
    procedure oBtnAbortClick(Sender: TObject);
    procedure oBtnSaveClick(Sender: TObject);
    procedure otPersonalBeforeRefresh(DataSet: TDataSet);
    procedure Show_calc_fields();
    procedure AssgnTabs;
    procedure Enabled_Screen(bFlag: boolean);
    procedure EnterAsTab(Sender: TObject; var Key: Char);
    procedure otPersonalBeforePost(DataSet: TDataSet);
    procedure oDBNavClick(Sender: TObject; Button: TNavigateBtn);
    procedure Clear_Screen;
    procedure oBtn_Adm_AcrClick(Sender: TObject);
  private
    iOption: integer;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fMant_Personal: TfMant_Personal;

implementation

USES utilesv20, BuscarGenM2, Mant_Acreedores;
{$R *.dfm}

procedure TfMant_Personal.FormCreate(Sender: TObject);
begin
  self.iOption := 0;
  freeandnil(oConection);
  // self.ResizeKit1.Enabled := utiles.Ctrl_Resize;
  self.PageControl1.ActivePageIndex := 0;
  self.otPersonal.Connection := futilesv20.oPublicCnn;
  self.otPpersonal_deduc.Connection := futilesv20.oPublicCnn;
  self.otAgent_Cred.Connection := futilesv20.oPublicCnn;
  self.otPersonal.Active := true;
  self.otAgent_Cred.Active := true;
  self.otPpersonal_deduc.Active := true;
  self.oDS_Personal.Enabled := true;
  self.AssgnTabs;
end;

procedure TfMant_Personal.FormShow(Sender: TObject);
begin
  self.Enabled_Screen(false);
  self.PageControl1.ActivePageIndex := 0;
  self.Show_calc_fields();
end;

procedure TfMant_Personal.oBtnAbortClick(Sender: TObject);
begin
  self.otPersonal.Cancel;
  self.Action_Control(7);
  self.Enabled_Screen(false);
  self.PageControl1.ActivePageIndex := 0;
  self.Show_calc_fields();
  self.iOption := 0;
  // self.oID.Visible := true;
end;

procedure TfMant_Personal.oBtnDeleteClick(Sender: TObject);
var
  nResp: integer;
begin
  if self.otPersonal.isEmpty then
  begin
    self.Action_Control(6);
    exit;
  end;
  self.iOption := 3;
  self.Action_Control(3);
  nResp := MessageDlg('Seguro que desea borrar eliminar el registro alctual?',
    mtConfirmation, [mbYes, mbNo], 0);
  If (nResp = mrYes) Then
  begin
    self.oDBNav.DataSource.DataSet.Delete;
    self.oDBNav.DataSource.DataSet.Refresh;
  end;
  self.iOption := 0;
end;

procedure TfMant_Personal.oBtnEditClick(Sender: TObject);
begin
  if otPersonal.isEmpty then
  begin
    self.Action_Control(6);
    exit;
  end;
  self.iOption := 2;
  self.PageControl1.ActivePageIndex := 0;
  self.otPersonal.Edit;
  self.Action_Control(2);
  self.Enabled_Screen(true);
  self.oPer_num.Enabled := false;

  self.oPer_nom_primer.SetFocus;
end;

procedure TfMant_Personal.oBtnExitClick(Sender: TObject);
begin
  self.close;
end;

procedure TfMant_Personal.oBtnFindClick(Sender: TObject);
var
  cSql_Cmd: string;
begin
  self.Action_Control(4);

  cSql_Cmd := cSql_Cmd + 'SELECT ';
  cSql_Cmd := cSql_Cmd + '  per_id, ';
  cSql_Cmd := cSql_Cmd + '  UCASE(per_nom_primer)     AS per_nom_primer   , ';
  cSql_Cmd := cSql_Cmd + '  UCASE(per_nom_segundo)    AS per_nom_segundo  , ';
  cSql_Cmd := cSql_Cmd + '  UCASE(per_apell_paterno)  AS per_apell_paterno, ';
  cSql_Cmd := cSql_Cmd + '  UCASE(per_apelli_materno) AS per_apelli_materno ';
  cSql_Cmd := cSql_Cmd + 'FROM personal ';
  cSql_Cmd := cSql_Cmd + 'WHERE 1=1 ';

  Application.CreateForm(TfBuscarGenM2, fBuscarGenM2);
  fBuscarGenM2.Hide;
  fBuscarGenM2.oLst_campos.Clear;

  BuscarGenM2.oListData[1].Texto := 'C�digo';
  BuscarGenM2.oListData[1].Campo := 'per_id';
  BuscarGenM2.oListData[1].LLave := true;

  BuscarGenM2.oListData[2].Texto := 'Primer Nombre';
  BuscarGenM2.oListData[2].Campo := 'per_nom_primer';
  BuscarGenM2.oListData[2].LLave := false;

  BuscarGenM2.oListData[3].Texto := 'Apellido Paterno';
  BuscarGenM2.oListData[3].Campo := 'per_apell_paterno';
  BuscarGenM2.oListData[3].LLave := false;

  BuscarGenM2.oListData[4].Texto := 'Segundo Nombre';
  BuscarGenM2.oListData[4].Campo := 'per_nom_segundo';
  BuscarGenM2.oListData[4].LLave := false;

  BuscarGenM2.oListData[5].Texto := 'Apellido Materno';
  BuscarGenM2.oListData[5].Campo := 'per_apelli_materno';
  BuscarGenM2.oListData[5].LLave := false;

  BuscarGenM2.oListData[5].Texto := 'Apellido Materno';
  BuscarGenM2.oListData[5].Campo := 'per_apelli_materno';
  BuscarGenM2.oListData[5].LLave := false;

  fBuscarGenM2.oSql1.Clear;
  fBuscarGenM2.oSql1.Lines.Add(cSql_Cmd);

  fBuscarGenM2.ShowModal;
  if BuscarGenM2.vFindResult <> '' then
    self.oDBNav.DataSource.DataSet.Locate('per_id',
      BuscarGenM2.vFindResult, []);
  freeandnil(fBuscarGenM2);
end;

procedure TfMant_Personal.oBtnNewClick(Sender: TObject);
var
  cNext: string;
begin
  self.iOption := 1;
  self.PageControl1.ActivePageIndex := 0;
  self.otPersonal.Insert;
  self.oCk_Status.Checked := true;
  self.Action_Control(1);
  self.Enabled_Screen(true);
  self.otPersonal.FieldByName('per_status').Value := 0;
  // self.oID.Visible := false;
  self.oPer_nom_primer.SetFocus;

  self.otPersonal.FieldByName('acre_inactivo').Value := 0;
  cNext := futilesv20.query_selectgen_result
    ('SELECT LPAD(IFNULL(no_acreedor,0)+1,6,"0") AS no_acreedor FROM nume_trans LIMIT 1');
  self.otPersonal.FieldByName('per_id').AsString := trim(cNext);
  self.otPersonal.FieldByName('per_num').AsString := trim(cNext);

  self.oPer_num.Enabled := true;
end;

procedure TfMant_Personal.oBtnSaveClick(Sender: TObject);
var
  cNext: string;
begin
  if (self.iOption = 1) then
  begin
    cNext := futilesv20.query_selectgen_result
      ('SELECT IFNULL(no_personal,0)+1 AS no_personal FROM nume_trans LIMIT 1');
    self.otPersonal.FieldByName('per_id').AsString := trim(cNext);
    utilesv20.Execute_SQL_Command
      ('UPDATE nume_trans SET no_personal=IFNULL(no_personal,0)+1 WHERE 1=1');
  end;

  self.otPersonal.Post;
  self.Action_Control(6);
  self.Enabled_Screen(false);
  self.PageControl1.ActivePageIndex := 0;
  self.Show_calc_fields();
  // self.oID.Visible := true;
  self.iOption := 0;
end;

procedure TfMant_Personal.oBtn_Adm_AcrClick(Sender: TObject);
begin
  Application.CreateForm(TfMant_Acreedores, fMant_Acreedores);
  fMant_Acreedores.ShowModal;
  freeandnil(fMant_Acreedores);

  self.otAgent_Cred.Refresh;
end;

procedure TfMant_Personal.oBtn_Add_ImgClick(Sender: TObject);
var
  selectedFile: string;
  dlg: TOpenDialog;
begin
  selectedFile := '';
  dlg := TOpenDialog.Create(nil);
  try
    dlg.InitialDir := ExtractFileDir(GetCurrentDir());
    dlg.Filter := 'Jpg files (*.jpg)|*.jpg';
    if dlg.Execute(Handle) then
      selectedFile := dlg.FileName;
  finally
    dlg.Free;
  end;

  if selectedFile <> '' then
  begin
    self.oImage.Picture.LoadFromFile(selectedFile);
    self.otPersonal.FieldByName('per_image_file').AsString := selectedFile;
  end;

end;

procedure TfMant_Personal.oBtn_Del_ImgClick(Sender: TObject);
begin
  self.oImage.Picture.Bitmap := nil;
  self.otPersonal.FieldByName('per_image_file').AsString := '';
end;

procedure TfMant_Personal.oDBNavClick(Sender: TObject; Button: TNavigateBtn);
begin
  self.Show_calc_fields();
end;

procedure TfMant_Personal.otPersonalBeforePost(DataSet: TDataSet);
var
  cNext: string;
begin
  if (DataSet.State = dsedit) then
  begin
    DataSet.FieldByName('per_usuario_modif').AsString := utilesv20.sUserName;
    DataSet.FieldByName('per_fecha_modif').Value := now();
  end
  else if (DataSet.State = dsInsert) then
  begin
    cNext := futilesv20.query_selectgen_result
      ('SELECT LPAD(IFNULL(no_acreedor,0)+1,6,"0") AS no_acreedor FROM nume_trans LIMIT 1');
    DataSet.FieldByName('per_id').AsString := trim(cNext);
    DataSet.FieldByName('per_usuario_modif').AsString := utilesv20.sUserName;
    DataSet.FieldByName('per_usuario_alta').AsString := utilesv20.sUserName;
    DataSet.FieldByName('per_fecha_modif').Value := now();
    DataSet.FieldByName('per_fecha_alta').Value := now();
  end;

end;

procedure TfMant_Personal.otPersonalBeforeRefresh(DataSet: TDataSet);
begin
  self.Show_calc_fields();
end;

procedure TfMant_Personal.Action_Control(pOption: integer);
begin
  if ((pOption = 1) or (pOption = 2)) then
  begin
    oDBNav.Visible := false;
    oBtnNew.Visible := false;
    oBtnEdit.Visible := false;
    oBtnDelete.Visible := false;
    oBtnFind.Visible := false;
    oBtnPrint.Visible := false;
    oBtnExit.Enabled := false;

    oBtnSave.Top := oBtnNew.Top;
    oBtnSave.Left := oBtnNew.Left;

    oBtnAbort.Top := oBtnEdit.Top;
    oBtnAbort.Left := oBtnEdit.Left;

    oBtnAbort.Visible := true;
    oBtnSave.Visible := true;
    oBtnExit.Visible := false;
  end;

  if ((pOption = 6) or (pOption = 7)) then
  begin
    oDBNav.Visible := true;
    oBtnNew.Visible := true;
    oBtnEdit.Visible := true;
    oBtnDelete.Visible := true;
    oBtnFind.Visible := true;
    oBtnPrint.Visible := false;
    oBtnExit.Enabled := true;
    oBtnSave.Top := oBtnNew.Top;
    oBtnSave.Left := oBtnNew.Left;

    oBtnAbort.Top := oBtnEdit.Top;
    oBtnAbort.Left := oBtnEdit.Left;

    oBtnAbort.Visible := false;
    oBtnSave.Visible := false;
    oBtnExit.Visible := true;
  end;

end;

procedure TfMant_Personal.Activa_Objetos(bPar: boolean);
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
    if (self.Components[i] is TDBDateTimeEditEh) then
      TDBDateTimeEditEh(self.Components[i]).Enabled := bPar;
    if (self.Components[i] is TDBComboBoxEh) then
      TDBComboBoxEh(self.Components[i]).Enabled := bPar;
    // if (self.Components[i] is TPngBitBtn) then
    // TPngBitBtn(self.Components[i]).Enabled := bPar;

  end;

  // self.oID.Enabled := false;
end;

procedure TfMant_Personal.Show_calc_fields();
var
  cFileName: string;
begin
  if self.otPersonal.FieldByName('per_image_file').IsNull then
    cFileName := ''
  else
    cFileName := self.otPersonal.FieldByName('per_image_file').AsString;

  if (trim(cFileName) <> '') then
    self.oImage.Picture.LoadFromFile(cFileName)
  else
    self.oImage.Picture := nil;

  self.otNombre_Full.Text := trim(self.otPersonal.FieldByName('per_nom_primer')
    .AsString) + ', ' + trim(self.otPersonal.FieldByName('per_apell_paterno')
    .AsString);
  self.oEdad.Value := YearOf(now()) -
    YearOf(self.otPersonal.FieldByName('per_fecha_nac').AsDateTime);
end;

procedure TfMant_Personal.Enabled_Screen(bFlag: boolean);
var
  j: integer;
  oComponents: TControl;
begin
  for j := 0 to ComponentCount - 1 do
  begin
    if (Components[j] is TCheckBox) then
    begin
      oComponents := TCheckBox(self.Components[j]);
      if (oComponents.TAG <> 1) then
        oComponents.Enabled := bFlag;
    end;
    if (Components[j] is TDBCheckBox) then
    begin
      oComponents := TDBCheckBox(self.Components[j]);
      if (oComponents.TAG <> 1) then
        oComponents.Enabled := bFlag;
    end;
    if (Components[j] is TDBMemo) then
    begin
      oComponents := TDBMemo(self.Components[j]);
      if (oComponents.TAG <> 1) then
        oComponents.Enabled := bFlag;
    end;
    if (Components[j] is TDBEdit) then
    begin
      oComponents := TDBEdit(self.Components[j]);
      if (oComponents.TAG <> 1) then
        oComponents.Enabled := bFlag;
    end;
    if (Components[j] is TDBDateTimeEditEh) then
    begin
      oComponents := TDBDateTimeEditEh(self.Components[j]);
      if (oComponents.TAG <> 1) then
        oComponents.Enabled := bFlag;
    end;
    if (Components[j] is TDBNumberEditEh) then
    begin
      oComponents := TDBNumberEditEh(self.Components[j]);
      if (oComponents.TAG <> 1) then
        oComponents.Enabled := bFlag;
    end;
    if (Components[j] is TDBLookupComboboxEh) then
    begin
      oComponents := TDBLookupComboboxEh(self.Components[j]);
      if (oComponents.TAG <> 1) then
        oComponents.Enabled := bFlag;
    end;
    if (Components[j] is TDBComboBoxEh) then
    begin
      oComponents := TDBComboBoxEh(self.Components[j]);
      if (oComponents.TAG <> 1) then
        oComponents.Enabled := bFlag;
    end;
  end;
  self.oBtn_Add_Img.Enabled := bFlag;
  self.oBtn_Del_Img.Enabled := bFlag;
  self.oBtn_Adm_Acr.Enabled := bFlag;
  // self.DBNavigator1.visible := false;
end;

procedure TfMant_Personal.AssgnTabs;
var
  j: integer;
begin
  for j := 0 to ComponentCount - 1 do
  begin
    if (Components[j] is TCheckBox) then
      (Components[j] as TCheckBox).OnKeyPress := self.EnterAsTab;
    if (Components[j] is TDBCheckBox) then
      (Components[j] as TDBCheckBox).OnKeyPress := self.EnterAsTab;
    if (Components[j] is TDBMemo) then
      (Components[j] as TDBMemo).OnKeyPress := self.EnterAsTab;
    if (Components[j] is TDBEdit) then
      (Components[j] as TDBEdit).OnKeyPress := self.EnterAsTab;
    if (Components[j] is TDBDateTimeEditEh) then
      (Components[j] as TDBDateTimeEditEh).OnKeyPress := self.EnterAsTab;
    if (Components[j] is TDBNumberEditEh) then
      (Components[j] as TDBNumberEditEh).OnKeyPress := self.EnterAsTab;
    if (Components[j] is TDBLookupComboboxEh) then
      (Components[j] as TDBLookupComboboxEh).OnKeyPress := self.EnterAsTab;
    if (Components[j] is TDBComboBoxEh) then
      (Components[j] as TDBComboBoxEh).OnKeyPress := self.EnterAsTab;

  end;
end;

procedure TfMant_Personal.EnterAsTab(Sender: TObject; var Key: Char);
begin
  If Key = #13 Then
  Begin
    If HiWord(GetKeyState(VK_SHIFT)) <> 0 then
      SelectNext(Sender as TWinControl, false, true)
    else
      SelectNext(Sender as TWinControl, true, true);
    Key := #0;
  end;
end;

procedure TfMant_Personal.Clear_Screen;
var
  j: integer;
begin
  for j := 0 to ComponentCount - 1 do
  begin
    if (Components[j] is TDBNumberEditEh) then
    begin
      (Components[j] as TDBNumberEditEh).Value := 0;
    end;
    if (Components[j] is TDBMemo) then
    begin
      (Components[j] as TDBMemo).Text := '';
    end;
    if (Components[j] is TDBEdit) then
    begin
      (Components[j] as TDBEdit).Text := '';
    end;
    if (Components[j] is TDBDateTimeEditEh) then
    begin
      (Components[j] as TDBDateTimeEditEh).Value := now();
    end;
  end;
end;

end.
