A continuación se detallan lo que hemos considerado aspectos importantes a tener en cuenta en nuestra implementación del proyecto y que no están reflejados en otras zonas del mismo:

Respecto a las "queries":
-Query C/1: Aunque podría tener más sentido no tener en cuenta los "orders" cancelados, hemos decidido tener en cuenta todo tipo de "orders" que hayan sido creadas debido a que el enunciado pide exactamente los "orders placed", es decir, pedidos realizados, sin distinción alguna en cuanto a si han sido cancelados, entregados o cualquier estado del mismo.

-Query B/5: Esta query referente al ratio la hemos interpretado como el número de pedidos cancelados en el mes actual entre el número de pedidos encargados dicho mes ("Placed" en el vocabulario del Statement). Según otras interpretaciones, podría entenderse entre el número de pedidos cancelados en el mes actual entre el número de pedidos encargados sin tener en cuenta la fecha de encargo. Esto nos pareció poco útil ya que en una cadena de gran tamaño a medida que pasase el tiempo el ratio sería muy próximo a cero, sirviendo el ratio de poco como método estadístico.

-Query A/1: Se nos pide el item (o items) que tiene(o tengan) comentarios sin más. Sin embargo hemos visto oportuno filtrarlos no teniendo en cuenta aquellos items que hayan sido borrados (lo cuál sólo implica un cambio de valor en el atributo "deleted" de cada item).

Respecto al D06-Controllers
- Nos hemos percatado que nos piden lo siguiente: "It’s very important that your “PopulateDatabase.xml” file provides at least six items and six contracts.". En el dominio de nuestro problema no hemos encontrado una equivalencia a los contracts con lo que hemos decidido interpretarlos como los pedidos (Orders).

Respecto al despliegue:
- Al desplegar el proyecto puede aparecer el error "java.lang.OutOfMemoryError: PermGen space" lo que provoca:
  + Que el servidor se estanque y no se pueda cargar el .war.
  + Que se muestre un mensaje al montar un .war tras hacer Undeploy de otro: FAIL - Deployed application at context path / but context failed to start.
  + Que se muestre un mensaje al montar un .war tras hacer Undeploy de otro: FAIL - Encountered exception javax.management.RuntimeErrorException: Error invoking method check.
- Se puede poner en otra ruta mientras otra instancia está corriendo sin hacer Undeploy.
- Para solucionar este error se pueden tomar dos opciones:
  + Opción 1: Vaciar cache
    - Hacer Undeploy de todas las aplicaciones de Tomcat (excepto "/manager"). En caso de que no se pueda se reinicia la maquina virtual y se hace Undeploy.
    - Después de hacer Undeploy en todas, es necesario reiniciar la máquina virtual.
    - Una vez reiniciada se puede volver a montar el .war.
  + Opción 2: Aumentar caché
    - Entrar en la configuración de Tomcat desde la bandeja de notificaciones
    - Ir a la pestaña "Java"
    - Al final de Java Options añadir las siguientes líneas:

        -Xms128m
        -Xmx1024m
        -XX:PermSize=64m
        -XX:MaxPermSize=256m

     PermSize refleja la capacidad del PermGen inicial, MaxPermSize refleja la cantidad máxima de PermGen, es decir, cuanto mayor sea, más proyectos vamos a poder cargar y descargar sin necesidad de reiniciar la máquina virtual para vaciar la cache.
