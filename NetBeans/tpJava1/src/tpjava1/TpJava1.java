
package tpjava1;

import java.util.Scanner;

public class TpJava1 {

    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        System.out.println("Ingrese su nombre de usuario: ");
        String usuario = scanner.nextLine();
        System.out.println("Ingrese su contraseña: ");
        String pass = scanner.nextLine();
        System.out.println("Ingrese su nombre: ");
        String nombre = scanner.nextLine();
        System.out.println("Ingrese su apellido: ");
        String apellido = scanner.nextLine();
        System.out.println("Ingrese su edad: ");
        String edad = scanner.nextLine();
        System.out.println("Hobbie: ");
        String hobbie = scanner.nextLine();
        System.out.println("Editor de Código preferido: ");
        String editCodigo = scanner.nextLine();
        System.out.println("Sistema operativo que usa: ");
        String sistOperativo = scanner.nextLine();
        
        System.out.println("Bienvenid@ al Sistema\nLos datos ingresados son:\nTu Usuario: " + usuario + "\nTu Clave: " + pass);
    } 
}
