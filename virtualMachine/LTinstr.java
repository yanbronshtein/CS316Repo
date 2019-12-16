package TJasn.virtualMachine;

import static TJasn.virtualMachine.CodeInterpreter.*;

public class LTinstr extends ZeroOperandInstruction {

  void execute ()
  {
    /* XXXX */
    EXPRSTACK[--ESP-1] = (EXPRSTACK[ESP-1] < EXPRSTACK[ESP]) ? 1 : 0;
    /* XXXX */


  }

  public LTinstr ()
  {
    super("LT");
  }
}
