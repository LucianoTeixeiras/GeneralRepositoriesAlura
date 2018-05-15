package Aula07_Loop;

public class Loop07EncadiadosMatrizTriangular02 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub

		for (int linha = 0; linha < 10; linha++) {
			for (int coluna = 0; coluna <= linha; coluna++) {
				System.out.print(" * ");
			}
			System.out.println();
		}
	}
}
