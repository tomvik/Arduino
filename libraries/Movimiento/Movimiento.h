#ifndef Movimiento_h
#define Movimiento_h

#include <Arduino.h>
#include <SensarMapa.h>
#include <SensarRealidad.h>
#include <Tile.h>
///////////Dimensiones///////////////////
const uint8_t kMapSizeMovimiento = 15;
const uint8_t kMapFloorsMovimiento = 4;
// Mapa, direccion, col, row, piso, caso, fdeseado

class Movimiento {
  public:
    /// Constructor por parámetros
    Movimiento(uint8_t iPowd, uint8_t iPowi, SensarRealidad *r, char *c, uint8_t *ic, uint8_t *ir, uint8_t *ip, Tile (*tM)[kMapSizeMovimiento][kMapSizeMovimiento], uint8_t *iPM);

    //////////////////////////////////Movimientos//////////////////////////////////////
    /// Ajusta la velocidad
    void velocidad(uint8_t powIzq, uint8_t powDer);

    /// Para los motores
    void stop();
    /// Pone los motores para enfrente
    void front();
    /// Pone los motores para atrás
    void back();
    /// Pone los motores para la derecha
    void right();
    /// Pone los motores para la izquierda
    void left();

    void alinear();

    /// Se acomoda tras chocar con la pared dependiendo del caso
    void acomodaChoque(uint8_t switchCase);

    /// Calcula la velocidad para avanzar derecho
    void potenciasDerecho(uint8_t &potenciaIzq, uint8_t &potenciaDer, uint8_t caso = 0);
    /// Deja kit y mapea que hay una victima
    void dejarKit(uint8_t iCase);
    void noKit(uint8_t iCase);

    ///  void ErrorGradosVuelta(float &error);
    /// Pasa la rampa
    void pasaRampa();
    /// Retrocede cuando hay un tile negro
    void retroceder();
    /// Avanza un cuadro
    void avanzar();
    /// Da vuelta a la derecha de 90
    void derecha();
    /// Da vuelta a la izquierda de 90
    void izquierda();
    /// Controla la veloicad para dar la vuelta a la izquierda
    void vueltaIzq(bool caso = true);
    /// Controla la velocidad para dar la vuelta a la derecha
    void vueltaDer(bool caso = true);
    /// Corrige el IMU con la pared de atrás
    void corregirIMU();
    /// No está puesta wtf
    void checarVictima(bool caso = true);
    /// Encoder 1
    void encoder1();
    /// Encoder 2
    void encoder2();
    // Boton 1
    void boton1();

    /// Hace las instrucciones para llegar al cuadro deseado
    void hacerInstrucciones(String sMov);

    /////////////////////////Buscar cuadro////////////////////////////////////
    bool goToVisitado(char cD);

    ////////////////Decide qué hacer con la prioridad d, e, i, a, busca////////////////
    bool decidir();
    // bool decidir_Prueba();

    /////////////Getter//////////
    //Regresa cuales paredes se mapeó
    char getParedes();
    //Regresa si hubo un lack
    uint8_t getColor();
    //Actualiza la matriz
    void llenaArreglo(bool b);
    //Muestr mapa
    //void muestra();

  private:
  	Tile (*tMapa)[kMapSizeMovimiento][kMapSizeMovimiento];
    int iTerm, lastInput, cuadrosSeguidos;
    bool bBoton1, bLack;
    char cVictima, cParedes, *cDir, *cDirLast;
    uint8_t *iCol, *iRow, *iPiso, *iPisoMax;
    uint8_t servo_pos, iPowI, iPowD, contadorIzq, contadorDer, resetIMU, iColor, iVisual, iCalor, iCalorD, iKit;
    volatile uint16_t eCount1, eCount2;
    SensarMapa mapa;
    SensarRealidad *real;
};

#endif
