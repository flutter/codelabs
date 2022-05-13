// @dart=2.11
import 'dart:async';
import 'dart:math';
import 'package:flutter/material.dart';
import 'game_agent.dart';

// Hidden board cell status; 'occupied' means it's part of the plane
const hiddenBoardCellOccupied = 1;
const hiddenBoardCellUnoccupied = 0;

// Visible board cell status
const visibleBoardCellHit = 1;
const visibleBoardCellMiss = -1;
const visibleBoardCellUntried = 0;

void main() {
  runApp(const PlaneStrike());
}

class PlaneStrike extends StatefulWidget {
  const PlaneStrike({Key key}) : super(key: key);

  // This widget is the root of your application.
  @override
  _PlaneStrikeState createState() => _PlaneStrikeState();
}

class _PlaneStrikeState extends State<PlaneStrike>
    with SingleTickerProviderStateMixin {
  // The board should be in square shape so we only need one size
  final _boardSize = 8;
  // Number of pieces needed to form a 'plane'
  final _planePieceCount = 8;
  int _agentHits;
  int _playerHits;
  TFAgentsAgent _policyGradientAgent;
  List<List<double>> _agentBoardState;
  List<List<double>> _agentHiddenBoardState;
  List<List<double>> _playerBoardState;
  List<List<double>> _playerHiddenBoardState;
  int _agentActionX;
  int _agentActionY;

  @override
  void initState() {
    super.initState();
    _resetGame();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TFLite Flutter Reference App',
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      home: _buildGameBody(),
    );
  }

  List<List<double>> _fillWithZeros() =>
      List.generate(_boardSize, (_) => List.filled(_boardSize, 0.0));

  void _resetGame() {
    _agentHits = 0;
    _playerHits = 0;
    _policyGradientAgent = TFAgentsAgent();
    // We keep track of 4 sets of boards (2 for each player):
    //   - _*BoardState is the visible board that tracks the game progress
    //   - _*HiddentBoardState is the secret board that records the true plane location
    _agentBoardState = _fillWithZeros();
    _agentHiddenBoardState = _setBoardState();
    _playerBoardState = _fillWithZeros();
    _playerHiddenBoardState = _setBoardState();
  }

  List<List<double>> _setBoardState() {
    var hiddenBoardState = _fillWithZeros();

    // Place the plane on the board
    // First, decide the plane's orientation
    //   0: heading right
    //   1: heading up
    //   2: heading left
    //   3: heading down
    var rng = Random();
    int planeOrientation = rng.nextInt(4);

    // Figrue out the location of plane core as the '*' below
    //   | |      |      | |    ---
    //   |-*-    -*-    -*-|     |
    //   | |      |      | |    -*-
    //           ---             |
    int planeCoreX, planeCoreY;
    switch (planeOrientation) {
      case 0:
        planeCoreX = rng.nextInt(_boardSize - 2) + 1;
        planeCoreY = rng.nextInt(_boardSize - 3) + 2;
        // Populate the tail
        hiddenBoardState[planeCoreX][planeCoreY - 2] = 1;
        hiddenBoardState[planeCoreX - 1][planeCoreY - 2] = 1;
        hiddenBoardState[planeCoreX + 1][planeCoreY - 2] = 1;
        break;
      case 1:
        planeCoreX = rng.nextInt(_boardSize - 3) + 1;
        planeCoreY = rng.nextInt(_boardSize - 2) + 1;
        // Populate the tail
        hiddenBoardState[planeCoreX + 2][planeCoreY] = 1;
        hiddenBoardState[planeCoreX + 2][planeCoreY + 1] = 1;
        hiddenBoardState[planeCoreX + 2][planeCoreY - 1] = 1;
        break;
      case 2:
        planeCoreX = rng.nextInt(_boardSize - 2) + 1;
        planeCoreY = rng.nextInt(_boardSize - 3) + 1;
        // Populate the tail
        hiddenBoardState[planeCoreX][planeCoreY + 2] = 1;
        hiddenBoardState[planeCoreX - 1][planeCoreY + 2] = 1;
        hiddenBoardState[planeCoreX + 1][planeCoreY + 2] = 1;
        break;
      default:
        planeCoreX = rng.nextInt(_boardSize - 3) + 2;
        planeCoreY = rng.nextInt(_boardSize - 2) + 1;
        // Populate the tail
        hiddenBoardState[planeCoreX - 2][planeCoreY] = 1;
        hiddenBoardState[planeCoreX - 2][planeCoreY + 1] = 1;
        hiddenBoardState[planeCoreX - 2][planeCoreY - 1] = 1;
    }

    // Populate the 'cross' in the plane
    hiddenBoardState[planeCoreX][planeCoreY] = 1;
    hiddenBoardState[planeCoreX + 1][planeCoreY] = 1;
    hiddenBoardState[planeCoreX - 1][planeCoreY] = 1;
    hiddenBoardState[planeCoreX][planeCoreY + 1] = 1;
    hiddenBoardState[planeCoreX][planeCoreY - 1] = 1;

    return hiddenBoardState;
  }

  Widget _buildGameBody() {
    return Scaffold(
        appBar: AppBar(
          // Here we take the value from the MyHomePage object that was created by
          // the App.build method, and use it to set our appbar title.
          title: const Text('Plane Strike game based on TF Agents and Flutter'),
        ),
        body: Center(
          child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: 265,
                  height: 265,
                  margin: const EdgeInsets.only(
                      left: 0, top: 10, right: 0, bottom: 0),
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.black, width: 2.0)),
                  child: GridView.builder(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: _boardSize,
                    ),
                    itemBuilder: _buildAgentBoardItems,
                    itemCount: _boardSize * _boardSize,
                  ),
                ),
                Text(
                  "Agent's board (hits: $_playerHits)",
                  style: const TextStyle(
                      fontSize: 18,
                      color: Colors.blue,
                      fontWeight: FontWeight.bold),
                ),
                const Divider(
                  height: 20,
                  thickness: 5,
                  indent: 20,
                  endIndent: 20,
                ),
                Text(
                  'Your board (hits: $_agentHits)',
                  style: const TextStyle(
                      fontSize: 18,
                      color: Colors.purple,
                      fontWeight: FontWeight.bold),
                ),
                Container(
                  width: 265,
                  height: 265,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.black, width: 2.0)),
                  child: GridView.builder(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: _boardSize,
                    ),
                    itemBuilder: _buildPlayerBoardItems,
                    itemCount: _boardSize * _boardSize,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 0, top: 0, right: 0, bottom: 10),
                  child: ElevatedButton(
                    onPressed: () {
                      _resetGame();
                      setState(() {});
                    },
                    child: const Text('Reset game'),
                  ),
                )
              ]),
        ));
  }

  Widget _buildAgentBoardItems(BuildContext context, int index) {
    int x, y = 0;
    x = (index / _boardSize).floor();
    y = (index % _boardSize);
    return GestureDetector(
      onTap: () {
        _gridItemTapped(context, x, y);
      },
      child: GridTile(
        child: Container(
          decoration: BoxDecoration(
              border: Border.all(color: Colors.black, width: 0.5)),
          child: Center(
            child: _buildGridItem(x, y, 'agent'),
          ),
        ),
      ),
    );
  }

  Widget _buildPlayerBoardItems(BuildContext context, int index) {
    int x, y = 0;
    x = (index / _boardSize).floor();
    y = (index % _boardSize);
    return GridTile(
      child: Container(
        decoration:
            BoxDecoration(border: Border.all(color: Colors.black, width: 0.5)),
        child: Center(
          child: _buildGridItem(x, y, 'player'),
        ),
      ),
    );
  }

  Widget _buildGridItem(int x, int y, String agentOrPlayer) {
    var boardState = _agentBoardState;
    var hiddenBoardState = _agentHiddenBoardState;
    if (agentOrPlayer == 'player') {
      boardState = _playerBoardState;
      hiddenBoardState = _playerHiddenBoardState;
    }
    Color gridItemColor;
    switch ((boardState[x][y]).toInt()) {
      // hit
      case 1:
        gridItemColor = Colors.red;
        break;
      // miss
      case -1:
        gridItemColor = Colors.yellow;
        break;
      default:
        if (hiddenBoardState[x][y] == 1 && agentOrPlayer == 'player') {
          gridItemColor = Colors.green;
        } else {
          gridItemColor = Colors.white;
        }
    }

    return Container(
      color: gridItemColor,
    );
  }

  Future<void> _gridItemTapped(BuildContext context, int x, int y) async {
    if (_agentHiddenBoardState[x][y] == 1) {
      // Non-repeat move
      if (_agentBoardState[x][y] == 0) {
        _playerHits++;
      }
      _agentBoardState[x][y] = 1;
    } else {
      _agentBoardState[x][y] = -1;
    }

    // Agent takes action
    int agentAction = await _policyGradientAgent.predict(_playerBoardState);
    _agentActionX = agentAction ~/ _boardSize;
    _agentActionY = agentAction % _boardSize;
    if (_playerHiddenBoardState[_agentActionX][_agentActionY] == 1) {
      // Non-repeat move
      if (_playerBoardState[_agentActionX][_agentActionY] == 0) {
        _agentHits++;
      }
      _playerBoardState[_agentActionX][_agentActionY] = 1;
    } else {
      _playerBoardState[_agentActionX][_agentActionY] = -1;
    }
    setState(() {});

    String userPrompt = '';
    if (_playerHits == _planePieceCount && _agentHits == _planePieceCount) {
      userPrompt = 'Draw game!';
    } else if (_agentHits == _planePieceCount) {
      userPrompt = 'Agent wins!';
    } else if (_playerHits == _planePieceCount) {
      userPrompt = 'You win!';
    }

    if (userPrompt != '') {
      Future.delayed(const Duration(seconds: 2), () => setState(_resetGame));
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content: Text(
          userPrompt,
          textAlign: TextAlign.center,
        ),
        duration: const Duration(seconds: 2),
      ));
    }
  }
}
