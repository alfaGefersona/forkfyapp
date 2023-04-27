

class SearchField extends StatelessWidget {
  const SearchField({Key? key}) : super(key: key);
  final RecipiesWebClient _recipiesWebClient = RecipiesWebClient();
  final TextEditingController _recipiesSearchController = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: AppBarTitle(),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'Enter a search term',
            ),
            controller: _recipiesSearchController,
            onChanged: (text) {
              RecipiesList(text);
            },
          ),
        ],
      ),
    );
  }
}
