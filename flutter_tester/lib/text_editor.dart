import 'package:flutter/material.dart';
import 'package:flutter_code_editor/flutter_code_editor.dart';
import 'package:highlight/languages/dart.dart';
import './theme.dart';



class TextEditor extends StatefulWidget {
  const TextEditor({Key? key}) : super(key: key);

  @override
  State<TextEditor> createState() => _TextEditorState();
}

class _TextEditorState extends State<TextEditor> {
  late CodeController _codeController;

  @override
  void initState() {
    super.initState();
    _codeController = CodeController(
      text: 'void main() {\n  print("Hello, World!");\n} \n \n \n \n \n',
      language: dart, // Highlighting for Dart
    );
  }

  @override
  Widget build(BuildContext context) {
    return CodeTheme(
      data: CodeThemeData(styles: myCustomTheme),
      child: SingleChildScrollView(
        child: CodeField(
          controller: _codeController,
          textStyle: const TextStyle(fontFamily: 'SourceCodePro'),
      ),
      ),
    );
  }
}