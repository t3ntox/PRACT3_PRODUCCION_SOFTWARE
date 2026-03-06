Feature: Gestión de gastos
  Como estudiante
  Quiero registrar mis gastos
  Para controlar cuánto dinero gasto

  Scenario: Crear un gasto y comprobar cual es el total que llevo gastado
    Given un gestor de gastos vacío
    When añado un gasto de 5 euros llamado Café
    Then el total de dinero gastado debe ser 5 euros

  Scenario: Eliminar un gasto y comprobar cual es el total que llevo gastado
    Given un gestor con un gasto de 5 euros
    When elimino el gasto con id 1
    Then debe haber 0 gastos registrados

  Scenario: Crear y eliminar un gasto y comprobar que no he gastado dinero
    Given un gestor de gastos vacío
    When añado un gasto de 5 euros llamado Café
    And elimino el gasto con id 1
    Then debe haber 0 gastos registrados

  Scenario: Crear dos gastos diferentes y comprobar que el total que llevo gastado es la suma de ambos
    Given un gestor de gastos vacío
    When añado un gasto de 5 euros llamado Café
    And añado un gasto de 10 euros llamado Comida
    Then el total de dinero gastado debe ser 15 euros

  Scenario: Crear tres gastos diferentes que sumen 30 euros hace que el total sean 30 euros
    Given un gestor de gastos vacío
    When añado un gasto de 15 euros llamado Cine
    And añado un gasto de 10 euros llamado Adaptador
    And añado un gasto de 5 euros llamado Pan
    Then el total de dinero gastado debe ser 30 euros

  Scenario: Crear tres gastos de 10, 30, 30 euros y elimino el ultimo gasto la suma son 40 euros
    Given un gestor de gastos vacío
    When añado un gasto de 10 euros llamado Cine
    And añado un gasto de 30 euros llamado Libros
    And añado un gasto de 30 euros llamado Carne
    And elimino el gasto con id 3
    Then el total de dinero gastado debe ser 40 euros

  Scenario: Crear tres gastos de 10, 30, 30 euros y elimino los dos últimos la suma son 10 euros
    Given un gestor de gastos vacío
    When añado un gasto de 10 euros llamado Cine
    And añado un gasto de 30 euros llamado Libros
    And añado un gasto de 30 euros llamado Carne
    And elimino el gasto con id 2
    And elimino el gasto con id 3
    Then el total de dinero gastado debe ser 10 euros

  Scenario: Crear tres gastos de 10, 30, 30 euros, elimino el todos y creo un gasto nuevo de 50 euros la suma son 50 euros
    Given un gestor de gastos vacío
    When añado un gasto de 10 euros llamado Cine
    And añado un gasto de 30 euros llamado Libros
    And añado un gasto de 30 euros llamado Carne
    And elimino el gasto con id 1
    And elimino el gasto con id 2
    And elimino el gasto con id 3
    And añado un gasto de 50 euros llamado Portátil
    Then el total de dinero gastado debe ser 50 euros

  Scenario: Crear tres gastos de 10, 30, 30 euros, elimino uno con id 999 y creo un gasto nuevo de 50 euros la suma son 120 euros
    Given un gestor de gastos vacío
    When añado un gasto de 10 euros llamado Cine
    And añado un gasto de 30 euros llamado Libros
    And añado un gasto de 30 euros llamado Carne
    And elimino el gasto con id 999
    And añado un gasto de 50 euros llamado Portátil
    Then 2026-03 debe sumar 120 euros