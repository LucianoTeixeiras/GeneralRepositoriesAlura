
public class TestaContaSemCliente {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		
		Conta contaDaMarcela = new Conta();
		System.out.println(contaDaMarcela.saldo);
		
		
		contaDaMarcela.titular = new Cliente();
		System.out.println(contaDaMarcela.titular);

		contaDaMarcela.titular.nome = "Marcela";
		System.out.println(contaDaMarcela.titular.nome);

	}

}
