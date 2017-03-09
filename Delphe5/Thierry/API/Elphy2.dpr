program Elphy2;

{%File 'common.fps'}

uses
  Forms,
  Stmerror in 'stmerror.pas',
  Multg0 in 'multg0.pas' {MultiGform},
  opmulti1 in 'opMulti1.pas' {OptionsMultg1},
  syslist0 in 'syslist0.pas' {Wsyslist},
  coodCoo in 'coodCoo.pas' {getCooDcoo},
  Tpvector in 'tpVector.pas' {paint0},
  opVec1 in 'opVec1.pas' {OptionsVec1},
  getEp0 in 'getEp0.pas' {ChooseEp},
  Objname1 in 'Objname1.pas' {GetObjName},
  Inivect0 in 'Inivect0.pas' {initTvector},
  Inimat0 in 'Inimat0.pas' {initTmatrix},
  iniRA0 in 'iniRA0.pas' {initRealArray},
  Inimulg0 in 'Inimulg0.pas' {initTmultigraph},
  mdac in 'mdac.pas' {MainDac},
  printMG0 in 'printMG0.pas' {printMgDialog},
  Channels in 'Channels.pas' {DataFchannels},
  Dmoyac2 in 'Dmoyac2.PAS' {AverageBox},
  Tagbloc1 in 'Tagbloc1.pas' {tagBlock},
  cursor1 in 'cursor1.pas' {LineCursor},
  stmcurs in 'stmcurs.pas',
  stmexe11 in 'stmexe11.pas',
  stmExe10 in 'stmExe10.pas',
  stmexeac in 'stmexeac.pas',
  Getcoln in 'getColN.pas' {SaisieColParam},
  stmExeFi in 'stmExeFi.pas',
  stmGraph2 in 'stmGraph2.pas',
  iniVzoom in 'iniVzoom.pas' {initVzoom},
  stmAc1 in 'stmAc1.pas',
  Nbligne1 in 'nbLigne1.pas' {NumOfLines},
  CurProp1 in 'CurProp1.pas' {CursorProp},
  stmFpg in 'stmFpg.pas',
  stmFevt in 'stmFevt.pas',
  OIcood0 in 'OIcood0.pas' {OICooD},
  Colsat1 in 'colSat1.pas' {StmColSat},
  DrawMeta in 'DrawMeta.pas',
  Dcur2fit in 'Dcur2fit.pas',
  MFProp in 'MFProp.pas' {MFuncProp},
  fitProp in 'fitProp.pas' {FitProp1},
  ComExOpt in 'ComExOpt.pas' {CommandBoxOption},
  Formmenu in 'formMenu.pas' {MenuForm},
  Npopup in 'Npopup.pas',
  diviwin in 'diviwin.pas' {DivideWin},
  stmCor1 in 'stmCor1.pas',
  Wsynchro in 'Wsynchro.pas',
  Efind1 in 'Efind1.pas' {GEditFind},
  Ereplace in 'Ereplace.pas' {GEditReplace},
  Dpalette in 'Dpalette.pas',
  Ncdef2 in 'Ncdef2.pas',
  Multg1 in 'multG1.pas',
  Dgraphic in 'Dgraphic.pas' {Unit1},
  ObjFile1 in 'ObjFile1.pas',
  stmDplot in 'stmDplot.pas',
  stmDobj1 in 'stmDobj1.pas',
  stmBMP1 in 'stmBMP1.pas',
  getBmp0 in 'getBmp0.pas' {initBitmapPlot},
  stmUplot in 'stmUplot.pas',
  stmVlist1 in 'stmVlist1.pas',
  stmPopUp in 'stmPopUp.pas' {PopUps},
  VLcommand in 'VLcommand.pas' {VlistCommand},
  inigra0 in 'inigra0.pas' {initGraph},
  revMprop in 'revMprop.pas' {RevMatProp},
  revpan2 in 'revpan2.pas' {revPanel},
  Chooseob2 in 'Chooseob2.pas' {ChooseObject2},
  STMAVI1 in 'STMAVI1.PAS',
  stmDet1 in 'stmDet1.pas',
  revcor2 in 'revcor2.pas',
  evalvar1 in 'evalvar1.pas' {InspectVar},
  stmAve1 in 'stmAve1.pas',
  propVlist in 'propVlist.pas' {VlistProperties},
  Dac2file in 'Dac2file.pas',
  dfSave1 in 'dfSave1.pas' {DfSaveList},
  detSave1 in 'detSave1.pas' {detectSave},
  saveOptF in 'saveOptF.pas' {SaveDFOptions},
  saveOpt1 in 'saveOpt1.pas' {SaveOptions},
  saveObj1 in 'saveObj1.pas' {SaveObjectDialog},
  Dparac2 in 'Dparac2.pas' {paramAcq},
  descdac2B in 'descdac2B.pas',
  MemoForm in 'MemoForm.pas' {ViewText},
  ParSystem in 'ParSystem.pas' {ParamSystem},
  AcqBrd1 in 'AcqBrd1.pas',
  Dfft in 'Dfft.pas',
  stmFFT in 'stmFFT.pas',
  stmcooX1 in 'stmcooX1.pas' {FastCoo},
  DacScale1 in 'DacScale1.pas' {DacScale1Form},
  stmalpha2 in 'stmalpha2.pas',
  stmAveA1 in 'stmAveA1.pas',
  Mtag2 in 'Mtag2.pas',
  stmUpal0 in 'stmUpal0.pas',
  Iniarr0 in 'iniarr0.pas' {initTvectorArray},
  VAgetOpt1 in 'VAgetOpt1.pas' {VAGetOptions},
  stmFont1 in 'stmFont1.pas',
  stmCPlot1 in 'stmCPlot1.pas',
  ProcFile in 'ProcFile.pas' {ProcessFileForm},
  stmmatA1 in 'stmmatA1.pas',
  stmCorA1 in 'stmCorA1.pas',
  ncompil3 in 'ncompil3.pas',
  stmPG in 'stmPG.pas',
  compg1 in 'compg1.pas' {PgCommand},
  stmPlotF in 'stmPlotF.pas',
  PvidCom1 in 'PvidCom1.pas' {VideoCommand},
  ObjFileO in 'ObjFileO.pas' {ObjectFileOptions},
  DnDobj1 in 'DnDobj1.pas' {DragAndDropObject},
  isabuf1 in 'isabuf1.pas',
  acqCom1 in 'acqCom1.pas',
  CBbrd1 in 'CBbrd1.pas',
  stmVlist0 in 'stmVlist0.pas',
  VlistA1 in 'VlistA1.pas',
  Ocom1 in 'Ocom1.pas' {ObjFileCommand},
  velicom0 in 'velicom0.pas' {VlistOptions},
  FXctrl0 in 'FXctrl0.pas' {FXcontrol},
  gratDX1 in 'gratDX1.pas',
  syspal32 in 'syspal32.pas' {saisiePal32},
  Getdeg0 in 'Getdeg0.pas' {Degform},
  stmstmX0 in 'stmstmX0.pas',
  StmmvtX1 in 'StmmvtX1.pas',
  defform in 'defForm.pas' {GenForm},
  stimForm in 'stimForm.pas',
  geton0 in 'getOn0.pas',
  selrf1 in 'selRF1.pas' {FormSelectRF},
  getTr2 in 'Gettr2.pas',
  getrev1 in 'Getrev1.pas' {getRevCor1},
  PhaseTR1 in 'PhaseTR1.pas',
  Stmline0 in 'Stmline0.pas',
  VisuSys1 in 'VisuSys1.pas' {VisualSys},
  actifstm in 'actifstm.pas' {getActiveStim},
  StmMf1 in 'StmMf1.pas',
  FuncProp in 'FuncProp.pas' {FunctionProp},
  MfitProp in 'MfitProp.pas' {MFitProp1},
  stmMfit1 in 'stmMfit1.pas',
  BmatCont1 in 'BmatCont1.pas' {BuildContourForm},
  filter1 in 'filter1.pas',
  DXscr0 in 'DXscr0.pas' {DXscreenB},
  stmVS0 in 'stmVS0.pas',
  ElphyHead in 'ElphyHead.pas' {ElphyEntete},
  stmMseq0 in 'Stmmseq0.pas',
  TPform0 in 'TPform0.pas' {Pform},
  CopyClip0 in 'CopyClip0.pas' {CopyClip},
  DigiOpt0 in 'DigiOpt0.pas' {DigiOptions},
  cbOpt0 in 'cbOpt0.pas' {CBoptions},
  Dtbedit1 in 'DtbEdit1.pas' {ArrayEditor},
  XYPedit1 in 'XYPedit1.pas' {XYplotEditor},
  stmClist1 in 'stmClist1.pas',
  ClistForm1 in 'ClistForm1.pas' {ClistForm},
  StmCListProp in 'stmClistProp.pas' {ClistProp},
  propSyncC in 'propSyncC.pas' {SyncCProperties},
  AxDD132x in 'AxDD132x.pas',
  DD1322brd in 'DD1322brd.pas',
  NIoptions in 'NIoptions.pas' {NIOpt},
  ElphyFormat in 'ElphyFormat.pas',
  DataGeneFile in 'DataGeneFile.pas',
  ElphyFile in 'ElphyFile.pas',
  stmCoo1 in 'stmCoo1.pas',
  Cood0 in 'Cood0.pas' {CooD},
  stmSymbs1 in 'stmSymbs1.pas',
  linFuncProp in 'linFuncProp.pas' {getLineFunc},
  lineHorProp in 'lineHorProp.pas' {getLineHor},
  stmSymbProp in 'stmSymbProp.pas' {getSymbol},
  AcqstmPrm in 'AcqstmPrm.pas' {AcqstimParam},
  DrawFile1 in 'DrawFile1.pas' {RedrawFile},
  RepFile1 in 'repFile1.pas' {ReplayFile},
  chooseOb in 'Chooseob.pas' {ChooseObject},
  Detform1 in 'Detform1.pas' {DetPanel},
  stmCur0 in 'stmCur0.pas',
  stmWinCur in 'stmWinCur.pas',
  stmWindet1 in 'stmWindet1.pas',
  WdetForm1 in 'WdetForm1.pas' {WinDetPanel},
  TestAvi0 in 'TestAvi0.pas',
  MyAVI0 in 'MyAVI0.pas',
  dibForm0 in 'dibForm0.pas' {DibForm},
  WdetDlg1 in 'WdetDlg1.pas' {WindetectDlg},
  EditScroll1 in 'EditScroll1.pas' {EditScroll: TFrame},
  colorPan1 in 'colorPan1.pas' {colorPan: TFrame},
  pgc0 in 'pgc0.pas',
  MotRes1 in 'MotRes1.pas',
  Hlist0 in 'Hlist0.pas',
  symbac3 in 'Symbac3.pas',
  getDXdev1 in 'getDXdev1.pas' {DXdevice},
  matrix0 in 'matrix0.pas',
  Recorder1 in 'Recorder1.pas' {AcqCommand},
  ElphyInfo1 in 'ElphyInfo1.pas' {ElphyFileInfo},
  DemoOpt1 in 'DemoOpt1.pas' {DemoOptions},
  MtagProp1 in 'MtagProp1.pas' {MtagProperties},
  BMex1 in 'BMex1.pas',
  getColVec1 in 'getColVec1.pas' {ColParam},
  DisplayFrame1 in 'DisplayFrame1.pas' {DispFrame: TFrame},
  TestForm1 in 'TestForm1.pas' {TestForm},
  IspGS1 in 'IspGS1.pas',
  Wave1 in 'Wave1.pas',
  Fplayer1 in 'Fplayer1.pas' {FilePlayer},
  stmISPL1 in 'stmISPL1.pas',
  Mat3Dform in 'Mat3Dform.pas' {Mat3Dcom},
  GlGsU1 in 'GlGsU1.pas',
  stmPlay1 in 'stmPlay1.pas',
  DescIgor in 'DescIgor.pas',
  IgorBin in 'IgorBin.pas',
  BinFile1 in 'BinFile1.pas',
  AxDD132X2 in 'AxDD132X2.pas',
  EigenvalG in 'EigenvalG.pas',
  stmVecU1 in 'stmVecU1.pas',
  stmVSBM1 in 'stmVSBM1.pas',
  getVSBM1 in 'getVSBM1.pas' {GetVSBM},
  stmTrajectory1 in 'stmTrajectory1.pas',
  DisplayUOFrame1 in 'DisplayUOFrame1.pas' {UODisplay: TFrame},
  GridBuilder1 in 'GridBuilder1.pas',
  stmGrid3 in 'stmGrid3.pas',
  ColorFrame1 in 'ColorFrame1.pas' {ColFrame: TFrame},
  Windriver0 in 'Windriver0.pas',
  stmWT1 in 'stmWT1.pas',
  stmMatU1 in 'stmMatU1.pas',
  stmVSmovie in 'stmVSmovie.pas',
  stmRtime1 in 'stmRtime1.pas',
  ctrlDSP in 'ctrlDSP.pas',
  DescVal1 in 'DescVal1.pas',
  GNoise1 in 'GNoise1.pas',
  descElphy1 in 'descElphy1.pas',
  stmDN2 in 'stmDN2.pas',
  NumToolsMatrix in 'NumToolsMatrix.pas',
  stmRev1 in 'stmRev1.pas',
  stmDNter1 in 'stmDNter1.pas',
  LqrPstw0 in 'LqrPstw0.pas',
  stmGaborDense1 in 'stmGaborDense1.pas',
  testDLLc in 'testDLLc.pas',
  ITCmm in 'Itcmm.pas',
  ITCbrd in 'ITCbrd.pas',
  AcqInf2 in 'AcqInf2.pas',
  StimInf2 in 'StimInf2.pas',
  ITCopt1 in 'ITCopt1.pas' {ITCoptions},
  DFprop1 in 'DFprop1.pas' {DataFileProp},
  SyslistTreeView in 'SyslistTreeView.pas' {SyslistView: TFrame},
  LoadFromMat1 in 'LoadFromMat1.pas' {LoadFromMatDlg},
  LoadFromVec1 in 'LoadFromVec1.pas' {LoadFromVecDlg},
  AngleOption1 in 'AngleOption1.pas' {AngularOpt},
  OIblock1 in 'OIblock1.pas',
  stmOIseq1 in 'stmOIseq1.pas',
  stmRegion1 in 'stmRegion1.pas',
  DipTest1 in 'DipTest1.pas',
  stmMCC in 'stmMCC.pas',
  Matcood0 in 'Matcood0.pas' {MatCooD},
  descStk1 in 'descStk1.pas',
  Heap0 in 'Heap0.pas',
  Imacro1 in 'Imacro1.pas',
  FrameTable1 in 'FrameTable1.pas' {TableFrame: TFrame},
  RTcom2 in 'RTcom2.pas',
  ChooseNrnName in 'ChooseNrnName.pas' {ChooseNrnSym},
  EditorColors1 in 'editorColors1.pas' {GetEditorColors},
  adamsbdfG in 'adamsbdfG.pas',
  SimpleODE in 'SimpleODE.pas',
  ClientPipe1 in 'ClientPipe1.pas',
  StmNrnServer in 'StmNrnServer.pas',
  MesureRefreshTime in 'MesureRefreshTime.pas' {RefreshTimeMeasurement},
  ChooseTopic1 in 'chooseTopic1.pas' {ChooseTopic},
  ConfirmReplace in 'ConfirmReplace.pas' {ConfirmReplaceDialog},
  dacMstim3 in 'dacMstim3.pas' {MultiGstim2},
  RTlog1 in 'RTlog1.pas' {RTcomLog},
  dtf0 in 'dtf0.pas',
  stmOnlineStat1 in 'stmOnlineStat1.pas',
  DBViews in 'DBViews.pas',
  VSgraph0 in 'VSgraph0.pas',
  NIDAQmx01 in 'NIDAQmx01.pas',
  NIbrd1 in 'NIbrd1.pas',
  cyberK1 in 'cyberK1.pas',
  RegEditor1 in 'regEditor1.pas' {RegEditor},
  EditRegList1 in 'EditRegList1.pas' {EditRegList},
  stmArrowPlot1 in 'stmArrowPlot1.pas',
  MacMan1 in 'MacMan1.pas' {MacroManagerDialog},
  cyberKbrd1 in 'cyberKbrd1.pas',
  DBModels in 'DBModels.pas',
  DBObjects in 'DBObjects.pas',
  DBQuerySets in 'DBQuerySets.pas',
  DBManagers in 'DBManagers.pas',
  DBShortcuts in 'DBShortcuts.pas',
  DBUnic in 'DBUnic.pas',
  DBCache in 'DBCache.pas';

