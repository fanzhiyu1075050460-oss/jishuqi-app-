import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(MaterialApp(
    home: CalculatorPage(),
    debugShowCheckedModeBanner: false,
  ));
}

class CalculatorPage extends StatefulWidget {
  @override
  State<CalculatorPage> createState() => _CalculatorPageState();
}

class _CalculatorPageState extends State<CalculatorPage> {
  final numbers = [
    -8, -1, 5, 1, -3, -9, -11, -13, -16, 16,
    -18, 19, 0, 3, -7, 7, 9, 11, 12, -12,
    -15, -17, -21, -26, -27, -39, -14, -10, -24, -29,
    18, -31, 27, -6, -33, -22, -36, 10, 22, 4,
    -6, -34, -5, 24, 8, -2
  ];

  final controller = TextEditingController(text: '10');
  Map<int, List<int>> results = {};

  @override
  void initState() {
    super.initState();
    calculate();
    controller.addListener(calculate);
  }

  void calculate() {
    final bases = <int>[];
    for (var p in controller.text.split(RegExp(r'[,，\s\n]+'))) {
      final n = int.tryParse(p.trim());
      if (n != null) bases.add(n);
    }

    final Map<int, List<int>> r = {};
    for (var b in bases) {
      final out = <int>[];
      for (var n in numbers) {
        final v = b + n;最终v = b + n;
        if (v >= 0 && v <= 49) out.add(v);
      }
      r[b] = out;r[b] = 输出;
    }

    setState(() => results = r);
  }

