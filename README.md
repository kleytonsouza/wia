# WIA – Wayfinding Indoor App

Aplicativo mobile desenvolvido com Flutter para navegação indoor em ambiente histórico, utilizando leitura de QR Code e técnica de Pedestrian Dead Reckoning (PDR) para estimativa de deslocamento apenas com sensores do dispositivo.

## 📌 Objetivo

O aplicativo foi desenvolvido para auxiliar visitantes na locomoção dentro de um prédio histórico, permitindo:

- Identificação de pontos estratégicos via QR Code
- Exibição da posição inicial no mapa interno
- Seleção de rotas para destinos pré-cadastrados
- Acompanhamento do deslocamento em tempo real utilizando sensores do smartphone

## ⚙️ Funcionamento Técnico

1. O usuário realiza a leitura de um QR Code posicionado em um ponto estratégico do prédio.
2. O app identifica a posição inicial no mapa digitalizado.
3. O usuário seleciona um destino.
4. A partir do movimento, o sistema utiliza **Pedestrian Dead Reckoning (PDR)** para estimar o deslocamento com base nos sensores do dispositivo (acelerômetro, giroscópio e magnetômetro).

A implementação do algoritmo de PDR foi adaptada a partir de estudo e análise de referências públicas, sendo integrada ao Flutter por meio de Platform Channel.

## 🗺️ Mapa Interno

O mapa do prédio histórico foi digitalizado e adaptado para permitir a sobreposição da navegação e exibição das rotas.

## 🛠️ Tecnologias Utilizadas

- Flutter
- Dart
- Platform Channels
- Sensores do dispositivo (acelerômetro, giroscópio)
- Leitura de QR Code

## 🚀 Demonstração

Vídeo demonstrativo do PDR: https://www.linkedin.com/posts/kleytonlsouza_plugin-que-desenvolvi-pra-flutter-n%C3%A3o-publiquei-activity-7184288375221161984-Cabd

## 📂 Código

Repositório disponível em:
[https://github.com/seuusuario/wia](https://github.com/kleytonsouza/wia)
