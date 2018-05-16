
public class TestaBanco {
	
	public static void main(String[] args) {
		Cliente paulo = new Cliente();
		paulo.nome = "Paulo Silveira";
		paulo.cpf = "222.222.222-22";
		paulo.profissao = "programador";
		
		Conta contaDoPaulo = new Conta();
		contaDoPaulo.deposita(100);
		
		contaDoPaulo.titular = paulo;
		System.out.println("O Saldo da Conta do " + contaDoPaulo.titular.nome + " é: " + contaDoPaulo.saldo);
		
		System.out.println(contaDoPaulo.titular);
		System.out.println(paulo);
		
		
	}

}
