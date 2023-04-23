 class Memory{

  static const operacaoSimbolo = const ['%', '/', 'X', '+', '-','='];
  String _value = '0';
  final _numeroMemoria = [0.0, 0.0];
  int _numeroMemoriaIndex = 0;
  late String _operacao;
  bool verificaOperacao = false;
  String get value{
      return _value;
    }

  void applyCommand(String command) {
    if(command == 'CE'){
      limparTudo();
    }else if(operacaoSimbolo.contains(command)){
      fazerCalculo(command);
    }
    else{
      adicionaDigito(command);
    }
  }

  limparTudo(){
    _value='';
    _numeroMemoria[0] = 0.0;
    _numeroMemoria[1] = 0.0;
   
  }

  fazerCalculo(String novoCalculo){
    if(_numeroMemoriaIndex == 0){
      _operacao = novoCalculo;
      _numeroMemoriaIndex = 1;
    }else{
      _numeroMemoria[0] = caseCalculos();
      _numeroMemoria[1] = 0.0;
      _value = _numeroMemoria[0].toString();
      _value = _value.endsWith('.0')?_value.split('.')[0]:_value;
      _numeroMemoriaIndex = 0;
    }
    verificaOperacao = true;
  }

  adicionaDigito(String digito){
    
     bool verificaDigito = false;

    if(_value == '0' && digito !='.' || verificaOperacao){
      verificaDigito = true;
    }
    if(digito == '.' && _value.contains('.')&& !verificaDigito){
      return;
    }

    final valorAtual = verificaDigito? '' : _value;
    _value = valorAtual + digito;
    verificaOperacao = false;

    _numeroMemoria[_numeroMemoriaIndex] = double.tryParse(_value)??0;
    print(_numeroMemoria);
    
  }

  caseCalculos(){
    switch(_operacao){
      case '%': return _numeroMemoria[0] % _numeroMemoria[1];
      case '/': return _numeroMemoria[0] / _numeroMemoria[1];
      case 'X': return _numeroMemoria[0] * _numeroMemoria[1];
      case '+': return _numeroMemoria[0] + _numeroMemoria[1];
      case '-': return _numeroMemoria[0] - _numeroMemoria[1];

      default: return _numeroMemoria[0];
      
    }
  }
}