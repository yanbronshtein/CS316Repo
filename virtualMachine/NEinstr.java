package TJasn.virtualMachine;

import static TJasn.virtualMachine.CodeInterpreter.*;

public class NEinstr extends ZeroOperandInstruction {

  void execute ()
  {
     /* XXXX */
    EXPRSTACK[--ESP-1] = (EXPRSTACK[ESP-1] != EXPRSTACK[ESP]) ? 1 : 0;
    /* XXXX */

  }

  public NEinstr ()
  {
    super("NE");
  }
}
