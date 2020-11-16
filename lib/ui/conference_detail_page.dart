import 'package:flutter/material.dart';
import 'package:ssac_app/model/nation.dart';
import 'package:url_launcher/url_launcher.dart';

class ConferenceDetailPage extends StatefulWidget {
  Nation selectNation;

  ConferenceDetailPage(this.selectNation);

  @override
  _ConferenceDetailPageState createState() => _ConferenceDetailPageState();
}

class _ConferenceDetailPageState extends State<ConferenceDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextButton(
                child: Text(
                  '< Conference',
                  style: TextStyle(color: Colors.lightBlueAccent),
                ),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  widget.selectNation.name,
                  style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(widget.selectNation.location),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('${widget.selectNation.start}~${widget.selectNation.end}'),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextButton(
                  child: Text(
                    'Go to Official website',
                    style: TextStyle(color: Colors.lightBlueAccent),
                  ),
                  // Url_launcher사용하여 웹부어 사용
                  onPressed: () {
                    setState(() {
                      launchWebView(widget.selectNation.link);
                    });
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  launchWebView(String url) async {
    if (await canLaunch(url)) {
      await launch(url, forceSafariVC: true, forceWebView: true);
    }
  }
}
