import 'package:lcountervs/interfaces/i_controller.dart';
import 'package:lcountervs/types/function_listener.dart';

abstract class IControllerListenable<T> implements IController{
  int addListener(FunctionListener<T> listener);
  removeListener(FunctionListener<T> listener);
  removeListenerByIndex(int index);
}