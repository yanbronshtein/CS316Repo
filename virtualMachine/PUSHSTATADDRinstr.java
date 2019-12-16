package TJasn.virtualMachine;

import static TJasn.virtualMachine.CodeInterpreter.*;
import TJasn.TJ;

public class PUSHSTATADDRinstr extends OneOperandInstruction {

  void execute ()
  {
    /* XXXX */
    EXPRSTACK[ESP++] = this.operand + CodeInterpreter.POINTERTAG;
    /* XXXX */

  }

  public PUSHSTATADDRinstr (int offset)
  {
    super(offset, "PUSHSTATADDR");
  }
}

