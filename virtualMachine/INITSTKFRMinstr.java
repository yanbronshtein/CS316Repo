package TJasn.virtualMachine;

import static TJasn.virtualMachine.CodeInterpreter.*;
import TJasn.TJ;
import TJasn.virtualMachine.VirtualMachineHaltException;

public class INITSTKFRMinstr extends OneOperandInstruction {

  void execute () throws VirtualMachineHaltException
  {
     /* XXXX */
    TJ.data[ASP++ - POINTERTAG] = FP;
    FP = ASP - 1;
    ASP += this.operand;
    /* XXXX */
  }

  public INITSTKFRMinstr (int locationsNeededForLocalVars)
  {
    super(locationsNeededForLocalVars, "INITSTKFRM");
  }
}

