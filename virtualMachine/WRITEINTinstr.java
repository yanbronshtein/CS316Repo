package TJasn.virtualMachine;

import static TJasn.virtualMachine.CodeInterpreter.*;

public class WRITEINTinstr extends ZeroOperandInstruction {

  void execute ()
  {
    /* XXXX */
    System.out.print(EXPRSTACK[--ESP]);
    /* XXXX */
  }

  public WRITEINTinstr ()
  {
    super("WRITEINT");
  }
}

