package TJasn.virtualMachine;

import static TJasn.virtualMachine.CodeInterpreter.*;

public class ORinstr extends ZeroOperandInstruction {

  void execute ()
  {
    /* XXXX */
    EXPRSTACK[--ESP-1] |= EXPRSTACK[ESP];
    /* XXXX */

  }

  public ORinstr ()
  {
    super("OR");
  }
}

