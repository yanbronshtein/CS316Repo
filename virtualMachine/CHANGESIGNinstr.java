package TJasn.virtualMachine;

import static TJasn.virtualMachine.CodeInterpreter.*;
import TJasn.virtualMachine.VirtualMachineHaltException;

public class CHANGESIGNinstr extends ZeroOperandInstruction {

  void execute () throws VirtualMachineHaltException
  {
      /* XXXX */
    EXPRSTACK[ESP-1] *= -1;


    /* XXXX */

  }

  public CHANGESIGNinstr ()
  {
    super("CHANGESIGN");
  }
}

