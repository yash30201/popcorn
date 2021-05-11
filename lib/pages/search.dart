import 'package:flutter/material.dart';

class Search extends StatefulWidget {
  @override
  _SearchState createState() => _SearchState();
}

class _SearchState extends State<Search> {
  final double iconSize = 25.0;
  final double editorFontSize = 16.0;
  Widget searchResult;
  TextEditingController _textEditingController;

  Widget showResult() {
    return ListView.builder(
      itemCount: 20,
      itemBuilder: (context, index) {
        return Container(
          height: 80,
          padding: EdgeInsets.all(10),
          child: Container(
            color: ((index & 1 == 1)
                ? Theme.of(context).accentColor
                : Theme.of(context).primaryColor),
          ),
        );
      },
    );
  }

  Widget emptyResult() {
    return Container(
      padding: EdgeInsets.all(20),
      alignment: Alignment.center,
      child: Text(
        'Type something',
        style: TextStyle(
          color: Colors.white54,
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

  TextField searchTextField(TextEditingController _textEditingController) {
    return TextField(
      controller: _textEditingController,
      autofocus: true,
      textInputAction: TextInputAction.search,
      autocorrect: false,
      style: TextStyle(
        textBaseline: TextBaseline.alphabetic,
        fontSize: editorFontSize,
        color: Colors.white,
        letterSpacing: 0.5,
        fontFamily: 'Roboto',
      ),
      cursorColor: Theme.of(context).primaryColor,
      expands: true,
      maxLines: null,
      textAlignVertical: TextAlignVertical.center,
      decoration: InputDecoration(
        border: InputBorder.none,
        contentPadding: EdgeInsets.only(),
        hintText: 'Search any movie, show , genre, etc',
        hintStyle: TextStyle(
          textBaseline: TextBaseline.alphabetic,
          fontSize: editorFontSize,
          color: Colors.white54,
          letterSpacing: 0.5,
          fontFamily: 'Roboto',
        ),
      ),
      onSubmitted: (value) {
        setState(() {
          searchResult = showResult();
        });
      },
    );
  }

  @override
  void initState() {
    super.initState();
    _textEditingController = new TextEditingController();
    searchResult = emptyResult();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Theme.of(context).backgroundColor,
        appBar: AppBar(
          backgroundColor: Theme.of(context).backgroundColor,
          iconTheme: IconThemeData(color: Theme.of(context).primaryColor),
          actions: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: InkWell(
                onTap: () => {},
                child: CircleAvatar(
                  backgroundColor: Colors.amberAccent,
                  radius: 18,
                ),
              ),
            ),
          ],
        ),
        body: Column(
          children: [
            SizedBox(height: 10),
            Container(
              height: 60,
              width: double.infinity,
              color: Theme.of(context).primaryColor.withOpacity(0.2),
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(
                    Icons.search_rounded,
                    color: Colors.white54,
                    size: iconSize,
                  ),
                  SizedBox(width: 10),
                  Expanded(
                    child: searchTextField(_textEditingController),
                  ),
                  SizedBox(width: 10),
                  Icon(
                    Icons.mic,
                    color: Colors.white54,
                    size: iconSize,
                  ),
                ],
              ),
            ),
            Expanded(child: searchResult),
          ],
        ),
      ),
    );
  }
}
