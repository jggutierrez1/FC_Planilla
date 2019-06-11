unit planilla_remesa;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.UI.Intf,
  FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Phys, FireDAC.Phys.MySQL,
  FireDAC.Phys.MySQLDef, FireDAC.VCLUI.Wait, DBGridEh, DBCtrlsEh,
  FireDAC.Comp.Client, Vcl.StdCtrls, Vcl.Mask, DBLookupEh, Data.DB,
  FireDAC.Comp.DataSet, Vcl.ComCtrls, EhLibVCL, GridsEh, DBAxisGridsEh,
  Vcl.Buttons, PngBitBtn, FireDAC.Stan.StorageBin;

type
  Tfplanilla_remesa = class(TForm)
    DBGridEh1: TDBGridEh;
    StatusBar1: TStatusBar;
    oQry_Planilla: TFDQuery;
    oConection: TFDConnection;
    oDs_Planilla: TDataSource;
    olst_Empresa: TDBLookupComboboxEh;
    otEmpresa: TFDTable;
    oDs_Empresa: TDataSource;
    Label3: TLabel;
    Label4: TLabel;
    oBtnSave: TPngBitBtn;
    oBtnAbort: TPngBitBtn;
    oBtnPrint: TPngBitBtn;
    oBtnExit: TPngBitBtn;
    PngBitBtn2: TPngBitBtn;
    otFrecuencia_pago: TFDTable;
    oDS_Frecuencia_pago: TDataSource;
    oLst_Tipo_Plan: TDBLookupComboboxEh;
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure oBtnExitClick(Sender: TObject);
  private
    iOption: integer;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fplanilla_remesa: Tfplanilla_remesa;

implementation

uses UtilesV20;
{$R *.dfm}

procedure Tfplanilla_remesa.FormCreate(Sender: TObject);
begin
  self.iOption := 0;
  // self.ResizeKit1.Enabled := utiles.Ctrl_Resize;
  freeandnil(oConection);
  self.otEmpresa.Connection := fUtilesV20.oPublicCnn;
  self.oQry_Planilla.Connection := fUtilesV20.oPublicCnn;
  self.otFrecuencia_pago.Connection := fUtilesV20.oPublicCnn;

  self.oDs_Empresa.DataSet := otEmpresa;
  self.oDs_Empresa.Enabled := true;

  self.oDs_Planilla.DataSet := oQry_Planilla;
  self.oDs_Planilla.Enabled := true;

  self.oDS_Frecuencia_pago.DataSet := self.otFrecuencia_pago;

  self.otEmpresa.Active := true;
  self.oQry_Planilla.Active := true;
  self.otFrecuencia_pago.Active := true;

end;

procedure Tfplanilla_remesa.FormShow(Sender: TObject);
begin
  self.olst_Empresa.Value := 1;
  self.oLst_Tipo_Plan.Value := 1;
end;

procedure Tfplanilla_remesa.oBtnExitClick(Sender: TObject);
begin
  close;
end;

end.
