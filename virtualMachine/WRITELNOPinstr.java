package TJasn.virtualMachine;

public class WRITELNOPinstr extends ZeroOperandInstruction {

  void execute ()
  {
    /* XXXX */
    System.out.println();
    /* XXXX */
  }

  public WRITELNOPinstr ()
  {
    super("WRITELNOP");
  }
}
