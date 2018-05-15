
public class TesteReferencia {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		
		Conta primeiraConta = new Conta();
		primeiraConta.saldo = 300;
		System.out.println("O Saldo da primeira: " + primeiraConta.saldo);
		
		Conta segundaConta = primeiraConta;

	}

}
