 //Leslye Janeth Garcia Reyes
 //20212020467 
 void main() {
  
  final lista = ListaDeTareas();

  lista.agregarTarea("Completar el informe", "Terminar el reporte.");
  lista.agregarTarea("Ir al supermercado", "Comprar la comida para la semana.");

  print('--  --  --  --  --  --  --  --  --');
  print('Lista de tareas:');
  lista.mostrarTareas();
  lista.marcarComoCompleta(1);
  
  print('--  --  --  --  --  --  --  --  --');
  print('Tareas completas:');
  lista.mostrarTareas();

  lista.eliminarTarea(1);


  print('Tareas eliminadas:');
  lista.mostrarTareas();
}

class Tarea {
  String titulo;
  String descripcion;
  bool completa;

  Tarea(this.titulo, 
        this.descripcion, 
        this.completa);


}

class ListaDeTareas {
  List<Tarea> tareas = [];

  void agregarTarea(String titulo, String descripcion) {
    final nuevaTarea = Tarea(titulo, descripcion, false);
    tareas.add(nuevaTarea);
  
  }

  void mostrarTareas() {
    for (var i = 0; i < tareas.length; i++) {
      final estado = tareas[i].completa ? 'Completa' : 'Incompleta';
      print('Tarea ${i + 1}: ${tareas[i].titulo} - ${tareas[i].descripcion} - $estado');
    }
  }
}