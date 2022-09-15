import 'package:wia/models/sector.dart';
import 'package:wia/data/lst_all_vertex.dart';


final List<Sector> lstSector = [
  //'Selecione um destino:' : '',
  Sector(
      id: 0,
      name: "Selecione um destino",
      coordinate: allVertex[0].coordinate,
      info: "Selecione um destino"),
  Sector(
      id: 1,
      name: "Atendimento PROGRAD",
      coordinate: allVertex[1].coordinate,
      info: "Atendimento ao público PROGRAD"),
  Sector(
      id: 2,
      name: "Biblioteca",
      coordinate: allVertex[2].coordinate,
      info: "Biblioteca jurídica"),
  Sector(
      id: 3,
      name: "COPAP",
      coordinate: allVertex[3].coordinate,
      info: "Unidade de diplomas"),
  Sector(
      id: 4,
      name: "CIPEAD",
      coordinate: allVertex[4].coordinate,
      info: "EAD PROGRAD"),
  Sector(
      id: 5,
      name: "COAFE",
      coordinate: allVertex[5].coordinate,
      info: "Unidade de Estágio"),
  Sector(
      id: 6,
      name: "COSIS",
      coordinate: allVertex[6].coordinate,
      info: "Unidade de Informática"),
  Sector(
      id: 7,
      name: "Entrada/Saida Principal",
      coordinate: allVertex[7].coordinate,
      info: "Entrada/Saida Principal pela Praça Santos Andrade"),
  Sector(
      id: 8,
      name: "Entrada/Saida Lateral",
      coordinate: allVertex[8].coordinate,
      info: "Entrada/Saida Lateral pela rua Alfredo Bufren"),
];
