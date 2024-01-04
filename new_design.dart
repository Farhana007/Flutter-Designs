/// This File Will contain new Unique Design for  a responsive GridStyle Layout 
///What is MasonryView Is, It gives a grid type style but it will be responsive, which means it will only take place as much as it need according to it's content
 MasonryView(
          listOfItem: listOfList,
          itemPadding: 5, //padding between the items you want to have
          numberOfColumn: 2, //number of columns you can assume this as the number of sliverGridDelegate
          itemBuilder: (item) { //using masonry view you need to use an item instead of an index
            ///This is the Column Containing Date and Displaying Items of the List
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 12, top: 10),
                  child: //anything you want 
                  ]
                  );
          },
        ),
