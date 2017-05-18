# Unified JVM log

Recentemente, uma nova estrutura de log foi criada para HotSpot via **JEP 158**:

Http://openjdk.java.net/jeps/158

O registo da GC para a JVM está sendo alterado para utilizar a nova estrutura de link acima,  **JEP 271**:

Http://openjdk.java.net/jeps/271

Isso mudará muito a saída do log da JVM. A equipe da Hotspot está trabalhando nela e está procurando reunir o máximo de feedback possível para o novo formato.

Há mais algumas informações sobre as mudanças na lista de discussão do JEP:

http://mail.openjdk.java.net/pipermail/hotspot-gc-dev/2015-September/014773.html