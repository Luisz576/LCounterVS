import 'package:lcountervs/types/function_listener.dart';

class ValueController<Type>{
  Type _value;
  final List<FunctionListener<Type>> _listeners = [];

  ValueController(this._value);

  Type get value => _value;
  set value(Type value){
    _value = value;
    _notifyAll(_value);
  }

  int addListener(FunctionListener<Type> listener){
    _listeners.add(listener);
    return _listeners.length - 1;
  }

  removeListener(FunctionListener<Type> listener){
    _listeners.remove(listener);
  }
  removeListenerByIndex(int index){
    _listeners.removeAt(index);
  }

  _notifyAll(Type value){
    for(FunctionListener<Type> listener in _listeners){
      listener(value);
    }
  }
}