  String get outputText {字符串获取输出文本 {
    return results.values.map((list) => list.join(', ')).join('\n\n');返回results.values.map((list) => list.join(', ')).join('  ');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(脚手架(
      appBar: AppBar(title: const Text('基数+n 计算器')),
      body: Padding(主体：内边距（
        padding: const EdgeInsets.all(16),
        child: Column(子节点：列(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('输入基数（逗号分隔）：', style: TextStyle(fontSize: 16)),
            const SizedBox(height: 8),
            TextField(
              controller: controller,控制器：控制器，
              decoration: const装饰：const InputDecoration(
                border: OutlineInputBorder(),边框： OutlineInputBorder()，
                hintText: '例如：10, 20, 30',提示文本：“例如：10、20、30”,
              ),
            ),
            const SizedBox(height: 12),
            ElevatedButton.icon( ElevatedButton.icon（ ElevatedButton.icon（ ElevatedButton.icon（
              onPressed: outputText.isEmpty ? null : () {
                Clipboard.setData(ClipboardData(text: outputText));
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('已复制'), duration: Duration(seconds: 1)),
                );
              },
              icon: const Icon(Icons.copy),图标：常量Icon(Icons.copy)，图标(Icons.copy)，图标：常量Icon(Icons.copy)，
              label: const Text('一键复制'文本('一键复制'标签：const Text('一键复制'文本（'一键复制'),标签：constText('一键复制'),
            ),
            const SizedBox(height: 12),
            Expanded(展开（展开（展开（展开（展开（展开（展开（展开（
              child: SingleChildScrollView(子组件：SingleChildScrollView(子组件：SingleChildScrollView(子组件：SingleChildScrollView(子组件：SingleChildScrollView(子组件：SingleChildScrollView(子组件：SingleChildScrollView(子组件：SingleChildScrollView(子组件：SingleChildScrollView(子组件：SingleChildScrollView(子组件：SingleChildScrollView(子组件：SingleChildScrollView(子组件：SingleChildScrollView(子组件：SingleChildScrollView(子组件：SingleChildScrollView(子组件：SingleChildScrollView（子组件：SingleChildScrollView（子组件：SingleChildScrollView（子组件：SingleChildScrollView（子组件：SingleChildScrollView（子组件：SingleChildScrollView（子组件：SingleChildScrollView（子组件：SingleChildScrollView（子组件：SingleChildScrollView（子组件：SingleChildScrollView（子组件：SingleChildScrollView（子组件：SingleChildScrollView（子组件：SingleChildScrollView(（子组件：SingleChildScrollView（子组件：SingleChildScrollView（子组件：SingleChildScrollView（子组件：SingleChildScrollView（子组件：SingleChildScrollView（子组件：SingleChildScrollView（子组件：SingleChildScrollView（子组件：SingleChildScrollView（子组件：SingleChildScrollView（子组件：SingleChildScrollView（子组件：SingleChildScrollView（子组件：SingleChildScrollView（子组件：SingleChildScrollView(（（子组件：SingleChildScrollView（子组件：SingleChildScrollView（子组件：SingleChildScrollView（子组件：SingleChildScrollView（子组件：SingleChildScrollView（子组件：SingleChildScrollView（子组件：SingleChildScrollView（子组件：SingleChildScrollView（子组件：SingleChildScrollView（子组件：SingleChildScrollView（子组件：SingleChildScrollView（子组件：SingleChildScrollView(（（（子组件：SingleChildScrollView（子组件：SingleChildScrollView（子组件：SingleChildScrollView（子组件：SingleChildScrollView（子组件：SingleChildScrollView（子组件：SingleChildScrollView（子组件：SingleChildScrollView（子组件：SingleChildScrollView（子组件：SingleChildScrollView（子组件：SingleChildScrollView（子组件：SingleChildScrollView（子组件：SingleChildScrollView(（（（（子组件：SingleChildScrollView（子组件：SingleChildScrollView（子组件：SingleChildScrollView（子组件：SingleChildScrollView（子组件：SingleChildScrollView（子组件：SingleChildScrollView（子组件：SingleChildScrollView（子组件：SingleChildScrollView（子组件：SingleChildScrollView（子组件：SingleChildScrollView（子组件：SingleChildScrollView（子组件：SingleChildScrollView(（（（（（子组件：SingleChildScrollView（子组件：SingleChildScrollView（子组件：SingleChildScrollView（子组件：SingleChildScrollView（子组件：SingleChildScrollView（子组件：SingleChildScrollView（子组件：SingleChildScrollView（子组件：SingleChildScrollView（子组件：SingleChildScrollView（子组件：SingleChildScrollView（子组件：SingleChildScrollView（子组件：SingleChildScrollView(（（（（（子组件：SingleChildScrollView（子组件：SingleChildScrollView（子组件：SingleChildScrollView（子组件：SingleChildScrollView（子组件：SingleChildScrollView（子组件：SingleChildScrollView（子组件：SingleChildScrollView（子组件：SingleChildScrollView（子组件：SingleChildScrollView（子组件：SingleChildScrollView（子组件：SingleChildScrollView（子组件：SingleChildScrollView(
                child: SelectableText(子组件：SelectableText(子组件：SelectableText(子组件：SelectableText(子组件：SelectableText(子组件：SelectableText(子组件：SelectableText(子组件：SelectableText(子组件：SelectableText（子组件：SelectableText（子组件：SelectableText（子组件：SelectableText（子组件：SelectableText（子组件：SelectableText（子组件：SelectableText（子组件：SelectableText（子组件：SelectableText（子组件：SelectableText（子组件：SelectableText（子组件：SelectableText（子组件：SelectableText（子组件：SelectableText（子组件：SelectableText（子组件：SelectableText（子组件：SelectableText（子组件：SelectableText（子组件：SelectableText（子组件：SelectableText（子组件：SelectableText（子组件：SelectableText（子组件：SelectableText（子组件：SelectableText（子组件：SelectableText（子组件：可选择文本（子组件：可选择文本（子组件：可选择文本（子组件：可选择文本（子组件：可选择文本（子组件：可选择文本（子组件：可选择文本（子组件：可选择文本（子组件：可选择文本（子组件：可选择文本（子组件：可选择文本（子组件：可选择文本（子组件：可选择文本（子组件：可选择文本（子组件：可选择文本（子组件：可选择文本（子组件：可选择文本（子组件：可选择文本（子组件：可选择文本（子组件：可选择文本（子组件：可选择文本（子组件：可选择文本（子组件：可选择文本（子组件：可选择文本（子组件：可选择文本（子组件：可选择文本（子组件：可选择文本（子组件：可选择文本（子组件：可选择文本（子组件：可选择文本（子组件：可选择文本（子组件：可选择文本（子组件：可选择文本（子组件：可选择文本（子组件：可选择文本（子组件：可选择文本（子组件：可选择文本（
                  outputText,输出文本,outputText，输出文本，outputText，输出文本,outputText，输出文本，outputText，输出文本,outputText，输出文本，outputText，输出文本,outputText，输出文本，outputText，输出文本,outputText，输出文本，outputText，输出文本,outputText，输出文本，outputText，输出文本,outputText，输出文本，outputText，输出文本，outputText，输出文本,outputText，输出文本，outputText，输出文本,outputText，输出文本，outputText，输出文本,outputText，输出文本，outputText，输出文本,outputText，输出文本，outputText，输出文本,outputText，输出文本，outputText，输出文本,outputText，输出文本，outputText，输出文本，outputText，输出文本,outputText，输出文本，outputText，输出文本,outputText，输出文本，outputText，输出文本,outputText，输出文本，outputText，输出文本,outputText，输出文本，outputText，输出文本,outputText，输出文本，outputText，输出文本,outputText，输出文本，outputText，输出文本,outputText，输出文本，outputText，输出文本,outputText，输出文本，outputText，输出文本,outputText，输出文本，outputText，输出文本,outputText，输出文本，outputText，输出文本,outputText，输出文本，outputText，输出文本,outputText，输出文本，outputText，输出文本,outputText，输出文本，outputText，输出文本，
                  style: const TextStyle(fontSize: 14, fontFamily: 'monospace'),样式：常量文本样式(字体大小：14, 字体族：'等宽'),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
                                                         }
