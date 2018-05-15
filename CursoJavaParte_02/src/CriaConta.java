
public class CriaConta {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		
		Conta primeiraConta = new Conta();
		primeiraConta.saldo = 200;
		System.out.println(primeiraConta.saldo);
		
		primeiraConta.saldo += 100;
		System.out.println(primeiraConta.saldo);
		
		Conta segundaConta = new Conta();
		segundaConta.saldo = 50;
		segundaConta.agencia = 156;
		
		System.out.println("A Primeira Conta tem: " + primeiraConta.saldo);
		System.out.println("A Segunda Conta tem: " + segundaConta.saldo);

		System.out.println("A Agência da Primeira Conta é: " + primeiraConta.agencia);
		System.out.println("A Agência da Segunda Conta é: " + segundaConta.agencia);

	}

}
