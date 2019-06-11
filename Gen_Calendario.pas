unit gen_calendario;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.MySQL,
  FireDAC.Phys.MySQLDef, FireDAC.VCLUI.Wait, FireDAC.Stan.Param, FireDAC.DatS,
  FireDAC.DApt.Intf, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, PngBitBtn, Vcl.ComCtrls, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.ExtCtrls, Vcl.DBCtrls, cxClasses, cxSchedulerStorage,
  cxSchedulerDBStorage,
  DBCtrlsEh, Vcl.Mask, PlannerCal, DBPlannerCal, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh;

type
  TfGen_Calendario = class(TForm)
    oDBNav: TDBNavigator;
    StatusBar1: TStatusBar;
    oBtnExit: TPngBitBtn;
    oBtnAbort: TPngBitBtn;
    oBtnSave: TPngBitBtn;
    oBtnDelete: TPngBitBtn;
    oBtnEdit: TPngBitBtn;
    oBtnNew: TPngBitBtn;
    oDS_Calendario: TDataSource;
    FileOpenDialog1: TFileOpenDialog;
    OpenDialog1: TOpenDialog;
    oConection: TFDConnection;
    otCalendario: TFDTable;
    PageControl1: TPageControl;
    oTabMant: TTabSheet;
    Label5: TLabel;
    Label3: TLabel;
    Label7: TLabel;
    Label10: TLabel;
    oInactivo: TDBCheckBox;
    oFer_nombre: TDBEdit;
    oFer_codigo: TDBEdit;
    oCk_fecha_exacta: TDBCheckBox;
    oCk_feriado: TDBCheckBox;
    oCk_nolaboral: TDBCheckBox;
    oFer_recargo: TDBNumberEditEh;
    oCalendarMonth: TDBPlannerCalendar;
    oTabAudit: TTabSheet;
    Label16: TLabel;
    ofer_fecha_alta: TDBDateTimeEditEh;
    Label32: TLabel;
    ofer_usuario_alta: TDBEdit;
    Label17: TLabel;
    ofer_fecha_modif: TDBDateTimeEditEh;
    Label33: TLabel;
    ofer_usuario_modif: TDBEdit;
    oTabGeneral: TTabSheet;
    DBGridEh1: TDBGridEh;
    Label1: TLabel;
    oFer_notas: TDBMemo;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Activa_Objetos(bPar: boolean);
    procedure Action_Control(pOption: integer);
    procedure oBtnNewClick(Sender: TObject);
    procedure oBtnEditClick(Sender: TObject);
    procedure oBtnDeleteClick(Sender: TObject);
    procedure oBtnExitClick(Sender: TObject);
    procedure oBtnSaveClick(Sender: TObject);
    procedure oBtnAbortClick(Sender: TObject);
    procedure otCalendarioAfterInsert(DataSet: TDataSet);
    procedure otCalendarioBeforePost(DataSet: TDataSet);
  private
    pOption: integer;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fGen_Calendario: TfGen_Calendario;

implementation

uses utilesv20;
{$R *.dfm}

procedure TfGen_Calendario.FormCreate(Sender: TObject);
begin
  freeandnil(oConection);
  // self.ResizeKit1.Enabled := utiles.Ctrl_Resize;
  self.PageControl1.ActivePageIndex := 0;
  self.otCalendario.Connection := futilesv20.oPublicCnn;
  self.otCalendario.Active := true;
  self.oDS_Calendario.Enabled := true;
end;

procedure TfGen_Calendario.FormShow(Sender: TObject);
begin
  self.Activa_Objetos(false);
  self.oTabMant.TabVisible := false;
  self.PageControl1.ActivePage := self.oTabGeneral;
  self.PageControl1.ActivePageIndex := 0;
end;

procedure TfGen_Calendario.oBtnAbortClick(Sender: TObject);
begin
  self.otCalendario.Cancel;
  self.Action_Control(7);
  self.Activa_Objetos(false);
  self.oTabMant.TabVisible := false;
  self.oTabGeneral.TabVisible := true;
  self.PageControl1.ActivePage := self.oTabGeneral;
end;

procedure TfGen_Calendario.oBtnDeleteClick(Sender: TObject);
var
  nResp: integer;
begin
  if otCalendario.isEmpty then
  begin
    self.Action_Control(6);
    exit;
  end;
  self.Action_Control(3);
  nResp := MessageDlg('Seguro que desea borrar eliminar el registro alctual?', mtConfirmation, [mbYes, mbNo], 0);
  If (nResp = mrYes) Then
  begin
    self.oDBNav.DataSource.DataSet.Delete;
    self.oDBNav.DataSource.DataSet.Refresh;
  end;
