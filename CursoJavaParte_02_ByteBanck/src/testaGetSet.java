
public class testaGetSet {

	public static void main(String[] args) {
		// TODO Auto-generated method stub

		Conta conta = new Conta(1337, 2552);
		conta.setNumero(2305);
		System.out.println(conta.getNumero());

		Cliente paulo = new Cliente();
		paulo.setNome("Paulo Silveira");
		conta.setTitular(paulo);

		System.out.println(conta.getTitular().getNome());

		conta.getTitular().setProfissao("Developer");

		Cliente titularDaConta = conta.getTitular();
		titularDaConta.setProfissao("Developer PL/SQL");

		System.out.println(conta.getTitular().getProfissao());

	}

}
