
public class TesteReferencia {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		
		Conta primeiraConta = new Conta();
		primeiraConta.saldo = 300;
		
		System.out.println("O Saldo da primeira: " + primeiraConta.saldo);
		
		Conta segundaConta = primeiraConta;
		System.out.println("O Saldo da primeira: " + segundaConta.saldo);
		
		segundaConta.saldo += 100;
		System.out.println("O Saldo da primeira: " + segundaConta.saldo);
		System.out.println("O Saldo da primeira: " + primeiraConta.saldo);

	}

}
