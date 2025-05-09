import 'package:flutter/material.dart';
import 'package:movibus/themes/app_colors.dart'; // Asegúrate de importar tus colores

class RouterHistorialScreen extends StatelessWidget {
  const RouterHistorialScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      body: ListView(
        children: [
          // AppBar personalizado
          Container(
            color: theme.secondaryHeaderColor,
            padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  icon: const Icon(Icons.keyboard_arrow_left),
                  color: theme.iconTheme.color,
                  onPressed: () => Navigator.of(context).pop(),
                ),
                Text(
                  "Rutas",
                  style: theme.textTheme.titleLarge?.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(width: 48),
              ],
            ),
          ),

          const SizedBox(height: 16),

          // Contenedores de rutas sugeridas
          _suggestedRouteCard(
            context,
            ruta: "Ruta 12",
            salida: "Industrias - eje 114",
          ),
          const SizedBox(height: 12),
          _suggestedRouteCard(
            context,
            ruta: "Ruta 3B",
            salida: "Reforma - Av. de la paz",
          ),
          const SizedBox(height: 12),
          _suggestedRouteCard(
            context,
            ruta: "Ruta 45",
            salida: "Blvd. Solidaridad - zona centro",
          ),
        ],
      ),
    );
  }

  Widget _suggestedRouteCard(
    BuildContext context, {
    required String ruta,
    required String salida,
  }) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Container(
        decoration: BoxDecoration(
          color: Theme.of(context).dialogBackgroundColor,
          borderRadius: BorderRadius.circular(12),
        ),
        padding: const EdgeInsets.all(20),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Icon(
              Icons.directions_bus_outlined,
              color: Theme.of(context).textTheme.bodyMedium?.color,
            ),
            const SizedBox(width: 12),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Expanded(
                        child: Text(
                          ruta,
                          style: Theme.of(
                            context,
                          ).textTheme.bodyLarge?.copyWith(
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Quicksand',
                          ),
                        ),
                      ),
                      const Icon(Icons.keyboard_arrow_right),
                    ],
                  ),
                  Text(
                    salida,
                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                      color: Colors.grey,
                      fontFamily: 'quicksand',
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
