
public class TestaBanco {

	public static void main(String[] args) {
		Cliente paulo = new Cliente();
		paulo.nome = "Paulo Silveira";
		paulo.cpf = "222.222.222-22";
		paulo.profissao = "programador";

		Conta contaDoPaulo = new Conta();
		contaDoPaulo.deposita(100);

		// contaDoPaulo.titular = paulo;
		contaDoPaulo.setTitular(paulo);
		System.out.println("O Saldo da Conta do " + contaDoPaulo.getTitular().nome + " é: " + contaDoPaulo.getSaldo());

		System.out.println(contaDoPaulo.getTitular());
		System.out.println(paulo);

	}

}
