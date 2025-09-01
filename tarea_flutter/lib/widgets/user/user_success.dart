import 'package:flutter/material.dart';

class UserSuccess extends StatelessWidget {
  const UserSuccess({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      height: 200,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.green.shade100, // 🎨 Fondo verde de éxito
        border: Border.all(color: Colors.black54),
        borderRadius: BorderRadius.circular(8),
      ),
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("✅ Todo cargado con éxito",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.green,
              )),
          SizedBox(height: 8),
          Text("Hola, Carlos", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          Text("Contacto: usuario@gmail.com"),
          Text("Saldo: 1200"),
        ],
      ),
    );
  }
}
