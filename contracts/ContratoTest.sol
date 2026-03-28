// Licencia
// SPDX-License-Identifier: LGPL-3.0-only

// version
pragma solidity 0.8.24;

// Contrato 
contract ContratoTest {

    // Numeros
    uint256 num1 = 1; // [0, 2^256 - 1]
    uint8 num2 = 255; // [0, 2^8 - 1]
    uint8 num3 = 127; // [-2^7, 2^7 - 1]

    uint32 result = num2 * num3;

    // string
    string palabra = "Hola Mundo";

    // booleanos
    bool test = true;
    bool test2 = false;

    // arrays
    uint256[5] arraytest = [1, 2, 3, 4, 5];

    // mapping
    mapping(address => uint256) example23;

    // structs 
    struct Person{
        string name;
        uint256 age;
    }


    // Modificadores
    modifier modificador1{
        if (5 + 2 != 10) revert();
        _;
    }

    // eventos
    event Multiplicacion(uint256 resultado);

    // FUNCIONES

    // External
    // palabra (function) + nombre + argumentos + visibilidad + modificadores + valor devuelto
    // Visibilidad:
        // - external: Solo se puede llamar desde fuera del contrato
        // - internal: Solo se puede llamar desde dentro del contrato
        // - public: Se puede llamar desde dentro y fuera del contrato
        // - private: Solo se puede llamar desde dentro del contrato, no es heredable
    function multiplier(uint256 num1_, uint256 num2_) public modificador1 returns(uint256 resultado){
        resultado = num1_* num2_;

        emit Multiplicacion(resultado);
        return resultado;
    }



}