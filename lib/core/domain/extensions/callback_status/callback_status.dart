enum CallbackStatus { initial, success, error, loading, isAdded, isRemoved, isLoaded, isVerified, isLoggedOut, isLoggedIn }

extension CallbackStatusX on CallbackStatus{
  bool get isInitial => this == CallbackStatus.initial;
  bool get isSuccess => this == CallbackStatus.success;
  bool get isError => this == CallbackStatus.error;
  bool get isLoading => this == CallbackStatus.loading;
  bool get isVerified => this == CallbackStatus.isVerified;
  bool get isLoggedIn => this == CallbackStatus.isLoggedIn;
  bool get isLoggedOut => this == CallbackStatus.isLoggedOut;
}