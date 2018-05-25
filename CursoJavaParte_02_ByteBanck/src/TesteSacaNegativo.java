
public class TesteSacaNegativo {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		
		Conta conta = new Conta();
		conta.deposita(100);
		//conta.saca(200);
		System.out.println(conta.saca(200));
		
		conta.saca(101);
		
		System.out.println(conta.getSaldo());

	}

}