end;

procedure TfGen_Calendario.oBtnEditClick(Sender: TObject);
begin
  if otCalendario.isEmpty then
  begin
    self.Action_Control(6);
    exit;
  end;
  self.oTabGeneral.TabVisible := false;
  self.oTabMant.TabVisible := true;
  self.PageControl1.ActivePage := self.oTabMant;
  self.otCalendario.Edit;
  self.Action_Control(2);
  self.Activa_Objetos(true);
  self.oCalendarMonth.Date := self.otCalendario.FieldByName('fer_fecha').AsDateTime;
  self.oFer_nombre.SetFocus;
end;

procedure TfGen_Calendario.oBtnExitClick(Sender: TObject);
begin
  self.close;
end;

procedure TfGen_Calendario.oBtnNewClick(Sender: TObject);
var
  cNext: string;
begin
  self.oTabGeneral.TabVisible := false;
  self.oTabMant.TabVisible := true;
  self.PageControl1.ActivePage := self.oTabMant;
  self.otCalendario.Insert;
  self.oInactivo.Checked := false;
  self.Action_Control(1);
  self.Activa_Objetos(true);
  self.otCalendario.FieldByName('fer_inactivo').Value := 0;
  self.oCalendarMonth.Date := now();

  self.oFer_nombre.SetFocus;

  cNext := futilesv20.query_selectgen_result('SELECT LPAD(IFNULL(no_calendario,0)+1,3,"0") AS no_calendario FROM nume_trans LIMIT 1');
  self.otCalendario.FieldByName('fer_codigo').AsString := cNext;

end;

procedure TfGen_Calendario.oBtnSaveClick(Sender: TObject);
begin
  self.otCalendario.Post;
  self.Action_Control(6);
  self.Activa_Objetos(false);
  self.oTabMant.TabVisible := false;
  self.oTabGeneral.TabVisible := true;
  self.PageControl1.ActivePage := self.oTabGeneral;
end;

procedure TfGen_Calendario.otCalendarioAfterInsert(DataSet: TDataSet);
begin
  DataSet.FieldByName('fer_notas').Value := '';
  DataSet.FieldByName('fer_recargo').Value := 0.00;
  DataSet.FieldByName('fer_fecha_exacta').Value := 0;
  DataSet.FieldByName('fer_fecha_variabl').AsInteger := 0;
  DataSet.FieldByName('fer_feriado').AsInteger := 0;
  DataSet.FieldByName('fer_nolaboral').Value := 0;
  DataSet.FieldByName('fer_inactivo').Value := 0;
end;

procedure TfGen_Calendario.otCalendarioBeforePost(DataSet: TDataSet);
var
  cNext: string;
begin
  if (DataSet.State = dsedit) then
  begin
    DataSet.FieldByName('fer_usuario_modif').AsString := utilesv20.sUserName;
    DataSet.FieldByName('fer_fecha_modif').Value := now();
  end
  else if (DataSet.State = dsInsert) then
  begin
    cNext := futilesv20.query_selectgen_result('SELECT LPAD(IFNULL(no_calendario,0)+1,3,"0") AS no_calendario FROM nume_trans LIMIT 1');
    self.otCalendario.FieldByName('fer_codigo').AsString := trim(cNext);

    DataSet.FieldByName('fer_usuario_alta').AsString := utilesv20.sUserName;
    DataSet.FieldByName('fer_fecha_alta').Value := now();
  end;

  if DataSet.State in [dsedit, dsInsert] then
  begin
    self.otCalendario.FieldByName('fer_fecha').AsDateTime := self.oCalendarMonth.Date;
    if futilesv20.isEmpty(DataSet.FieldByName('fer_nombre').AsString) then
    begin
      ShowMessage('Para crear un calendario es necesario colocar la descripción.');
      self.PageControl1.TabIndex := 0;
      self.oFer_nombre.SetFocus;
      abort;
    end;

  end;
end;

procedure TfGen_Calendario.Action_Control(pOption: integer);
begin
  if ((pOption = 1) or (pOption = 2)) then
  begin
    oDBNav.Visible := false;
    oBtnNew.Visible := false;
    oBtnEdit.Visible := false;
    oBtnDelete.Visible := false;
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

procedure TfGen_Calendario.Activa_Objetos(bPar: boolean);
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