{$R *.RES}

begin
  Application.Initialize;
  Application.CreateForm(TMainDac, MainDac);
  Application.CreateForm(TprintMgDialog, printMgDialog);
  Application.CreateForm(TOptionsMultg1, OptionsMultg1);
  Application.CreateForm(TgetCooDcoo, getCooDcoo);
  Application.CreateForm(Tpaint0, paint0);
  Application.CreateForm(TOptionsVec1, OptionsVec1);
  Application.CreateForm(TChooseEp, ChooseEp);
  Application.CreateForm(TGetObjName, GetObjName);
  Application.CreateForm(TinitTvector, initTvector);
  Application.CreateForm(TinitTmatrix, initTmatrix);
  Application.CreateForm(TinitRealArray, initRealArray);
  Application.CreateForm(TinitTmultigraph, initTmultigraph);
  Application.CreateForm(TtagBlock, tagBlock);
  Application.CreateForm(TinitImagePlot, initImagePlot);
  Application.CreateForm(TSaisieColParam, SaisieColParam);
  Application.CreateForm(TinitVzoom, initVzoom);
  Application.CreateForm(TNumOfLines, NumOfLines);
  Application.CreateForm(TCursorProp, CursorProp);
  Application.CreateForm(TOICooD, OICooD);
  Application.CreateForm(TStmColSat, StmColSat);
  Application.CreateForm(TWsyslist, Wsyslist);
  Application.CreateForm(TMFuncProp, MFuncProp);
  Application.CreateForm(TFitProp1, FitProp1);
  Application.CreateForm(TCommandBoxOption, CommandBoxOption);
  Application.CreateForm(TMenuForm, MenuForm);
  Application.CreateForm(TDivideWin, DivideWin);
  Application.CreateForm(TGEditFind, GEditFind);
  Application.CreateForm(TGEditReplace, GEditReplace);
  Application.CreateForm(TPopUps, PopUps);
  Application.CreateForm(TinitGraph, initGraph);
  Application.CreateForm(TChooseObject2, ChooseObject2);
  Application.CreateForm(TVlistProperties, VlistProperties);
  Application.CreateForm(TDfSaveList, DfSaveList);
  Application.CreateForm(TdetectSave, detectSave);
  Application.CreateForm(TSaveDFOptions, SaveDFOptions);
  Application.CreateForm(TSaveOptions, SaveOptions);
  Application.CreateForm(TSaveObjectDialog, SaveObjectDialog);
  Application.CreateForm(TparamAcq, paramAcq);
  Application.CreateForm(TParamSystem, ParamSystem);
  Application.CreateForm(TFastCoo, FastCoo);
  Application.CreateForm(TDacScale1Form, DacScale1Form);
  Application.CreateForm(TinitTvectorArray, initTvectorArray);
  Application.CreateForm(TVAGetOptions, VAGetOptions);
  Application.CreateForm(TPgCommand, PgCommand);
  Application.CreateForm(TVideoCommand, VideoCommand);
  Application.CreateForm(TObjectFileOptions, ObjectFileOptions);
  Application.CreateForm(TDragAndDropObject, DragAndDropObject);
  Application.CreateForm(TObjFileCommand, ObjFileCommand);
  Application.CreateForm(TVlistOptions, VlistOptions);
  Application.CreateForm(TsaisiePal32, saisiePal32);
  Application.CreateForm(TFormSelectRF, FormSelectRF);
  Application.CreateForm(TgetActiveStim, getActiveStim);
  Application.CreateForm(TFunctionProp, FunctionProp);
  Application.CreateForm(TMFitProp1, MFitProp1);
  Application.CreateForm(TBuildContourForm, BuildContourForm);
  Application.CreateForm(TElphyEntete, ElphyEntete);
  Application.CreateForm(TCopyClip, CopyClip);
  Application.CreateForm(TDigiOptions, DigiOptions);
  Application.CreateForm(TCBoptions, CBoptions);
  Application.CreateForm(TClistProp, ClistProp);
  Application.CreateForm(TSyncCProperties, SyncCProperties);
  Application.CreateForm(TClistProp, ClistProp);
  Application.CreateForm(TSyncCProperties, SyncCProperties);
  Application.CreateForm(TNIOpt, NIOpt);
  Application.CreateForm(TCooD, CooD);
  Application.CreateForm(TgetLineFunc, getLineFunc);
  Application.CreateForm(TgetLineHor, getLineHor);
  Application.CreateForm(TgetSymbol, getSymbol);
  Application.CreateForm(TAcqstimParam, AcqstimParam);
  Application.CreateForm(TRedrawFile, RedrawFile);
  Application.CreateForm(TReplayFile, ReplayFile);
  Application.CreateForm(TChooseObject, ChooseObject);
  Application.CreateForm(TDetPanel, DetPanel);
  Application.CreateForm(TWinDetPanel, WinDetPanel);
  Application.CreateForm(TDibForm, DibForm);
  Application.CreateForm(TWindetectDlg, WindetectDlg);
  Application.CreateForm(TDemoOptions, DemoOptions);
  Application.CreateForm(TColParam, ColParam);
  Application.CreateForm(TTestForm, TestForm);
  Application.CreateForm(TFilePlayer, FilePlayer);
  Application.CreateForm(TGetVSBM, GetVSBM);
  Application.CreateForm(TITCoptions, ITCoptions);
  Application.CreateForm(TDataFileProp, DataFileProp);
  Application.CreateForm(TLoadFromMatDlg, LoadFromMatDlg);
  Application.CreateForm(TLoadFromVecDlg, LoadFromVecDlg);
  Application.CreateForm(TAngularOpt, AngularOpt);
  Application.CreateForm(TMatCooD, MatCooD);
  Application.CreateForm(TChooseNrnSym, ChooseNrnSym);
  Application.CreateForm(TGetEditorColors, GetEditorColors);
  Application.CreateForm(TRefreshTimeMeasurement, RefreshTimeMeasurement);
  Application.CreateForm(TChooseTopic, ChooseTopic);
  Application.CreateForm(TConfirmReplaceDialog, ConfirmReplaceDialog);
  Application.CreateForm(TRTcomLog, RTcomLog);
  Application.CreateForm(TEditRegList, EditRegList);
  Application.CreateForm(TMacroManagerDialog, MacroManagerDialog);
  Application.Run;
end.

