// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
// import 'package:brasil_fields/brasil_fields.dart';
// import 'package:shopping_de_tudo/shared/helpers/upper_case_text_formatter.dart';

// class CustomTextField extends StatelessWidget {
//   CustomTextField(
//       {this.hint,
//       this.onSubmitted,
//       this.textInputAction,
//       this.errorText,
//       this.prefix,
//       this.suffix,
//       this.obscure = false,
//       this.textInputType,
//       this.onChanged,
//       this.enabled,
//       this.controller,
//       this.labelText,
//       this.focusNode,
//       this.autofocus,
//       this.maxLength,
//       this.ontap});

//   final TextEditingController controller;
//   final String hint;
//   final String errorText;
//   final String labelText;
//   final Widget prefix;
//   final Widget suffix;
//   final bool obscure;
//   final TextInputType textInputType;
//   final TextInputAction textInputAction;
//   final Function(String) onChanged;
//   final Function(String) onSubmitted;
//   final bool enabled;
//   final FocusNode focusNode;
//   final bool autofocus;
//   final int maxLength;
//   final Function ontap;

//   @override
//   Widget build(BuildContext context) {
//     return Stack(
//       children: [
//         Container(
//           height: 45,
//           decoration: BoxDecoration(
//             color: Colors.grey[200],
//             borderRadius: BorderRadius.only(
//                 topLeft: Radius.circular(32.0),
//                 topRight: Radius.circular(32.0),
//                 bottomLeft: Radius.circular(32.0),
//                 bottomRight: Radius.circular(32.0)),
//             boxShadow: [
//               BoxShadow(
//                 color: Colors.grey[500],
//                 spreadRadius: 1,
//                 blurRadius: 1,
//                 offset: Offset(0, 1), // changes position of shadow
//               ),
//             ],
//           ),
//         ),
//         TextField(
//           inputFormatters: labelText == "Nome do Titular"
//               ? [UpperCaseTextFormatter()]
//               : labelText == "Número do cartão"
//                   ? [
//                       FilteringTextInputFormatter.digitsOnly,
//                       CartaoBancarioInputFormatter(),
//                     ]
//                   : labelText == "Validade"
//                       ? [
//                           FilteringTextInputFormatter.digitsOnly,
//                           ValidadeCartaoInputFormatter(),
//                         ]
//                       : labelText == "CVV"
//                           ? [
//                               FilteringTextInputFormatter.digitsOnly,
//                               LengthLimitingTextInputFormatter(3),
//                             ]
//                           : labelText == "Data de Nascimento"
//                               ? [
//                                   FilteringTextInputFormatter.digitsOnly,
//                                   DataInputFormatter(),
//                                 ]
//                               : labelText == "Hora"
//                                   ? [
//                                       FilteringTextInputFormatter.digitsOnly,
//                                       HoraInputFormatter(),
//                                     ]
//                                   : labelText == "Cep"
//                                       ? [
//                                           FilteringTextInputFormatter
//                                               .digitsOnly,
//                                           CepInputFormatter(),
//                                         ]
//                                       : labelText == "Preço"
//                                           ? [
//                                               FilteringTextInputFormatter
//                                                   .digitsOnly,
//                                               RealInputFormatter(),
//                                             ]
//                                           : labelText == "CPF"
//                                               ? [
//                                                   FilteringTextInputFormatter
//                                                       .digitsOnly,
//                                                   CpfInputFormatter(),
//                                                 ]
//                                               : labelText == "CNPJ"
//                                                   ? [
//                                                       FilteringTextInputFormatter
//                                                           .digitsOnly,
//                                                       CnpjInputFormatter(),
//                                                     ]
//                                                   : labelText == "Telefone"
//                                                       ? [
//                                                           FilteringTextInputFormatter
//                                                               .digitsOnly,
//                                                           TelefoneInputFormatter(),
//                                                         ]
//                                                       : labelText == "Celular"
//                                                           ? [
//                                                               FilteringTextInputFormatter
//                                                                   .digitsOnly,
//                                                               TelefoneInputFormatter(),
//                                                             ]
//                                                           : [],
//           style: TextStyle(fontSize: 16.0, height: 0.4, color: Colors.black),
//           controller: controller,
//           obscureText: obscure,
//           keyboardType: textInputType,
//           onChanged: onChanged,
//           enabled: enabled,
//           onSubmitted: onSubmitted,
//           textInputAction: textInputAction,
//           focusNode: focusNode,
//           autofocus: autofocus,
//           maxLength: maxLength,
//           onTap: ontap,
//           decoration: InputDecoration(
//             hintText: hint,
//             border: InputBorder.none,
//             prefixIcon: prefix,
//             suffixIcon: suffix,
//             errorText: errorText,
//             labelText: labelText,
//             focusedBorder: OutlineInputBorder(
//               borderRadius: BorderRadius.circular(32),
//               borderSide: BorderSide(
//                 width: 2,
//                 color: Colors.green,
//               ),
//             ),
//             focusedErrorBorder: OutlineInputBorder(
//                 borderRadius: BorderRadius.circular(32),
//                 borderSide: BorderSide(width: 2, color: Colors.red)),
//             errorBorder: OutlineInputBorder(
//                 borderRadius: BorderRadius.circular(32),
//                 borderSide: BorderSide(width: 1, color: Colors.red)),
//             errorStyle: TextStyle(
//               fontSize: 12,
//             ),
//           ),
//           textAlignVertical: TextAlignVertical.center,
//         ),
//       ],
//     );
//   }
// }