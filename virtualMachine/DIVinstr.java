package TJasn.virtualMachine;

import static TJasn.virtualMachine.CodeInterpreter.*;

public class DIVinstr extends ZeroOperandInstruction {

  void execute ()
  {
    /* XXXX */
    EXPRSTACK[--ESP-1] /= EXPRSTACK[ESP];
    /* XXXX */

  }

  public DIVinstr ()
  {
    super("DIV");
  }
}
