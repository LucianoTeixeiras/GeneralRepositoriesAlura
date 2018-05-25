
public class Conta {
	
	private double saldo;
	private int agencia = 42;
	private int numero;
	private Cliente titular = new Cliente();
	
	public void deposita(double valor) {
		
		this.saldo += valor;
		
	}
	
	public boolean saca(double valor) {
		if(this.saldo >= valor) {
			this.saldo -= valor;
			return true;
		}else {
			return false;
		}
	}
	
	public boolean transfere(double valor, Conta destino ) {
		if (this.saldo >= valor) {
			
			this.saldo -= valor;
			destino.deposita(valor);
			return true;
			
		}
			return false;
	}
	
	public double getSaldo(){
		
		return this.saldo;
		
	}

}
