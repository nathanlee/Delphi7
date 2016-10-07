
{******************************************************}
{ģ�����ƣ���ȡע�������                              }
{�汾��    0.1                                         }
{���ߣ�    ����                                      }
{��;��    �����û�ע����                              }
{���ڣ�    2004��6��17��                               }
{******************************************************}

unit RegCodeInfo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, registry, ComCtrls,IdGlobal;

type
  TRegCodeFrm = class(TForm)
    leCode: TLabeledEdit;
    LePassCode: TLabeledEdit;
    BtnOK: TBitBtn;
    BtnCan: TBitBtn;
    procedure FormCreate(Sender: TObject);
    procedure BtnOKClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  RegCodeFrm: TRegCodeFrm;
  function Q1dfe3df3df4r4dfg: string;
  function L398jkfd93r4fjk938: string;


implementation

{$R *.dfm}

{****************************************************}
{����/�������ƣ�Crypt(Text: string): string;         }
{���ܣ���ȡCPU ID �� CPU Vendor                      }
{���룺��                                            }
{                                                    }
{�����CPUID                                         }
{������GetCPUID                                      }
{****************************************************}
type
  TCPUID = array[1..4] of Longint;
  TVendor = array[0..11] of char;

function GetCpuIDx: TCPUID; assembler; register;
asm
  PUSH    EBX         {Save affected register}
  PUSH    EDI
  MOV     EDI,EAX     {@Resukt}
  MOV     EAX,1
  DW      $A20F       {CPUID Command}
  STOSD               {CPUID[1]}
  MOV     EAX,EBX
  STOSD               {CPUID[2]}
  MOV     EAX,ECX
  STOSD               {CPUID[3]}
  MOV     EAX,EDX
  STOSD               {CPUID[4]}
  POP     EDI         {Restore registers}
  POP     EBX
end;

function GetCPUVendorx: TVendor; assembler; register;
asm
  PUSH    EBX               {Save affected register}
  PUSH    EDI
  MOV     EDI,EAX           {@Result (TVendor)}
  MOV     EAX,0
  DW      $A20F             {CPUID Command}
  MOV     EAX,EBX
  XCHG          EBX,ECX     {save ECX result}
  MOV                   ECX,4
@1:
  STOSB
  SHR     EAX,8
  LOOP    @1
  MOV     EAX,EDX
  MOV                   ECX,4
@2:
  STOSB
  SHR     EAX,8
  LOOP    @2
  MOV     EAX,EBX
  MOV                   ECX,4
@3:
  STOSB
  SHR     EAX,8
  LOOP    @3
  POP     EDI              {Restore registers}
  POP     EBX
end;

function Q1dfe3df3df4r4dfg: string;
var
  CPUID: TCPUID;
  I: Integer;
  Q323,K525:String;
begin
  for I := Low(CPUID) to High(CPUID) do CPUID[I] := -1;
  CPUID := GetCPUIDx;
  Q323 := IntToStr(CPUID[1]) + IntToStr(CPUID[2]) + IntToStr(CPUID[3]) + IntToStr(CPUID[4]);
  k525 := '';
  for I := 1 to length(Q323) do
  begin
    if IsNumeric(Q323[I]) then
      K525 := K525 + Q323[I]
    else
      K525 := K525 + '0';
  end;
  result := K525;
end;

function L398jkfd93r4fjk938: string;
begin
  result := GetCPUVendorx;
end;

procedure TRegCodeFrm.FormCreate(Sender: TObject);
begin
  leCode.Text := IntToStr(StrToInt64(Q1dfe3df3df4r4dfg) + 82269134);
end;

procedure TRegCodeFrm.BtnOKClick(Sender: TObject);
begin
  Lepasscode.Text := IntToStr(((StrToInt64(leCode.Text) - 82269134) shl 3) shr 1); //Crypt()
end;

end.

