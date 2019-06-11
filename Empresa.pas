unit Empresa;

interface

uses
  Windows, Messages, SysUtils, FileCtrl,
  Variants, Classes, Graphics, Controls,
  Forms, DBCtrls, Jpeg,
  Dialogs, StdCtrls, Mask, ExtCtrls,
  ComCtrls, Buttons, GridsEh, DBGridEh,
  DB, ADODB, DBCtrlsEh, pngimage,
  PngBitBtn, PngSpeedButton, WideStrings, SqlExpr, XPMan,
  FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf,
  FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys,
  FireDAC.Comp.Client, FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf,
  FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Phys.MySQL, FireDAC.Phys.MySQLDef,
  FireDAC.VCLUI.Wait, ResizeKit;

type
  TfEmpresa = class(TForm)
    oDBNav: TDBNavigator;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    oDS_Empresa: TDataSource;
    StatusBar1: TStatusBar;
    oActivo: TDBCheckBox;
    Label5: TLabel;
    Label3: TLabel;
    oemp_descripcion: TDBEdit;
    Label4: TLabel;
    oemp_ruc: TDBEdit;
    oemp_dv: TDBEdit;
    Label2: TLabel;
    oemp_telefono1: TDBEdit;
    oemp_telefono2: TDBEdit;
    oemp_fax: TDBEdit;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    oemp_direccion: TDBMemo;
    oemp_apartado: TDBMemo;
    oemp_email: TDBEdit;
    Label12: TLabel;
    oBtnExit: TPngBitBtn;
    oBtnAbort: TPngBitBtn;
    oBtnSave: TPngBitBtn;
    oBtnFind: TPngBitBtn;
    oBtnDelete: TPngBitBtn;
    oBtnEdit: TPngBitBtn;
    oBtnNew: TPngBitBtn;
    oBtnPrint: TPngBitBtn;
    oemp_id: TDBEdit;
    Label6: TLabel;
    oReporte: TDBEdit;
    oBtn_Rep: TBitBtn;
    oConection: TFDConnection;
    otEmpresa: TFDTable;
    TabSheet2: TTabSheet;
    oemp_fecha_alta: TDBDateTimeEditEh;
    ou_usuario_alta: TDBEdit;
    oemp_fecha_modif: TDBDateTimeEditEh;
    ou_usuario_modif: TDBEdit;
    Label16: TLabel;
    Label32: TLabel;
    Label17: TLabel;
    Label33: TLabel;
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
    procedure oBtn_RepClick(Sender: TObject);
    procedure oemp_descripcionKeyPress(Sender: TObject; var Key: Char);
    procedure oemp_rucKeyPress(Sender: TObject; var Key: Char);
    procedure oemp_telefono1KeyPress(Sender: TObject; var Key: Char);
    procedure oemp_telefono2KeyPress(Sender: TObject; var Key: Char);
    procedure oemp_faxKeyPress(Sender: TObject; var Key: Char);
    procedure oemp_emailKeyPress(Sender: TObject; var Key: Char);
    procedure oReporteKeyPress(Sender: TObject; var Key: Char);
    procedure oemp_dvKeyPress(Sender: TObject; var Key: Char);
    procedure oJCJKeyPress(Sender: TObject; var Key: Char);
    procedure oSPACKeyPress(Sender: TObject; var Key: Char);
    procedure Activa_Objetos(bPar: boolean);
    procedure otEmpresaBeforePost(DataSet: TDataSet);
    procedure otEmpresaAfterInsert(DataSet: TDataSet);
    procedure oImage_Lock2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fEmpresa: TfEmpresa;

implementation

USES utilesv20, BuscarGenM2, acceso, acceso1;
{$R *.dfm}

