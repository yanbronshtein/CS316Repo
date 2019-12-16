package TJasn.virtualMachine;

import static TJasn.virtualMachine.CodeInterpreter.*;
import TJasn.TJ;

public class CALLSTATMETHODinstr extends OneOperandInstruction {

  void execute ()
  {
    /* XXXX */
    TJ.data[ASP++ - POINTERTAG] = PC;
    PC = this.address;
    /* XXXX */

  }

  public CALLSTATMETHODinstr (int startAddr)
  {
    super(startAddr, "CALLSTATMETHOD");
  }
}
