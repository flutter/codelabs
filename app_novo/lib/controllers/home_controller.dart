import 'app_novo:flutter/material.dart';
import 'app_novo:geolocator/geolocator.dart';
import 'app_novo:device_info_plus/device_info_plus.dart';
import 'dart:io';
import '../repositories/auth_repository.dart';
import '../utils/image_utils.dart'; // 1. IMPORTA O SEU NOVO ARQUIVO AQUI!

class HomeController extends ChangeNotifier {
  final AuthRepository _authRepository = AuthRepository();

    bool _isEnviando = false;
      bool get isEnviando => _isEnviando;

        // ... (mantenha os métodos _capturarGpsReal e _obterDeviceId iguais)

          Future<bool> processarBatidaPonto({
              required int idBanco,
                  required String matricula,
                      required String nomeFuncionario, // Adicionado para passar pro carimbo
                          required double latitude,
                              required double longitude,
                                  String? caminhoFoto,
                                    }) async {
                                        _isEnviando = true;
                                            notifyListeners();

                                                try {
                                                      Position? posicaoReal = await _capturarGpsReal();
                                                            double latFinal = posicaoReal != null ? posicaoReal.latitude : latitude;
                                                                  double lngFinal = posicaoReal != null ? posicaoReal.longitude : longitude;
                                                                        
                                                                              String deviceId = await _obterDeviceId();
                                                                                    String timestampAtual = DateTime.now().toIso8601String();

                                                                                          // ====================================================================
                                                                                                // 2. A MÁGICA DO CARIMBO ACONTECE AQUI!
                                                                                                      // ====================================================================
                                                                                                            if (caminhoFoto != null) {
                                                                                                                    print("Carimbando informações de auditoria na foto...");
                                                                                                                            
                                                                                                                                    // Formata as strings para as 3 linhas do seu ImageUtils
                                                                                                                                            String linha1 = "$nomeFuncionario - Mat: $matricula";
                                                                                                                                                    String linha2 = "Data/Hora: ${DateTime.now().day}/${DateTime.now().month}/${DateTime.now().year} - ${DateTime.now().hour}:${DateTime.now().minute}";
                                                                                                                                                            String linha3 = "Lat: $latFinal / Lon: $lngFinal";

                                                                                                                                                                    // Executa o script que você mandou para modificar a imagem no disco
                                                                                                                                                                            await ImageUtils.carimbarFoto(
                                                                                                                                                                                      caminhoOriginal: caminhoFoto,
                                                                                                                                                                                                textoLinha1: linha1,
                                                                                                                                                                                                          textoLinha2: linha2,
                                                                                                                                                                                                                    textoLinha3: linha3,
                                                                                                                                                                                                                            );
                                                                                                                                                                                                                                    
                                                                                                                                                                                                                                            print("Foto carimbada com sucesso!");
                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                        // ====================================================================

                                                                                                                                                                                                                                                              // 3. Envia a foto já modificada e compactada com qualidade 70 para a API
                                                                                                                                                                                                                                                                    bool sucesso = await _authRepository.registrarPontoComBlob(
                                                                                                                                                                                                                                                                            idBanco: idBanco,
                                                                                                                                                                                                                                                                                    matricula: matricula,
                                                                                                                                                                                                                                                                                            deviceId: deviceId,
                                                                                                                                                                                                                                                                                                    latitude: latFinal,
                                                                                                                                                                                                                                                                                                            longitude: lngFinal,
                                                                                                                                                                                                                                                                                                                    timestamp: timestampAtual,
                                                                                                                                                                                                                                                                                                                            caminhoFotoLocal: caminhoFoto, // Aqui vai o arquivo já carimbado!
                                                                                                                                                                                                                                                                                                                                  );

                                                                                                                                                                                                                                                                                                                                        _isEnviando = false;
                                                                                                                                                                                                                                                                                                                                              notifyListeners();
                                                                                                                                                                                                                                                                                                                                                    return sucesso;
                                                                                                                                                                                                                                                                                                                                                        } catch (e) {
                                                                                                                                                                                                                                                                                                                                                              print("Erro ao processar ponto e carimbo: $e");
                                                                                                                                                                                                                                                                                                                                                                    _isEnviando = false;
                                                                                                                                                                                                                                                                                                                                                                          notifyListeners();
                                                                                                                                                                                                                                                                                                                                                                                return false;
                                                                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                                                                                                      }