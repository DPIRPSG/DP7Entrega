A continuaci�n se detallan lo que hemos considerado aspectos importantes a tener en cuenta en nuestra implementaci�n del proyecto y que no est�n reflejados en otras zonas del mismo:

Respecto a las "queries":
-Query C/1: Aunque podr�a tener m�s sentido no tener en cuenta los "orders" cancelados, hemos decidido tener en cuenta todo tipo de "orders" que hayan sido creadas debido a que el enunciado pide exactamente los "orders placed", es decir, pedidos realizados, sin distinci�n alguna en cuanto a si han sido cancelados, entregados o cualquier estado del mismo.

-Query B/5: Esta query referente al ratio la hemos interpretado como el n�mero de pedidos cancelados en el mes actual entre el n�mero de pedidos encargados dicho mes ("Placed" en el vocabulario del Statement). Seg�n otras interpretaciones, podr�a entenderse entre el n�mero de pedidos cancelados en el mes actual entre el n�mero de pedidos encargados sin tener en cuenta la fecha de encargo. Esto nos pareci� poco �til ya que en una cadena de gran tama�o a medida que pasase el tiempo el ratio ser�a muy pr�ximo a cero, sirviendo el ratio de poco como m�todo estad�stico.

-Query A/1: Se nos pide el item (o items) que tiene(o tengan) comentarios sin m�s. Sin embargo hemos visto oportuno filtrarlos no teniendo en cuenta aquellos items que hayan sido borrados (lo cu�l s�lo implica un cambio de valor en el atributo "deleted" de cada item).

Respecto al D06-Controllers
- Nos hemos percatado que nos piden lo siguiente: "It�s very important that your �PopulateDatabase.xml� file provides at least six items and six contracts.". En el dominio de nuestro problema no hemos encontrado una equivalencia a los contracts con lo que hemos decidido interpretarlos como los pedidos (Orders).

Respecto al despliegue:
- Al desplegar el proyecto puede aparecer el error "java.lang.OutOfMemoryError: PermGen space" lo que provoca:
  + Que el servidor se estanque y no se pueda cargar el .war.
  + Que se muestre un mensaje al montar un .war tras hacer Undeploy de otro: FAIL - Deployed application at context path / but context failed to start.
  + Que se muestre un mensaje al montar un .war tras hacer Undeploy de otro: FAIL - Encountered exception javax.management.RuntimeErrorException: Error invoking method check.
- Se puede poner en otra ruta mientras otra instancia est� corriendo sin hacer Undeploy.
- Para solucionar este error se pueden tomar dos opciones:
  + Opci�n 1: Vaciar cache
    - Hacer Undeploy de todas las aplicaciones de Tomcat (excepto "/manager"). En caso de que no se pueda se reinicia la maquina virtual y se hace Undeploy.
    - Despu�s de hacer Undeploy en todas, es necesario reiniciar la m�quina virtual.
    - Una vez reiniciada se puede volver a montar el .war.
  + Opci�n 2: Aumentar cach�
    - Entrar en la configuraci�n de Tomcat desde la bandeja de notificaciones
    - Ir a la pesta�a "Java"
    - Al final de Java Options a�adir las siguientes l�neas:

        -Xms128m
        -Xmx1024m
        -XX:PermSize=64m
        -XX:MaxPermSize=256m

     PermSize refleja la capacidad del PermGen inicial, MaxPermSize refleja la cantidad m�xima de PermGen, es decir, cuanto mayor sea, m�s proyectos vamos a poder cargar y descargar sin necesidad de reiniciar la m�quina virtual para vaciar la cache.
