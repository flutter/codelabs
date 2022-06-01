import 'dart:async';
import 'dart:math';
import 'package:flutter/material.dart';
import 'game_agent.dart';

// Hidden board cell statuses; 'occupied' means it's part of the plane
const double hiddenBoardCellOccupied = 1;
const double hiddenBoardCellUnoccupied = 0;

// Visible board cell statuses
const double visibleBoardCellHit = 1;
const double visibleBoardCellMiss = -1;
const double visibleBoardCellUntried = 0;

void main() {
  runApp(const PlaneStrike());
}

class PlaneStrike extends StatefulWidget {
  const PlaneStrike({super.key});

  // This widget is the root of your application.
  @override
  State<PlaneStrike> createState() => _PlaneStrikeState();
}

class _PlaneStrikeState extends State<PlaneStrike>
    with SingleTickerProviderStateMixin {
  // The board should be in square shape so we only need one size
  final _boardSize = 8;
  // Number of pieces needed to form a 'plane'
  final _planePieceCount = 8;
  late int _agentHitCount;
  late int _playerHitCount;
  late TFAgentsAgent _policyGradientAgent;
  late List<List<double>> _agentVisibleBoardState;
  late List<List<double>> _agentHiddenBoardState;
  late List<List<double>> _playerVisibleBoardState;
  late List<List<double>> _playerHiddenBoardState;
  late int _agentActionX;
  late int _agentActionY;

  @override
  void initState() {
    super.initState();
    _resetGame();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TFAgents Flutter Sample App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: _buildGameBody(),
    );
  }

  List<List<double>> _initEmptyBoard() =>
      List.generate(_boardSize, (_) => List.filled(_boardSize, 0));

  void _resetGame() {
    _agentHitCount = 0;
    _playerHitCount = 0;
    _policyGradientAgent = TFAgentsAgent();
    // We keep track of 4 sets of boards (2 for each player):
    //   - _*BoardState is the visible board that tracks the game progress
    //   - _*HiddentBoardState is the secret board that records the true plane location
    _agentVisibleBoardState = _initEmptyBoard();
    _agentHiddenBoardState = _setHiddenBoardState();
    _playerVisibleBoardState = _initEmptyBoard();
    _playerHiddenBoardState = _setHiddenBoardState();
  }

  List<List<double>> _setHiddenBoardState() {
    var hiddenBoardState = _initEmptyBoard();

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
        hiddenBoardState[planeCoreX][planeCoreY - 2] = hiddenBoardCellOccupied;
        hiddenBoardState[planeCoreX - 1][planeCoreY - 2] =
            hiddenBoardCellOccupied;
        hiddenBoardState[planeCoreX + 1][planeCoreY - 2] =
            hiddenBoardCellOccupied;
        break;
      case 1:
        planeCoreX = rng.nextInt(_boardSize - 3) + 1;
        planeCoreY = rng.nextInt(_boardSize - 2) + 1;
        // Populate the tail
        hiddenBoardState[planeCoreX + 2][planeCoreY] = hiddenBoardCellOccupied;
        hiddenBoardState[planeCoreX + 2][planeCoreY + 1] =
            hiddenBoardCellOccupied;
        hiddenBoardState[planeCoreX + 2][planeCoreY - 1] =
            hiddenBoardCellOccupied;
        break;
      case 2:
        planeCoreX = rng.nextInt(_boardSize - 2) + 1;
        planeCoreY = rng.nextInt(_boardSize - 3) + 1;
        // Populate the tail
        hiddenBoardState[planeCoreX][planeCoreY + 2] = hiddenBoardCellOccupied;
        hiddenBoardState[planeCoreX - 1][planeCoreY + 2] =
            hiddenBoardCellOccupied;
        hiddenBoardState[planeCoreX + 1][planeCoreY + 2] =
            hiddenBoardCellOccupied;
        break;
      default:
        planeCoreX = rng.nextInt(_boardSize - 3) + 2;
        planeCoreY = rng.nextInt(_boardSize - 2) + 1;
        // Populate the tail
        hiddenBoardState[planeCoreX - 2][planeCoreY] = hiddenBoardCellOccupied;
        hiddenBoardState[planeCoreX - 2][planeCoreY + 1] =
            hiddenBoardCellOccupied;
        hiddenBoardState[planeCoreX - 2][planeCoreY - 1] =
            hiddenBoardCellOccupied;
    }

    // Populate the 'cross' in the plane
    hiddenBoardState[planeCoreX][planeCoreY] = hiddenBoardCellOccupied;
    hiddenBoardState[planeCoreX + 1][planeCoreY] = hiddenBoardCellOccupied;
    hiddenBoardState[planeCoreX - 1][planeCoreY] = hiddenBoardCellOccupied;
    hiddenBoardState[planeCoreX][planeCoreY + 1] = hiddenBoardCellOccupied;
    hiddenBoardState[planeCoreX][planeCoreY - 1] = hiddenBoardCellOccupied;

    return hiddenBoardState;
  }

  Widget _buildGameBody() {
    return Scaffold(
        appBar: AppBar(
          // Here we take the value from the MyHomePage object that was created by
          // the App.build method, and use it to set our appbar title.
          title: const Text('Plane Strike game based on TF Agents and Flutter'),
        ),
        body: SingleChildScrollView(
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
                      physics: const NeverScrollableScrollPhysics()),
                ),
                Text(
                  "Agent's board (hits: $_playerHitCount)",
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
                  'Your board (hits: $_agentHitCount)',
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
                    physics: const NeverScrollableScrollPhysics(),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 0, top: 20, right: 0, bottom: 0),
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
    var boardState = _agentVisibleBoardState;
    var hiddenBoardState = _agentHiddenBoardState;
    if (agentOrPlayer == 'player') {
      boardState = _playerVisibleBoardState;
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
        if (hiddenBoardState[x][y] == hiddenBoardCellOccupied &&
            agentOrPlayer == 'player') {
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
    if (_agentHiddenBoardState[x][y] == hiddenBoardCellOccupied) {
      // Non-repeat move
      if (_agentVisibleBoardState[x][y] == visibleBoardCellUntried) {
        _playerHitCount++;
      }
      _agentVisibleBoardState[x][y] = visibleBoardCellHit;
    } else {
      _agentVisibleBoardState[x][y] = visibleBoardCellMiss;
    }

    // TODO: add code for the agent to take an action

    String userPrompt = '';
    if (_playerHitCount == _planePieceCount &&
        _agentHitCount == _planePieceCount) {
      userPrompt = 'Draw game!';
    } else if (_agentHitCount == _planePieceCount) {
      userPrompt = 'Agent wins!';
    } else if (_playerHitCount == _planePieceCount) {
      userPrompt = 'You win!';
    }

    if (userPrompt != '') {
      Future.delayed(const Duration(seconds: 2), () => setState(_resetGame));
      if (!mounted) return;
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
