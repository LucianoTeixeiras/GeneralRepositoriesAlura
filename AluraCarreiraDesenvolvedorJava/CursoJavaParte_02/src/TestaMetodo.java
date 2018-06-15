
public class TestaMetodo {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		
		Conta conta = new Conta();
		conta.saldo = 100;
		conta.deposita(50);		
		System.out.println(conta.saldo);
		
		boolean conseguiuRetirar = conta.saca(20); 
		System.out.println(conta.saldo);
		System.out.println(conseguiuRetirar);
		
		Conta contaDaMarcela = new Conta();
		contaDaMarcela.deposita(1000);
		
		if(contaDaMarcela.transfere(300, conta)) {
			System.out.println("Transferencia efetuada com sucesso!!!");
		}else{
			System.out.println("Saldo Insuficiente para Efetuar a Transferencia!!!");
		};
		System.out.println(contaDaMarcela.saldo);
		
		System.out.println(conta.saldo);

	}

}
