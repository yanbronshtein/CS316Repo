package TJasn.virtualMachine;

import static TJasn.virtualMachine.CodeInterpreter.*;

public class NOTinstr extends ZeroOperandInstruction {

  void execute ()
  {
     /* XXXX */
    EXPRSTACK[ESP-1] ^= 1;
    /* XXXX */

  }

  public NOTinstr ()
  {
    super("NOT");
  }
}
