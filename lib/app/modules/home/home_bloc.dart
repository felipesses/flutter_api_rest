import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:flutter_apirest/shared/models/post_model.dart';
import 'package:rxdart/rxdart.dart';

import 'home_repository.dart';

class HomeBloc extends BlocBase {
  final HomeRepository repo;

  HomeBloc(this.repo);

  var listPost = BehaviorSubject<List<PostModel>>();
  Sink<List<PostModel>> get responseIn => listPost.sink;
  Observable<List<PostModel>> get responseOut => listPost.stream;

  void getPosts() async {
    responseIn.add(null);
    try {
      var res = await repo.getPosts();
      responseIn.add(res);
    } catch (e) {
      listPost.addError(e);
    }
  }

  @override
  void dispose() {
    listPost.close();
    super.dispose();
  }
}
