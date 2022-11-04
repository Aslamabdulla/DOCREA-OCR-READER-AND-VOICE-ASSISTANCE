import 'package:url_launcher/url_launcher.dart';

class Command {
  static final all = [email, browser1, browser2];
  static const email = 'Write email';
  static const browser1 = 'open';
  static const browser2 = 'go to';
}

class Utils {
  static void scanText(String rawText) {
    final text = rawText.toLowerCase();
    if (text.contains(Command.email)) {
      final body = _getTextAfterCommand(text: text, command: Command.email);
      openEmail(body: body);
    } else if (text.contains(Command.browser1)) {
      final url = _getTextAfterCommand(text: text, command: Command.browser1);
    }
  }

  static String _getTextAfterCommand({
    required String text,
    required String command,
  }) {
    final indexCommand = text.indexOf(command);
    final indexAfter = indexCommand + command.length;
    if (indexCommand == -1) {
      return "";
    } else {
      return text.substring(indexAfter).trim();
    }
  }

  static Future openEmail({
    required String body,
  }) async {
    final url = 'mail to: ?body=${Uri.encodeFull(body)}';
    await _launchUrl(url);
  }

  static Future _launchUrl(String url) async {
    if (await canLaunchUrl(Uri.parse(url))) {
      await _launchUrl(url);
    }
  }
}
