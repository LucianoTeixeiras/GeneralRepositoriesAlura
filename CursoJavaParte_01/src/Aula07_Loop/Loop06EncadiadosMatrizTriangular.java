package Aula07_Loop;

public class Loop06EncadiadosMatrizTriangular {

	public static void main(String[] args) {
		// TODO Auto-generated method stub

		for (int linha = 0; linha < 10; linha++) {
			for (int coluna = 0; coluna < 10; coluna++) {
				if (coluna > linha) {
					break;
				}
				System.out.print(" * ");
			}
			System.out.println();
		}
	}
}
