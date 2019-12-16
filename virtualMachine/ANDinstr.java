package TJasn.virtualMachine;

import static TJasn.virtualMachine.CodeInterpreter.*;

public class ANDinstr extends ZeroOperandInstruction {

  void execute ()
  {
    /* XXXX */
    EXPRSTACK[--ESP-1] &= EXPRSTACK[ESP];
    /* XXXX */

  }

  public ANDinstr ()
  {
    super("AND");
  }
}
