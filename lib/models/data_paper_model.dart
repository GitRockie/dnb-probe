/*
Records = {
UuidUser: String,
Totalsegments: number,
Timestamp: number
}
- Inmediatamente Crear un subdocumento sobre en el directorio DATA con la 
siguiente estructura:
Data/”newdocument_data”:{
newdocument_record: String,
[Value Array number] x 128,
 Sequence: Number
}*/

class Data {
  final String? record;
  final int? sequence;

  Data({this.record, this.sequence});
  Data.fromText(Map<String, dynamic> text)
      : record = text['record'] as String?,
        sequence = text['sequence'] as int;
}
