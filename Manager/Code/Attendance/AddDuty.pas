{******************************************************}
{模块名称：职务设置                                    }
{版本：    0.1  （继承自AddDeptFrm）                   }
{作者：    李振华                                      }
{用途：    人事管理，考勤                              }
{日期：    2004年03月11日 83107329                     }
{******************************************************}
unit AddDuty;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, AddDept, DB, ADODB, Grids, DBGridEh, StdCtrls, Buttons;

type
  TAddDutyFrm = class(TAddDeptFrm)
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  AddDutyFrm: TAddDutyFrm;

implementation

{$R *.dfm}

end.
