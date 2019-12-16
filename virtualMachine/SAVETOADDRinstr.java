package TJasn.virtualMachine;

import static TJasn.virtualMachine.CodeInterpreter.*;
import TJasn.TJ;
import TJasn.virtualMachine.VirtualMachineHaltException;

public class SAVETOADDRinstr extends ZeroOperandInstruction {

  void execute () throws VirtualMachineHaltException
  {
     /* XXXX */
    int value = EXPRSTACK[ESP-1]; //Save value currently at top of expr stack
    int ptr = EXPRSTACK[ESP-2];
    TJ.data[ptr-POINTERTAG] = value;
    ESP -= 2;
    /* XXXX */

  }

  public SAVETOADDRinstr ()
  {
    super("SAVETOADDR");
  }
}

