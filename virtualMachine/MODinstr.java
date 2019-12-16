package TJasn.virtualMachine;

import static TJasn.virtualMachine.CodeInterpreter.*;

public class MODinstr extends ZeroOperandInstruction {

  void execute ()
  {
    /* XXXX */
    EXPRSTACK[--ESP-1] %= EXPRSTACK[ESP];
    /* XXXX */

  }

  public MODinstr ()
  {
    super("MOD");
  }
}

