unit Unit1;

interface

uses System.IOutils,
   System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
   FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Media,
  FMX.Controls.Presentation, FMX.StdCtrls, FMX.Objects;

type
   TForm1 = class(TForm)
    mpMusic: TMediaPlayer;
    btExit: TButton;
    btLoad: TButton;
    btPlay: TButton;
    btPause: TButton;
    btStop: TButton;
    Image1: TImage;
    procedure btExitClick(Sender: TObject);
    procedure btLoadClick(Sender: TObject);
    procedure btPlayClick(Sender: TObject);
    procedure btPauseClick(Sender: TObject);
    procedure btStopClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
   private
      { Private declarations }
   public
      { Public declarations }
   end;

var music: Tarray <String>;
 List:Tstringlist;
   Form1: TForm1;

implementation

{$R *.fmx}

procedure TForm1.btExitClick(Sender: TObject); begin Application.Terminate; end;

procedure TForm1.btLoadClick(Sender: TObject);
var i:integer;
begin
music:=TDirectory.GetFiles ('C:\Users\ropsh\Downloads'{*,'*.mp3'});
list.clear;
for I := 0 to length(music)-1 do
list.add(music[i]);
list.SaveToFile('list1.txt')
end;

procedure TForm1.btPlayClick(Sender: TObject);
begin
   if mpMusic <> nil
   then
      begin
         mpMusic.Stop;
         if mpMusic.State = TMediaState.Stopped
         then begin

            mpMusic.Volume := 1;
            mpMusic.Play;
         end;
      end;
end;

procedure TForm1.btStopClick(Sender: TObject);
begin
 if mpMusic <> nil
   then mpMusic.Stop; mpMusic.CurrentTime := 0;

end;

procedure TForm1.FormCreate(Sender: TObject);
begin
list:=tstringlist.create;
end;

procedure TForm1.btPauseClick(Sender: TObject);
begin
   if mpMusic <> nil
   then mpMusic.Stop;
end;

end.
