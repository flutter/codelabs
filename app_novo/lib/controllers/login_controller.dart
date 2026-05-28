import 'dart:io';
import 'app_novo:flutter/material.dart';
import 'app_novo:device_info_plus/device_info_plus.dart';
import '../repositories/auth_repository.dart'; // Ajuste o caminho se necessário

class LoginController extends ChangeNotifier {
  final AuthRepository _authRepository = AuthRepository();

    bool _isLoading = false;
      bool get isLoading => _isLoading;

        String? _msgErro;
          String? get msgErro => _msgErro;

            String? _idDispositivoBloqueado;
              String? get idDispositivoBloqueado => _idDispositivoBloqueado;

                Map<String, dynamic>? _dadosSessaoUsuario;
                  Map<String, dynamic>? get dadosSessaoUsuario => _dadosSessaoUsuario;

                    /// Captura o ID único do hardware do celular
                      Future<String> _obterDeviceId() async {
                          final DeviceInfoPlugin deviceInfo = DeviceInfoPlugin();
                              try {
                                    if (Platform.isAndroid) {
                                            final AndroidDeviceInfo androidInfo = await deviceInfo.androidInfo;
                                                    return androidInfo.id; // ID único do Android
                                                          } else if (Platform.isIOS) {
                                                                  final IosDeviceInfo iosInfo = await deviceInfo.iosInfo;
                                                                          return iosInfo.identifierForVendor ?? "ios_desconhecido";
                                                                                }
                                                                                    } catch (e) {
                                                                                          print("Erro ao obter deviceId: $e");
                                                                                              }
                                                                                                  return "id_nao_encontrado";
                                                                                                    }

                                                                                                      /// Executa a regra de negócio do Login
                                                                                                        Future<bool> realizarLogin(String usuario, String senha) async {
                                                                                                            _isLoading = true;
                                                                                                                _msgErro = null;
                                                                                                                    _idDispositivoBloqueado = null;
                                                                                                                        notifyListeners();

                                                                                                                            try {
                                                                                                                                  // 1. Coleta o ID do dispositivo automaticamente
                                                                                                                                        String deviceId = await _obterDeviceId();

                                                                                                                                              // 2. Chama o repositório que você criou
                                                                                                                                                    final resultado = await _authRepository.tentarAutenticacao(usuario, senha, deviceId);

                                                                                                                                                          if (!resultado.sucesso) {
                                                                                                                                                                  _msgErro = "Usuário ou senha inválidos.";
                                                                                                                                                                          _isLoading = false;
                                                                                                                                                                                  notifyListeners();
                                                                                                                                                                                          return false;
                                                                                                                                                                                                }

                                                                                                                                                                                                      // Se o login está certo, mas o aparelho não está autorizado no posto
                                                                                                                                                                                                            if (!resultado.dispositivoAutorizado) {
                                                                                                                                                                                                                    _idDispositivoBloqueado = resultado.deviceId ?? deviceId;
                                                                                                                                                                                                                            _msgErro = "Este dispositivo não está autorizado para o seu posto.";
                                                                                                                                                                                                                                    _isLoading = false;
                                                                                                                                                                                                                                            notifyListeners();
                                                                                                                                                                                                                                                    return false;
                                                                                                                                                                                                                                                          }

                                                                                                                                                                                                                                                                // Sucesso absoluto
                                                                                                                                                                                                                                                                      _dadosSessaoUsuario = resultado.dadosUsuario;
                                                                                                                                                                                                                                                                            _isLoading = false;
                                                                                                                                                                                                                                                                                  notifyListeners();
                                                                                                                                                                                                                                                                                        return true;

                                                                                                                                                                                                                                                                                            } catch (e) {
                                                                                                                                                                                                                                                                                                  _msgErro = "Erro de conexão com o servidor.";
                                                                                                                                                                                                                                                                                                        _isLoading = false;
                                                                                                                                                                                                                                                                                                              notifyListeners();
                                                                                                                                                                                                                                                                                                                    return false;
                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                          }