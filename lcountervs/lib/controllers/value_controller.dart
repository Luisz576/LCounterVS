import 'package:lcountervs/interfaces/i_controller_listenable.dart';
import 'package:lcountervs/types/function_listener.dart';

class ValueController<Type> implements IControllerListenable<Type>{
  Type _value;
  final List<FunctionListener<Type>> _listeners = [];

  ValueController(this._value);

  @override
  Type get value => _value;
  
  @override
  set value(value){
    _value = value;
    _notifyAll(_value);
  }

  @override
  int addListener(FunctionListener<Type> listener){
    _listeners.add(listener);
    return _listeners.length - 1;
  }

  @override
  removeListener(FunctionListener<Type> listener){
    _listeners.remove(listener);
  }

  @override
  removeListenerByIndex(int index){
    _listeners.removeAt(index);
  }

  _notifyAll(Type value){
    for(FunctionListener<Type> listener in _listeners){
      listener(value);
    }
  }
  
}