procedure TfEmpresa.oJCJKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then { if it's an enter key }
  begin
    Key := #0; { eat enter key }
    Perform(WM_NEXTDLGCTL, 0, 0); { move to next control }
  end
end;

procedure TfEmpresa.oSPACKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then { if it's an enter key }
  begin
    Key := #0; { eat enter key }
    Perform(WM_NEXTDLGCTL, 0, 0); { move to next control }
  end
end;

procedure TfEmpresa.FormCreate(Sender: TObject);
begin
  freeandnil(oConection);
  // self.ResizeKit1.Enabled := utiles.Ctrl_Resize;
  self.PageControl1.ActivePageIndex := 0;
  self.otEmpresa.Connection := futilesv20.oPublicCnn;
  self.otEmpresa.Active := true;
  self.oDS_Empresa.Enabled := true;
end;

procedure TfEmpresa.FormShow(Sender: TObject);
begin
  self.Activa_Objetos(false);
  self.PageControl1.ActivePageIndex := 0;
end;

procedure TfEmpresa.oBtnAbortClick(Sender: TObject);
begin
  self.otEmpresa.Cancel;
  self.Action_Control(7);
  self.Activa_Objetos(false);
  self.PageControl1.ActivePageIndex := 0;
end;

procedure TfEmpresa.oBtnDeleteClick(Sender: TObject);
var
  nResp: integer;
begin
  if otEmpresa.isEmpty then
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

procedure TfEmpresa.oBtnEditClick(Sender: TObject);
begin
  if otEmpresa.isEmpty then
  begin
    self.Action_Control(6);
    exit;
  end;
  self.PageControl1.ActivePageIndex := 0;
  self.otEmpresa.Edit;
  self.Action_Control(2);
  self.Activa_Objetos(true);
  self.oemp_descripcion.SetFocus;
end;

procedure TfEmpresa.oBtnExitClick(Sender: TObject);
begin
  self.close;
end;

procedure TfEmpresa.oBtnFindClick(Sender: TObject);
begin
  self.Action_Control(4);
  Application.CreateForm(TfBuscarGenM2, fBuscarGenM2);
  fBuscarGenM2.Hide;
  fBuscarGenM2.oLst_campos.Clear;

  BuscarGenM2.oListData[1].Texto := 'Código';
  BuscarGenM2.oListData[1].Campo := 'emp_id';
  BuscarGenM2.oListData[1].LLave := true;

  BuscarGenM2.oListData[2].Texto := 'Nombre de la empresa';
  BuscarGenM2.oListData[2].Campo := 'emp_descripcion';
  BuscarGenM2.oListData[2].LLave := false;

  fBuscarGenM2.oSql1.Clear;
  fBuscarGenM2.oSql1.Lines.Add('SELECT emp_id,UCASE(emp_descripcion) as emp_descripcion FROM empresas WHERE 1=1 ');
  fBuscarGenM2.ShowModal;
  if BuscarGenM2.vFindResult <> '' then
    self.oDBNav.DataSource.DataSet.Locate('emp_id', BuscarGenM2.vFindResult, []);
  freeandnil(fBuscarGenM2);
end;

procedure TfEmpresa.oBtnNewClick(Sender: TObject);
var
  cNext: string;
begin
  self.PageControl1.ActivePageIndex := 0;
  self.otEmpresa.Insert;
  self.oActivo.Checked := true;
  self.Action_Control(1);
  self.Activa_Objetos(true);
  self.otEmpresa.FieldByName('emp_inactivo').Value := 0;

  cNext := futilesv20.query_selectgen_result('SELECT IFNULL(no_empresa,0)+1 AS no_empresa FROM nume_trans LIMIT 1');
  self.otEmpresa.FieldByName('emp_id').AsString := cNext;

  self.oemp_descripcion.SetFocus;
end;

procedure TfEmpresa.oBtnPrintClick(Sender: TObject);
begin
  self.Action_Control(5);
  ShowMessage('Opción aún no programada.');
end;

procedure TfEmpresa.oBtnSaveClick(Sender: TObject);
begin
  self.otEmpresa.Post;
  self.Action_Control(6);
  self.Activa_Objetos(false);
  self.PageControl1.ActivePageIndex := 0;
end;

procedure TfEmpresa.oBtn_RepClick(Sender: TObject);
var
  chosenDirectory: string;
  cCarpeta: string;
begin
  chosenDirectory := ExtractFilePath(ParamStr(0));
  if SelectDirectory('Seleccione una carpeta.', '', cCarpeta) then
  begin
    self.oDBNav.DataSource.DataSet.FieldByName('emp_carpeta_reportes').Value := trim(cCarpeta);
    self.oReporte.SetFocus;
  end
  else
  begin
    ShowMessage('Selección abortada');
  end;
end;

procedure TfEmpresa.oemp_dvKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then { if it's an enter key }
  begin
    Key := #0; { eat enter key }
    Perform(WM_NEXTDLGCTL, 0, 0); { move to next control }
  end
end;

procedure TfEmpresa.oemp_emailKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then { if it's an enter key }
  begin
    Key := #0; { eat enter key }
    Perform(WM_NEXTDLGCTL, 0, 0); { move to next control }
  end
end;

procedure TfEmpresa.oemp_faxKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then { if it's an enter key }
  begin
    Key := #0; { eat enter key }
    Perform(WM_NEXTDLGCTL, 0, 0); { move to next control }
  end
end;

procedure TfEmpresa.oImage_Lock2Click(Sender: TObject);
var
  bOk_Access: boolean;
begin
  bOk_Access := false;

  if (utilesv20.Is_Super_User() = true) then
    bOk_Access := true
  else
  begin
    if (bOk_Access = false) then
    begin
      Application.CreateForm(Tfacceso1, facceso1);
      facceso1.ShowModal;
      if (facceso1.bPass_Ok = true) then
        bOk_Access := true
      else
        bOk_Access := false;
      freeandnil(facceso1);
    end;
  end;
end;

procedure TfEmpresa.oemp_descripcionKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then { if it's an enter key }
  begin
    Key := #0; { eat enter key }
    Perform(WM_NEXTDLGCTL, 0, 0); { move to next control }
  end
end;

procedure TfEmpresa.oReporteKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then { if it's an enter key }
  begin
    Key := #0; { eat enter key }
    Perform(WM_NEXTDLGCTL, 0, 0); { move to next control }
  end
end;

procedure TfEmpresa.oemp_rucKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then { if it's an enter key }
  begin
    Key := #0; { eat enter key }
    Perform(WM_NEXTDLGCTL, 0, 0); { move to next control }
  end
end;

procedure TfEmpresa.oemp_telefono1KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then { if it's an enter key }
  begin
    Key := #0; { eat enter key }
    Perform(WM_NEXTDLGCTL, 0, 0); { move to next control }
  end
end;

procedure TfEmpresa.oemp_telefono2KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then { if it's an enter key }
  begin
    Key := #0; { eat enter key }
    Perform(WM_NEXTDLGCTL, 0, 0); { move to next control }
  end
end;

procedure TfEmpresa.otEmpresaAfterInsert(DataSet: TDataSet);
begin
  DataSet.FieldByName('emp_direccion').Value := '';
  DataSet.FieldByName('emp_apartado').Value := '';
  DataSet.FieldByName('emp_inactivo').Value := 0;
end;

procedure TfEmpresa.otEmpresaBeforePost(DataSet: TDataSet);
var
  cNext: string;
begin
  if DataSet.State in [dsEdit, dsInsert] then
  begin
    if futilesv20.isEmpty(DataSet.FieldByName('emp_descripcion').AsString) then
    begin
      ShowMessage('Para crear una empresa es necesario por lo menos el nombre de la Empresa.');
      self.PageControl1.TabIndex := 0;
      self.oemp_descripcion.SetFocus;
      abort;
    end;

    if DataSet.State = dsEdit then
    begin
      DataSet.FieldByName('u_usuario_modif').AsString := utilesv20.sUserName;
      DataSet.FieldByName('emp_fecha_Modif').Value := now();
    end
    else if DataSet.State = dsInsert then
    begin
      cNext := futilesv20.query_selectgen_result('SELECT IFNULL(no_empresa,0)+1 AS no_empresa FROM nume_trans LIMIT 1');
      DataSet.FieldByName('emp_id').AsString := cNext;

      DataSet.FieldByName('u_usuario_alta').AsString := utilesv20.sUserName;
      DataSet.FieldByName('emp_fecha_alta').Value := now();
    end;
  end;
end;

procedure TfEmpresa.Action_Control(pOption: integer);
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
    oBtn_Rep.Enabled := true;
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
    oBtn_Rep.Enabled := false;
    oBtnExit.Visible := true;
  end;

end;

procedure TfEmpresa.Activa_Objetos(bPar: boolean);
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
