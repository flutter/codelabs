// TODO: Remove the following line
// ignore_for_file: final_not_initialized, assignment_to_final

class Team {
  final Coach coach;
}

class Coach {
  final Team team;
}

void main() {
  final myTeam = Team();
  final myCoach = Coach();
  myTeam.coach = myCoach;
  myCoach.team = myTeam;

  print('All done!');
}
