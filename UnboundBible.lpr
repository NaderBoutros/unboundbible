program unboundbible;

uses
  {$ifdef unix}{$ifdef UseCThreads} cthreads, {$endif}{$endif}
  {$ifdef darwin} printer4lazarus, {$endif}
  Interfaces, Graphics, Forms, richmemopackage,
  UnitModule, UnitShelf, UnitCommentary, UnitDictionary,
  UnitMain, UnitLang, UnitAbout, UnitNotify, UnitSearch, UnitTool,
  UnitCompare, UnitCopy, UnitTrans, UnitParse, FormCommentary;

{$R *.res}

begin
  Application.Title := {$ifdef windows} 'Unbound Bible'; {$else} 'unboundbible'; {$endif}
  Application.Initialize;
  Application.CreateForm(TMainForm,      MainForm);
  Application.CreateForm(TAboutBox,      AboutBox);
  Application.CreateForm(TNotifyForm,    NotifyForm );
  Application.CreateForm(TSearchForm,    SearchForm );
  Application.CreateForm(TCompareForm,   CompareForm);
  Application.CreateForm(TCopyForm,      CopyForm);
  Application.CreateForm(TTranslateForm, TranslateForm);
  Application.CreateForm(TCommentaryForm,CommentaryForm);
  MainForm.TranslateAll;
  Application.Run;
end.

