
public class TestaValores {

	public static void main(String[] args) {
		// TODO Auto-generated method stub

		Conta conta0 = new Conta(1337, 24226);
		Conta conta1 = new Conta(1337, 24229);

		// Conta Nasce Inconsistente
		//conta.setAgencia(-50);
		//conta.setNumero(-330);
		
		System.out.println("O Total de Contsa Instanciadas é: " + Conta.getTotal());

	}

}
