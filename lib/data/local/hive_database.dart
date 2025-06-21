import 'package:hive_flutter/hive_flutter.dart';

import '../../domain/entities/league.dart';
import '../../domain/entities/season.dart';
import '../../domain/entities/team.dart';
import '../../domain/entities/conference.dart';
import '../../domain/entities/division.dart';
import '../../domain/entities/player.dart';
import '../../domain/entities/game.dart';
import '../../domain/entities/transaction.dart';
import '../../domain/entities/finance_sheet.dart';
import '../../domain/entities/news_item.dart';
import '../../domain/entities/event.dart';
import '../../domain/enums/event_type.dart';
import '../../domain/enums/news_category.dart';
import '../../domain/enums/position.dart';
import '../../domain/enums/transaction_type.dart';
import '../../domain/value_objects/box_score.dart';
import '../../domain/value_objects/contract.dart';
import '../../domain/value_objects/expense_breakdown.dart';
import '../../domain/value_objects/income_breakdown.dart';
import '../../domain/value_objects/injury_status.dart';
import '../../domain/value_objects/league_rules.dart';
import '../../domain/value_objects/record.dart';
import '../../domain/value_objects/skills.dart';
import '../../domain/value_objects/team_colors.dart';
import '../../domain/value_objects/team_standing.dart';
import '../../domain/entities/gm_profile.dart';

class HiveDatabase {
  static Future<void> init() async {
    await Hive.initFlutter();
    registerAdapters();
  }

  static void registerAdapters() {
    if (!Hive.isAdapterRegistered(0)) {
      Hive.registerAdapter(LeagueAdapter());
    }
    if (!Hive.isAdapterRegistered(1)) {
      Hive.registerAdapter(SeasonAdapter());
    }
    if (!Hive.isAdapterRegistered(2)) {
      Hive.registerAdapter(TeamAdapter());
    }
    if (!Hive.isAdapterRegistered(23)) {
      Hive.registerAdapter(ConferenceAdapter());
    }
    if (!Hive.isAdapterRegistered(24)) {
      Hive.registerAdapter(DivisionAdapter());
    }
    if (!Hive.isAdapterRegistered(3)) {
      Hive.registerAdapter(PlayerAdapter());
    }
    if (!Hive.isAdapterRegistered(4)) {
      Hive.registerAdapter(GameAdapter());
    }
    if (!Hive.isAdapterRegistered(5)) {
      Hive.registerAdapter(TransactionAdapter());
    }
    if (!Hive.isAdapterRegistered(6)) {
      Hive.registerAdapter(FinanceSheetAdapter());
    }
    if (!Hive.isAdapterRegistered(7)) {
      Hive.registerAdapter(NewsItemAdapter());
    }
    if (!Hive.isAdapterRegistered(8)) {
      Hive.registerAdapter(EventAdapter());
    }
    if (!Hive.isAdapterRegistered(9)) {
      Hive.registerAdapter(BoxScoreAdapter());
    }
    if (!Hive.isAdapterRegistered(10)) {
      Hive.registerAdapter(ContractAdapter());
    }
    if (!Hive.isAdapterRegistered(11)) {
      Hive.registerAdapter(ExpenseBreakdownAdapter());
    }
    if (!Hive.isAdapterRegistered(12)) {
      Hive.registerAdapter(IncomeBreakdownAdapter());
    }
    if (!Hive.isAdapterRegistered(13)) {
      Hive.registerAdapter(InjuryStatusAdapter());
    }
    if (!Hive.isAdapterRegistered(14)) {
      Hive.registerAdapter(LeagueRulesAdapter());
    }
    if (!Hive.isAdapterRegistered(15)) {
      Hive.registerAdapter(RecordAdapter());
    }
    if (!Hive.isAdapterRegistered(16)) {
      Hive.registerAdapter(SkillsAdapter());
    }
    if (!Hive.isAdapterRegistered(17)) {
      Hive.registerAdapter(TeamColorsAdapter());
    }
    if (!Hive.isAdapterRegistered(18)) {
      Hive.registerAdapter(TeamStandingAdapter());
    }
    if (!Hive.isAdapterRegistered(19)) {
      Hive.registerAdapter(EventTypeAdapter());
    }
    if (!Hive.isAdapterRegistered(20)) {
      Hive.registerAdapter(NewsCategoryAdapter());
    }
    if (!Hive.isAdapterRegistered(21)) {
      Hive.registerAdapter(PositionAdapter());
    }
    if (!Hive.isAdapterRegistered(22)) {
      Hive.registerAdapter(TransactionTypeAdapter());
    }
    if (!Hive.isAdapterRegistered(30)) {
      Hive.registerAdapter(GMProfileAdapter());
    }
  }
}
