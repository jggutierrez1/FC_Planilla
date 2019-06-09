unit Mant_Acreedores;

interface

uses
  Windows, Messages, SysUtils, FileCtrl,
  Variants, Classes, Graphics, Controls,
  Forms, Dialogs, StdCtrls, DBCtrls,
  Mask, ExtCtrls, ComCtrls, Buttons, DB,
  PngBitBtn, PngSpeedButton, WideStrings,
  SqlExpr,
  DBGridEhGrouping, ToolCtrlsEh, GridsEh, DBGridEh, DBCtrlsEh, DBLookupEh, DynVarsEh, DBAxisGridsEh, DBGridEhToolCtrls,
  FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf,
  FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys,
  FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, FireDAC.Phys.MySQL, FireDAC.Phys.MySQLDef,
  FireDAC.VCLUI.Wait;

type
  TfMant_Acreedores = class(TForm)
    oDBNav: TDBNavigator;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    oDS_Acreed: TDataSource;
    StatusBar1: TStatusBar;
    oAcre_inactivo: TDBCheckBox;
    Label5: TLabel;
    Label3: TLabel;
    oAcre_nombre: TDBEdit;
    oAcre_telefono1: TDBEdit;
    oAcre_telefono2: TDBEdit;
    Label7: TLabel;
    Label8: TLabel;
    Label10: TLabel;
    oAcre_direccion: TDBMemo;
    oAcre_email: TDBEdit;
    Label12: TLabel;
    oBtnExit: TPngBitBtn;
    oBtnAbort: TPngBitBtn;
    oBtnSave: TPngBitBtn;
    oBtnFind: TPngBitBtn;
    oBtnDelete: TPngBitBtn;
    oBtnEdit: TPngBitBtn;
    oBtnNew: TPngBitBtn;
    oBtnPrint: TPngBitBtn;
    oAcre_codigo: TDBEdit;
    oAcre_webpage: TDBEdit;
    Label14: TLabel;
    oConection: TFDConnection;
    otAcreed: TFDTable;
    TabSheet2: TTabSheet;
    Label15: TLabel;
    oAcre_notas: TDBMemo;
    procedure Action_Control(pOption: integer);
    procedure oBtnNewClick(Sender: TObject);
    procedure oBtnEditClick(Sender: TObject);
    procedure oBtnDeleteClick(Sender: TObject);
    procedure oBtnFindClick(Sender: TObject);
    procedure oBtnPrintClick(Sender: TObject);
    procedure oBtnSaveClick(Sender: TObject);
    procedure oBtnAbortClick(Sender: TObject);
    procedure oBtnExitClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ZTable1AfterPost(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
    procedure oAcre_nombreKeyPress(Sender: TObject; var Key: Char);
    procedure oNombreLocKeyPress(Sender: TObject; var Key: Char);
    procedure oAcre_emailKeyPress(Sender: TObject; var Key: Char);
    procedure oAcre_webpageKeyPress(Sender: TObject; var Key: Char);
    procedure oAcre_telefono1KeyPress(Sender: TObject; var Key: Char);
    procedure oAcre_telefono2KeyPress(Sender: TObject; var Key: Char);
    procedure oProv_FaxKeyPress(Sender: TObject; var Key: Char);
    procedure oAcre_codigoKeyPress(Sender: TObject; var Key: Char);
    procedure oProv_contacto_movilKeyPress(Sender: TObject; var Key: Char);
    procedure oProv_contacto_emailKeyPress(Sender: TObject; var Key: Char);
    procedure Activa_Objetos(bPar: boolean);
    procedure oProv_porcKeyPress(Sender: TObject; var Key: Char);
    procedure oProv_contacto_nomKeyPress(Sender: TObject; var Key: Char);
    procedure otAcreedBeforePost(DataSet: TDataSet);
    procedure otAcreedAfterInsert(DataSet: TDataSet);
  private
    { Private declarations }
    iOption: integer;
  public
    { Public declarations }
  end;

var
  fMant_Acreedores: TfMant_Acreedores;

implementation

USES UtilesV20, BuscarGenM2;
{$R *.dfm}

procedure TfMant_Acreedores.oProv_contacto_movilKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then { if it's an enter key }
  begin
    Key := #0; { eat enter key }
    Perform(WM_NEXTDLGCTL, 0, 0); { move to next control }
  end
end;

procedure TfMant_Acreedores.oProv_contacto_nomKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then { if it's an enter key }
  begin
    Key := #0; { eat enter key }
    Perform(WM_NEXTDLGCTL, 0, 0); { move to next control }
  end
end;

procedure TfMant_Acreedores.oProv_contacto_emailKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then { if it's an enter key }
  begin
    Key := #0; { eat enter key }
    Perform(WM_NEXTDLGCTL, 0, 0); { move to next control }
  end
end;

procedure TfMant_Acreedores.oProv_porcKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then { if it's an enter key }
  begin
    Key := #0; { eat enter key }
    Perform(WM_NEXTDLGCTL, 0, 0); { move to next control }
  end
end;

procedure TfMant_Acreedores.oAcre_webpageKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then { if it's an enter key }
  begin
    Key := #0; { eat enter key }
    Perform(WM_NEXTDLGCTL, 0, 0); { move to next control }
  end
end;

procedure TfMant_Acreedores.FormCreate(Sender: TObject);
begin
  self.iOption := 0;
  // self.ResizeKit1.Enabled := utiles.Ctrl_Resize;
  freeandnil(oConection);
  self.PageControl1.ActivePageIndex := 0;
  self.otAcreed.Connection := fUtilesV20.oPublicCnn;
  self.oDS_Acreed.DataSet := otAcreed;
  self.oDS_Acreed.Enabled := true;
  self.otAcreed.Active := true;
end;

procedure TfMant_Acreedores.FormShow(Sender: TObject);
begin
  self.PageControl1.ActivePageIndex := 0;
  self.Action_Control(6);
  self.Activa_Objetos(false);
end;

procedure TfMant_Acreedores.oBtnAbortClick(Sender: TObject);
begin
  self.otAcreed.Cancel;
  self.Action_Control(7);
  self.Activa_Objetos(false);
  self.PageControl1.ActivePageIndex := 0;
  self.iOption := 0;
end;

procedure TfMant_Acreedores.oBtnDeleteClick(Sender: TObject);
var
  nResp: integer;
begin
  if self.otAcreed.isEmpty then
  begin
    self.Action_Control(6);
    exit;
  end;
  self.iOption := 3;
  self.Action_Control(3);
  nResp := MessageDlg('Seguro que desea borrar eliminar el registro alctual?', mtConfirmation, [mbYes, mbNo], 0);
  If (nResp = mrYes) Then
  begin
    self.oDBNav.DataSource.DataSet.Delete;
    self.oDBNav.DataSource.DataSet.Refresh;
  end;
  self.iOption := 0;
end;

procedure TfMant_Acreedores.oBtnEditClick(Sender: TObject);
begin
  if self.otAcreed.isEmpty then
  begin
    self.Action_Control(6);
    exit;
  end;
  self.iOption := 2;
  self.PageControl1.ActivePageIndex := 0;
  self.otAcreed.Edit;
  self.Action_Control(2);
  self.Activa_Objetos(true);
  self.oAcre_nombre.SetFocus;
end;

procedure TfMant_Acreedores.oBtnExitClick(Sender: TObject);
begin
  self.close;
end;

procedure TfMant_Acreedores.oBtnFindClick(Sender: TObject);
begin
  self.Action_Control(4);

  Application.CreateForm(TfBuscarGenM2, fBuscarGenM2);
  fBuscarGenM2.Hide;
  fBuscarGenM2.oLst_campos.Clear;

  BuscarGenM2.oListData[1].Texto := 'C�digo';
  BuscarGenM2.oListData[1].Campo := 'acre_codigo';
  BuscarGenM2.oListData[1].LLave := true;

  BuscarGenM2.oListData[2].Texto := 'Nombre';
  BuscarGenM2.oListData[2].Campo := 'acre_nombre';
  BuscarGenM2.oListData[2].LLave := false;

  fBuscarGenM2.oSql1.Clear;
  fBuscarGenM2.oSql1.Lines.Add('SELECT acre_codigo,UCASE(acre_nombre) as acre_nombre FROM agentes_credito WHERE 1=1 ');
  fBuscarGenM2.ShowModal;
  if BuscarGenM2.vFindResult <> '' then
    self.oDBNav.DataSource.DataSet.Locate('acre_codigo', BuscarGenM2.vFindResult, []);
  freeandnil(fBuscarGenM2);
end;

procedure TfMant_Acreedores.oBtnNewClick(Sender: TObject);
VAR
  cNext: STRING;
begin
  self.iOption := 1;
  self.PageControl1.ActivePageIndex := 0;
  self.otAcreed.Insert;
  self.oAcre_inactivo.Checked := true;
  self.Action_Control(1);
  self.Activa_Objetos(true);

  self.otAcreed.FieldByName('acre_inactivo').Value := 0;
  self.otAcreed.FieldByName('acre_monto_adeudado').Value := 0.00;
  self.otAcreed.FieldByName('acre_desc_mensual').Value := 0.00;
  self.otAcreed.FieldByName('acre_monto_pagado').Value := 0.00;

  cNext := fUtilesV20.query_selectgen_result('SELECT IFNULL(no_acreedor,0)+1 AS no_acreedor FROM nume_trans LIMIT 1');
  self.otAcreed.FieldByName('acre_id').AsString := trim(cNext);
  self.otAcreed.FieldByName('acre_codigo').AsString := fUtilesV20.PadL(trim(cNext), 6, '0');

  self.oAcre_nombre.SetFocus;
end;

procedure TfMant_Acreedores.oBtnPrintClick(Sender: TObject);
begin
  self.Action_Control(5);
  ShowMessage('Opci�n a�n no programada.');
end;

procedure TfMant_Acreedores.oBtnSaveClick(Sender: TObject);
var
  cNext: string;
begin
  if (self.iOption = 1) then
  begin
    cNext := fUtilesV20.query_selectgen_result('SELECT IFNULL(no_acreedor,0)+1 AS no_acreedor FROM nume_trans LIMIT 1');
    self.otAcreed.FieldByName('acre_id').AsString := trim(cNext);
    UtilesV20.Execute_SQL_Command('UPDATE nume_trans SET no_acreedor=IFNULL(no_acreedor,0)+1 WHERE 1=1');
  end;

  self.otAcreed.post;
  self.Action_Control(6);
  self.Activa_Objetos(false);
  self.PageControl1.ActivePageIndex := 0;
  self.iOption := 0;
end;

procedure TfMant_Acreedores.oAcre_emailKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then { if it's an enter key }
  begin
    Key := #0; { eat enter key }
    Perform(WM_NEXTDLGCTL, 0, 0); { move to next control }
  end
end;

procedure TfMant_Acreedores.oProv_FaxKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then { if it's an enter key }
  begin
    Key := #0; { eat enter key }
    Perform(WM_NEXTDLGCTL, 0, 0); { move to next control }
  end
end;

procedure TfMant_Acreedores.oAcre_codigoKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then { if it's an enter key }
  begin
    Key := #0; { eat enter key }
    Perform(WM_NEXTDLGCTL, 0, 0); { move to next control }
  end
end;

procedure TfMant_Acreedores.oAcre_nombreKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then { if it's an enter key }
  begin
    Key := #0; { eat enter key }
    Perform(WM_NEXTDLGCTL, 0, 0); { move to next control }
  end
end;

procedure TfMant_Acreedores.oNombreLocKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then { if it's an enter key }
  begin
    Key := #0; { eat enter key }
    Perform(WM_NEXTDLGCTL, 0, 0); { move to next control }
  end
end;

procedure TfMant_Acreedores.otAcreedAfterInsert(DataSet: TDataSet);
begin
  if (DataSet.State in [dsInsert]) then
  begin
    DataSet.FieldByName('acre_notas').Value := '';
    DataSet.FieldByName('acre_direccion').Value := '';
    DataSet.FieldByName('acre_inactivo').Value := 0;
  end;
end;

procedure TfMant_Acreedores.otAcreedBeforePost(DataSet: TDataSet);
begin
  if (DataSet.State in [dsEdit, dsInsert]) then
  begin
    if fUtilesV20.isEmpty(DataSet.FieldByName('acre_nombre').AsString) then
    begin
      ShowMessage('Para crear el proveedor de m�quinas, es necesario por lo menos el nombre.');
      self.PageControl1.TabIndex := 0;
      self.oAcre_nombre.SetFocus;
      abort;
    end;

    if (DataSet.State = dsEdit) then
    begin
      DataSet.FieldByName('acre_fecha_modif').Value := now();
      DataSet.FieldByName('acre_usuario_modif').Value := UtilesV20.sUserName;
    end
    else if (DataSet.State = dsInsert) then
    begin
      DataSet.FieldByName('acre_fecha_alta').Value := now();
      DataSet.FieldByName('acre_usuario_alta').Value := UtilesV20.sUserName;
      DataSet.FieldByName('acre_fecha_modif').AsDateTime := now();
      DataSet.FieldByName('acre_usuario_modif').Value := UtilesV20.sUserName;
    end;
  end;
end;

procedure TfMant_Acreedores.oAcre_telefono1KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then { if it's an enter key }
  begin
    Key := #0; { eat enter key }
    Perform(WM_NEXTDLGCTL, 0, 0); { move to next control }
  end
end;

procedure TfMant_Acreedores.oAcre_telefono2KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then { if it's an enter key }
  begin
    Key := #0; { eat enter key }
    Perform(WM_NEXTDLGCTL, 0, 0); { move to next control }
  end
end;

procedure TfMant_Acreedores.ZTable1AfterPost(DataSet: TDataSet);
begin
  if fUtilesV20.isEmpty(DataSet.FieldByName('acre_nombre').AsString) then
  begin
    ShowMessage('Para crear un agente crediticio es necesario por lo menos el nombre.');
    abort;
  end;
end;

procedure TfMant_Acreedores.Action_Control(pOption: integer);
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

procedure TfMant_Acreedores.Activa_Objetos(bPar: boolean);
var
  i: Word;
  oComponents: TControl;
begin
  for i := 0 to self.ComponentCount - 1 do
  begin
    if (self.Components[i] is TDBEdit) then
    begin
      oComponents := TDBEdit(self.Components[i]);
      oComponents.Enabled := fUtilesV20.iif(oComponents.Tag = 3, false, fUtilesV20.iif(oComponents.Tag = 1, not bPar, bPar));
    end;
    if (self.Components[i] is TDBMemo) then
    begin
      oComponents := TDBMemo(self.Components[i]);
      oComponents.Enabled := fUtilesV20.iif(oComponents.Tag = 3, false, fUtilesV20.iif(oComponents.Tag = 1, not bPar, bPar));
    end;
    if (self.Components[i] is TDBNumberEditEh) then
    begin
      oComponents := TDBNumberEditEh(self.Components[i]);
      oComponents.Enabled := fUtilesV20.iif(oComponents.Tag = 3, false, fUtilesV20.iif(oComponents.Tag = 1, not bPar, bPar));
    end;
    if (self.Components[i] is TDBLookupComboBox) then
    begin
      oComponents := TDBLookupComboBox(self.Components[i]);
      oComponents.Enabled := fUtilesV20.iif(oComponents.Tag = 3, false, fUtilesV20.iif(oComponents.Tag = 1, not bPar, bPar));
    end;
    if (self.Components[i] is TDBCheckBox) then
    begin
      oComponents := TDBCheckBox(self.Components[i]);
      oComponents.Enabled := fUtilesV20.iif(oComponents.Tag = 3, false, fUtilesV20.iif(oComponents.Tag = 1, not bPar, bPar));
    end;
    if (self.Components[i] is TPngSpeedButton) then
    begin
      oComponents := TPngSpeedButton(self.Components[i]);
      oComponents.Enabled := fUtilesV20.iif(oComponents.Tag = 3, false, fUtilesV20.iif(oComponents.Tag = 1, not bPar, bPar));
    end;
    if (self.Components[i] is TDBComboBox) then
    begin
      oComponents := TDBComboBox(self.Components[i]);
      oComponents.Enabled := fUtilesV20.iif(oComponents.Tag = 3, false, fUtilesV20.iif(oComponents.Tag = 1, not bPar, bPar));
    end;
    if (self.Components[i] is TDBComboBoxEh) then
    begin
      oComponents := TDBComboBoxEh(self.Components[i]);
      oComponents.Enabled := fUtilesV20.iif(oComponents.Tag = 3, false, fUtilesV20.iif(oComponents.Tag = 1, not bPar, bPar));
    end;
    if (self.Components[i] is TDBDateTimeEditEh) then
    begin
      oComponents := TDBDateTimeEditEh(self.Components[i]);
      oComponents.Enabled := fUtilesV20.iif(oComponents.Tag = 3, false, fUtilesV20.iif(oComponents.Tag = 1, not bPar, bPar));
    end;
    if (self.Components[i] is TDBLookupComboboxEh) then
    begin
      oComponents := TDBLookupComboboxEh(self.Components[i]);
      oComponents.Enabled := fUtilesV20.iif(oComponents.Tag = 3, false, fUtilesV20.iif(oComponents.Tag = 1, not bPar, bPar));
    end;

    if (self.Components[i] is TBitBtn) then
    begin
      oComponents := TBitBtn(self.Components[i]);
      if oComponents.Tag = 20 then
        oComponents.Enabled := bPar;
    end;
  end;
  self.oAcre_codigo.Enabled := false;
end;

end.
