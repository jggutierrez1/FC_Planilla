unit Mant_Frec_Pago;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys,
  FireDAC.Phys.MySQL, FireDAC.Phys.MySQLDef, FireDAC.VCLUI.Wait, FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.StdCtrls, Vcl.Buttons, PngBitBtn, Vcl.DBCtrls, DBCtrlsEh, Vcl.ExtCtrls, PlannerCal,
  DBPlannerCal, Vcl.Mask, EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh, Vcl.ComCtrls, FireDAC.Stan.StorageBin, DBLookupEh;

type
  TfMant_Frec_Pago = class(TForm)
    PageControl1: TPageControl;
    oTabGeneral: TTabSheet;
    DBGridEh1: TDBGridEh;
    oTabMant: TTabSheet;
    Label5: TLabel;
    Label3: TLabel;
    Label7: TLabel;
    Label10: TLabel;
    oInactivo: TDBCheckBox;
    ofrec_descripcion: TDBEdit;
    ofrec_codigo: TDBEdit;
    ofrec_dia_ini: TDBNumberEditEh;
    oTabAudit: TTabSheet;
    Label16: TLabel;
    Label32: TLabel;
    Label17: TLabel;
    Label33: TLabel;
    ofrec_fecha_alta: TDBDateTimeEditEh;
    ofrec_usuario_alta: TDBEdit;
    ofrec_fecha_modif: TDBDateTimeEditEh;
    ofrec_usuario_modif: TDBEdit;
    oDBNav: TDBNavigator;
    oBtnExit: TPngBitBtn;
    oBtnAbort: TPngBitBtn;
    oBtnSave: TPngBitBtn;
    oBtnDelete: TPngBitBtn;
    oBtnEdit: TPngBitBtn;
    oBtnNew: TPngBitBtn;
    oDS_Frecuencia_pago: TDataSource;
    oConection: TFDConnection;
    otFrecuencia_pago: TFDTable;
    otmFrec_Pago: TFDMemTable;
    otmFrec_Pagoid: TIntegerField;
    otmFrec_Pagodescripcion: TStringField;
    ofrec_dia_fin: TDBNumberEditEh;
    ofrec_dias: TDBNumberEditEh;
    oCk_frec_ult_dia_mes: TDBCheckBox;
    oDs_tipo_Nomina: TDataSource;
    oLst_Tipo: TDBLookupComboboxEh;
    Label1: TLabel;
    Label2: TLabel;
    StatusBar1: TStatusBar;
    procedure oBtnNewClick(Sender: TObject);
    procedure oBtnEditClick(Sender: TObject);
    procedure oBtnDeleteClick(Sender: TObject);
    procedure oBtnExitClick(Sender: TObject);
    procedure oBtnSaveClick(Sender: TObject);
    procedure oBtnAbortClick(Sender: TObject);
    procedure Activa_Objetos(bPar: boolean);
    procedure Action_Control(pOption: integer);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure otFrecuencia_pagoAfterInsert(DataSet: TDataSet);
    procedure otFrecuencia_pagoBeforePost(DataSet: TDataSet);
    procedure oLst_TipoCloseUp(Sender: TObject; Accept: boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fMant_Frec_Pago: TfMant_Frec_Pago;

implementation

uses utilesv20;
{$R *.dfm}

procedure TfMant_Frec_Pago.oBtnAbortClick(Sender: TObject);
begin
  self.otFrecuencia_pago.Cancel;
  self.Action_Control(7);
  self.Activa_Objetos(false);
  self.oTabMant.TabVisible := false;
  self.oTabGeneral.TabVisible := true;
  self.PageControl1.ActivePage := self.oTabGeneral;
end;

procedure TfMant_Frec_Pago.oBtnDeleteClick(Sender: TObject);
var
  nResp: integer;
begin
  if otFrecuencia_pago.isEmpty then
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

procedure TfMant_Frec_Pago.oBtnEditClick(Sender: TObject);
begin
  if otFrecuencia_pago.isEmpty then
  begin
    self.Action_Control(6);
    exit;
  end;
  self.oTabGeneral.TabVisible := false;
  self.oTabMant.TabVisible := true;
  self.PageControl1.ActivePage := self.oTabMant;
  self.otFrecuencia_pago.Edit;
  self.Action_Control(2);
  self.Activa_Objetos(true);
  self.ofrec_descripcion.SetFocus;
end;

procedure TfMant_Frec_Pago.oBtnExitClick(Sender: TObject);
begin
  self.close;
end;

procedure TfMant_Frec_Pago.oBtnNewClick(Sender: TObject);
var
  cNext: string;
begin
  self.oTabGeneral.TabVisible := false;
  self.oTabMant.TabVisible := true;
  self.PageControl1.ActivePage := self.oTabMant;
  self.otFrecuencia_pago.Insert;
  self.oInactivo.Checked := false;
  self.Action_Control(1);
  self.Activa_Objetos(true);
  self.otFrecuencia_pago.FieldByName('frec_inactivo').Value := 0;

  self.ofrec_descripcion.SetFocus;

  cNext := futilesv20.query_selectgen_result('SELECT IFNULL(no_frec_pago)+1 AS no_frec_pago FROM nume_trans LIMIT 1');
  self.otFrecuencia_pago.FieldByName('frec_codigo').AsString := trim(cNext);
end;

procedure TfMant_Frec_Pago.oBtnSaveClick(Sender: TObject);
begin
  self.otFrecuencia_pago.Post;
  self.Action_Control(6);
  self.Activa_Objetos(false);
  self.oTabMant.TabVisible := false;
  self.oTabGeneral.TabVisible := true;
  self.PageControl1.ActivePage := self.oTabGeneral;
end;

procedure TfMant_Frec_Pago.oLst_TipoCloseUp(Sender: TObject; Accept: boolean);
begin
  if self.oLst_Tipo.Value = null then
    exit;

  if self.otFrecuencia_pago.State in [dsedit, dsInsert] then
  begin
    case self.oLst_Tipo.Value of
      1:
        self.otFrecuencia_pago.FieldByName('frec_dias').AsInteger := 15;
      2:
        self.otFrecuencia_pago.FieldByName('frec_dias').AsInteger := 30;
      3:
        self.otFrecuencia_pago.FieldByName('frec_dias').AsInteger := 7;
    end;
    self.ofrec_dias.Refresh;
  end;
end;

procedure TfMant_Frec_Pago.otFrecuencia_pagoAfterInsert(DataSet: TDataSet);
begin
  DataSet.FieldByName('frec_descripcion').Value := '';
  DataSet.FieldByName('frec_tipo').Value := 1;
  DataSet.FieldByName('frec_dia_ini').Value := 0;
  DataSet.FieldByName('frec_dia_fin').AsInteger := 0;
  DataSet.FieldByName('frec_ult_dia_mes').AsInteger := 0;
  DataSet.FieldByName('frec_dias').Value := 0;
  DataSet.FieldByName('frec_inactivo').Value := 0;
end;

procedure TfMant_Frec_Pago.otFrecuencia_pagoBeforePost(DataSet: TDataSet);
var
  cNext: string;
begin
  if (DataSet.State = dsedit) then
  begin
    DataSet.FieldByName('frec_usuario_modif').AsString := utilesv20.sUserName;
    DataSet.FieldByName('frec_fecha_modif').Value := now();
  end
  else if (DataSet.State = dsInsert) then
  begin
    cNext := futilesv20.query_selectgen_result('SELECT IFNULL(no_frec_pago,0)+1 AS no_frec_pago FROM nume_trans LIMIT 1');
    self.otFrecuencia_pago.FieldByName('frec_codigo').AsString := trim(cNext);

    DataSet.FieldByName('frec_usuario_alta').AsString := utilesv20.sUserName;
    DataSet.FieldByName('frec_fecha_alta').Value := now();
  end;

  if DataSet.State in [dsedit, dsInsert] then
  begin
    if futilesv20.isEmpty(DataSet.FieldByName('frec_descripcion').AsString) then
    begin
      ShowMessage('Debe especificar la descripción ara continuar.');
      self.PageControl1.TabIndex := 0;
      self.ofrec_descripcion.SetFocus;
      abort;
    end;

  end;
end;

procedure TfMant_Frec_Pago.Action_Control(pOption: integer);
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

procedure TfMant_Frec_Pago.Activa_Objetos(bPar: boolean);
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

procedure TfMant_Frec_Pago.FormCreate(Sender: TObject);
begin
  freeandnil(oConection);
  // self.ResizeKit1.Enabled := utiles.Ctrl_Resize;
  self.PageControl1.ActivePageIndex := 0;
  self.otFrecuencia_pago.Connection := futilesv20.oPublicCnn;
  self.otFrecuencia_pago.Active := true;
  self.oDS_Frecuencia_pago.Enabled := true;
end;

procedure TfMant_Frec_Pago.FormShow(Sender: TObject);
begin
  self.Activa_Objetos(false);
  self.oTabMant.TabVisible := false;
  self.PageControl1.ActivePage := self.oTabGeneral;
  self.PageControl1.ActivePageIndex := 0;
end;

end.
