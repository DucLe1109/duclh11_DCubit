import 'package:d_bloc/cubit/d_cubit.dart';
import 'package:d_bloc/state/d_state.dart';

import '../../model/lorem.dart';


class TestCubit extends DCubit {

  void getDataFromServer() {
    executeAsyncAction(
        action: () async {
          Future.delayed(
            const Duration(seconds: 3),
                () {
              emit(SuccessState(data: fakeData()));
            },
          );
        },
        showLoading: true);
  }

  List<Lorem> fakeData() {
    return [
      const Lorem(
          title: "Title 1",
          content:
          "is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an "
              "unknown printer took a galley of type and scrambled it to make a ty"
              "pe specimen book. It has survived not only five centuries,"
              " but also the leap into electronic typesetting, remain"
              "ing essentially unchanged. It was popularised in the "
              "1960s with the release of Letraset sheets containing Lorem "
              "Ipsum passages, and more recently with desktop publishing so"
              "ftware like Aldus PageMaker including versions of Lorem Ipsum."),
      const Lorem(
          title: "Title 2",
          content:
          "tablished fact that a reader will be distracted by the readable content of a page when looking at its l"
              "ayout. The point of using L"
              "orem Ipsum is that it has a m"
              "ore-or-less normal distribution of letters, "
              "as opposed to using 'Content here, content here', making it look like readable as opposed to using 'Content here, content here', making it look like readable"),
      const Lorem(
          title: "Title 3",
          content:
          "English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for 'lorem ipsum' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, s"),
      const Lorem(
          title: "Title 4",
          content:
          "Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. "),
      const Lorem(
          title: "Title 5",
          content:
          "is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a"),
      const Lorem(
          title: "Title 6",
          content:
          "tablished fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable "),
      const Lorem(
          title: "Title 7",
          content:
          "English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for 'lorem ipsum' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, s"),
      const Lorem(
          title: "Title 8",
          content:
          "Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. "),
      const Lorem(
          title: "Title 9",
          content:
          "is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a"),
      const Lorem(
          title: "Title 10",
          content:
          "tablished fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable "),
      const Lorem(
          title: "Title 11",
          content:
          "English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for 'lorem ipsum' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, s"),
      const Lorem(
          title: "Title 12",
          content:
          "Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. "),
    ];
  }

}


