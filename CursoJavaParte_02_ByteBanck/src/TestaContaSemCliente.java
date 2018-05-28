
public class TestaContaSemCliente {

	public static void main(String[] args) {
		// TODO Auto-generated method stub

		Conta contaDaMarcela = new Conta(456, 456);
		System.out.println(contaDaMarcela.getSaldo());

		// contaDaMarcela.titular = new Cliente();
		System.out.println(contaDaMarcela.getTitular());

		contaDaMarcela.getTitular().setNome("Marcela");
		System.out.println(contaDaMarcela.getTitular().getNome());

	}

}
