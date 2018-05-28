
public class Conta {

	private double saldo;
	private int agencia = 42;
	private int numero;
	private Cliente titular = new Cliente();
	
	

	public Conta(int agencia, int numero) {
		this.agencia = agencia;
		this.numero = numero;
		System.out.println("Estou criando uma conta: " + this.numero + " Da Agencia: " + this.agencia);;
	}

	public void deposita(double valor) {

		this.saldo += valor;

	}

	public boolean saca(double valor) {
		if (this.saldo >= valor) {
			this.saldo -= valor;
			return true;
		} else {
			return false;
		}
	}

	public boolean transfere(double valor, Conta destino) {
		if (this.saldo >= valor) {

			this.saldo -= valor;
			destino.deposita(valor);
			return true;

		}
		return false;
	}

	public double getSaldo() {

		return this.saldo;

	}

	public int getNumero() {
		return this.numero;
	}

	public void setNumero(int numero) {
		if (numero <= 0) {

			System.out.println("Valor negativo para Número não ermitido!!!");
			return;

		}

		this.numero = numero;
	}

	public int getAgencia() {
		return this.agencia;
	}

	public void setAgencia(int agencia) {
		if (agencia <= 0) {

			System.out.println("Valor negativo para Agência não ermitido!!!");
			return;
		}
		this.agencia = agencia;
	}

	public Cliente getTitular() {
		return this.titular;
	}

	public void setTitular(Cliente titular) {
		this.titular = titular;
	}

}
