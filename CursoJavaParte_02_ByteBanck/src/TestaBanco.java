
public class TestaBanco {

	public static void main(String[] args) {
		Cliente paulo = new Cliente();
		paulo.setNome("Paulo Silveira");
		paulo.setCpf("222.222.222-22");
		paulo.setProfissao("programador");

		Conta contaDoPaulo = new Conta(123, 456);
		contaDoPaulo.deposita(100);

		// contaDoPaulo.titular = paulo;
		contaDoPaulo.setTitular(paulo);
		System.out.println(
				"O Saldo da Conta do " + contaDoPaulo.getTitular().getNome() + " é: " + contaDoPaulo.getSaldo());

		System.out.println(contaDoPaulo.getTitular());
		System.out.println(paulo);

	}

}
