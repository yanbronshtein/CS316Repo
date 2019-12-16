package TJasn.virtualMachine;

import static TJasn.virtualMachine.CodeInterpreter.*;

public class GEinstr extends ZeroOperandInstruction {

  void execute ()
  {
    /* XXXX */
    EXPRSTACK[--ESP-1] =(EXPRSTACK[ESP-1] >= EXPRSTACK[ESP]) ? 1 : 0;
    /* XXXX */
  }

  public GEinstr ()
  {
    super("GE");
  }
}

