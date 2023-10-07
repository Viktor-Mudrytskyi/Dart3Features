sealed class HomeState{
  T map<T>({
    required T Function(HomeStateLoading state) loading,
    required T Function(HomeStateLoaded state) loaded,
    required T Function(HomeStateError state) error,
  }){
    return switch(this){
      HomeStateLoading()=>loading(this as HomeStateLoading),
      HomeStateLoaded()=>loaded(this as HomeStateLoaded),
      HomeStateError()=>error(this as HomeStateError),
    };
   }
}

final class HomeStateLoading extends HomeState{}

final class HomeStateLoaded extends HomeState{
  final Object data;

  HomeStateLoaded({required this.data});
}

final class HomeStateError extends HomeState{
  final String message;

  HomeStateError({required this.message});
}

