
public class TestaContaSemCliente {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		
		Conta contaDaMarcela = new Conta();
		System.out.println(contaDaMarcela.getSaldo());
		
		
		//contaDaMarcela.titular = new Cliente();
		System.out.println(contaDaMarcela.getTitular());

		contaDaMarcela.getTitular().setNome("Marcela");
		System.out.println(contaDaMarcela.getTitular().getNome());

	}

}
