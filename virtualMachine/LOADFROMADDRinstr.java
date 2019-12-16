package TJasn.virtualMachine;

import static TJasn.virtualMachine.CodeInterpreter.*;
import TJasn.TJ;
import TJasn.virtualMachine.VirtualMachineHaltException;

public class LOADFROMADDRinstr extends ZeroOperandInstruction {

  void execute () throws VirtualMachineHaltException
  {

    /*save the address placed onto EXPR stack
      * by either PUSHSTATADDR of PUSHLOCADDR */
    int ptr = EXPRSTACK[ESP-1];

    /* Retrieve value from data memory stored at the offset-adjusted address in p */
    int value = TJ.data[ptr-CodeInterpreter.POINTERTAG];

    /*Save the retrieved value into the top of the stack */
    EXPRSTACK[ESP-1] = value;


  }

  public LOADFROMADDRinstr ()
  {
    super("LOADFROMADDR");
  }
}

