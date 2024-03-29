program FC_Planilla;

uses
  Vcl.Forms,
  About in 'About.pas' {fAbout},
  acceso in 'acceso.pas' {Facceso},
  AdjustGrid in 'AdjustGrid.pas',
  AdjustGridEh in 'AdjustGridEh.pas',
  Base64 in 'Base64.pas',
  BuscarGen in 'BuscarGen.pas' {FBuscarGen},
  BuscarGenM2 in 'BuscarGenM2.pas' {FBuscarGenM2},
  edita_reporte in 'edita_reporte.pas' {fedita_reporte},
  Empresa in 'Empresa.pas' {fEmpresa},
  NetworkFunctions in 'NetworkFunctions.pas',
  Nwtools in 'Nwtools.pas',
  Reportes in 'Reportes.pas',
  sndkey32 in 'sndkey32.pas',
  SplashForm in 'SplashForm.pas' {TSplashForm},
  SplashForm2 in 'SplashForm2.pas' {TSplashForm2},
  SrvConf in 'SrvConf.pas' {fSrvCnf},
  TecladoGen1 in 'TecladoGen1.pas' {fTecladoGen1},
  TecladoGen2 in 'TecladoGen2.pas' {fTecladoGen2},
  usuarios in 'usuarios.pas' {Fusuarios},
  UTEval in 'UTEval.pas',
  UtilesV20 in 'UtilesV20.pas' {fUtilesV20},
  main in 'main.pas' {fMain},
  acceso1 in 'acceso1.pas' {facceso1},
  Mant_Imp_Fijos in 'Mant_Imp_Fijos.pas' {fMant_Imp_Fijos},
  Mant_Personal in 'Mant_Personal.pas' {fMant_Personal},
  Mant_Acreedores in 'Mant_Acreedores.pas' {fMant_Acreedores},
  planilla_remesa in 'planilla_remesa.pas' {fplanilla_remesa},
  Gen_Calendario in 'Gen_Calendario.pas' {fGen_Calendario},
  Mant_Frec_Pago in 'Mant_Frec_Pago.pas' {fMant_Frec_Pago};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfUtilesV20, fUtilesV20);
  Application.CreateForm(TfMain, fMain);
  Application.Run;

end.
