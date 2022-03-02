// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'database.dart';

// **************************************************************************
// FloorGenerator
// **************************************************************************

// ignore: avoid_classes_with_only_static_members
class $FloorAppDatabase {
  /// Creates a database builder for a persistent database.
  /// Once a database is built, you should keep a reference to it and re-use it.
  static _$AppDatabaseBuilder databaseBuilder(String name) =>
      _$AppDatabaseBuilder(name);

  /// Creates a database builder for an in memory database.
  /// Information stored in an in memory database disappears when the process is killed.
  /// Once a database is built, you should keep a reference to it and re-use it.
  static _$AppDatabaseBuilder inMemoryDatabaseBuilder() =>
      _$AppDatabaseBuilder(null);
}

class _$AppDatabaseBuilder {
  _$AppDatabaseBuilder(this.name);

  final String? name;

  final List<Migration> _migrations = [];

  Callback? _callback;

  /// Adds migrations to the builder.
  _$AppDatabaseBuilder addMigrations(List<Migration> migrations) {
    _migrations.addAll(migrations);
    return this;
  }

  /// Adds a database [Callback] to the builder.
  _$AppDatabaseBuilder addCallback(Callback callback) {
    _callback = callback;
    return this;
  }

  /// Creates the database and initializes it.
  Future<AppDatabase> build() async {
    final path = name != null
        ? await sqfliteDatabaseFactory.getDatabasePath(name!)
        : ':memory:';
    final database = _$AppDatabase();
    database.database = await database.open(
      path,
      _migrations,
      _callback,
    );
    return database;
  }
}

class _$AppDatabase extends AppDatabase {
  _$AppDatabase([StreamController<String>? listener]) {
    changeListener = listener ?? StreamController<String>.broadcast();
  }

  GameDao? _gameDaoInstance;

  ArtworkDao? _artworkDaoInstance;

  GenreDao? _genreDaoInstance;

  VideoDao? _videoDaoInstance;

  Future<sqflite.Database> open(String path, List<Migration> migrations,
      [Callback? callback]) async {
    final databaseOptions = sqflite.OpenDatabaseOptions(
      version: 1,
      onConfigure: (database) async {
        await database.execute('PRAGMA foreign_keys = ON');
        await callback?.onConfigure?.call(database);
      },
      onOpen: (database) async {
        await callback?.onOpen?.call(database);
      },
      onUpgrade: (database, startVersion, endVersion) async {
        await MigrationAdapter.runMigrations(
            database, startVersion, endVersion, migrations);

        await callback?.onUpgrade?.call(database, startVersion, endVersion);
      },
      onCreate: (database, version) async {
        await database.execute(
            'CREATE TABLE IF NOT EXISTS `Game` (`id` INTEGER NOT NULL, `name` TEXT NOT NULL, `rating` REAL NOT NULL, `ratingCount` INTEGER NOT NULL, `storyline` TEXT NOT NULL, PRIMARY KEY (`id`))');
        await database.execute(
            'CREATE TABLE IF NOT EXISTS `Artwork` (`id` INTEGER NOT NULL, `url` TEXT NOT NULL, `game` INTEGER NOT NULL, FOREIGN KEY (`game`) REFERENCES `Game` (`id`) ON UPDATE CASCADE ON DELETE CASCADE, PRIMARY KEY (`id`))');
        await database.execute(
            'CREATE TABLE IF NOT EXISTS `Video` (`id` INTEGER NOT NULL, `videoId` TEXT NOT NULL, `game` INTEGER NOT NULL, FOREIGN KEY (`game`) REFERENCES `Game` (`id`) ON UPDATE CASCADE ON DELETE CASCADE, PRIMARY KEY (`id`))');
        await database.execute(
            'CREATE TABLE IF NOT EXISTS `Genre` (`id` INTEGER NOT NULL, `name` TEXT NOT NULL, `game` INTEGER NOT NULL, FOREIGN KEY (`game`) REFERENCES `Game` (`id`) ON UPDATE CASCADE ON DELETE CASCADE, PRIMARY KEY (`id`))');

        await callback?.onCreate?.call(database, version);
      },
    );
    return sqfliteDatabaseFactory.openDatabase(path, options: databaseOptions);
  }

  @override
  GameDao get gameDao {
    return _gameDaoInstance ??= _$GameDao(database, changeListener);
  }

  @override
  ArtworkDao get artworkDao {
    return _artworkDaoInstance ??= _$ArtworkDao(database, changeListener);
  }

  @override
  GenreDao get genreDao {
    return _genreDaoInstance ??= _$GenreDao(database, changeListener);
  }

  @override
  VideoDao get videoDao {
    return _videoDaoInstance ??= _$VideoDao(database, changeListener);
  }
}

class _$GameDao extends GameDao {
  _$GameDao(this.database, this.changeListener)
      : _queryAdapter = QueryAdapter(database, changeListener),
        _gameInsertionAdapter = InsertionAdapter(
            database,
            'Game',
            (Game item) => <String, Object?>{
                  'id': item.id,
                  'name': item.name,
                  'rating': item.rating,
                  'ratingCount': item.ratingCount,
                  'storyline': item.storyline
                },
            changeListener);

  final sqflite.DatabaseExecutor database;

  final StreamController<String> changeListener;

  final QueryAdapter _queryAdapter;

  final InsertionAdapter<Game> _gameInsertionAdapter;

  @override
  Future<List<Game>> findAllGames() async {
    return _queryAdapter.queryList('SELECT * FROM Game',
        mapper: (Map<String, Object?> row) => Game(
            id: row['id'] as int,
            name: row['name'] as String,
            rating: row['rating'] as double,
            ratingCount: row['ratingCount'] as int,
            storyline: row['storyline'] as String));
  }

  @override
  Stream<Game?> findGameById(int id) {
    return _queryAdapter.queryStream('SELECT * FROM Game WHERE id = ?1',
        mapper: (Map<String, Object?> row) => Game(
            id: row['id'] as int,
            name: row['name'] as String,
            rating: row['rating'] as double,
            ratingCount: row['ratingCount'] as int,
            storyline: row['storyline'] as String),
        arguments: [id],
        queryableName: 'Game',
        isView: false);
  }

  @override
  Future<void> insertGames(List<Game> games) async {
    await _gameInsertionAdapter.insertList(games, OnConflictStrategy.abort);
  }
}

class _$ArtworkDao extends ArtworkDao {
  _$ArtworkDao(this.database, this.changeListener)
      : _queryAdapter = QueryAdapter(database),
        _artworkInsertionAdapter = InsertionAdapter(
            database,
            'Artwork',
            (Artwork item) => <String, Object?>{
                  'id': item.id,
                  'url': item.url,
                  'game': item.game
                });

  final sqflite.DatabaseExecutor database;

  final StreamController<String> changeListener;

  final QueryAdapter _queryAdapter;

  final InsertionAdapter<Artwork> _artworkInsertionAdapter;

  @override
  Future<List<Artwork>> findAllArtworks() async {
    return _queryAdapter.queryList('SELECT * FROM Artwork',
        mapper: (Map<String, Object?> row) => Artwork(
            id: row['id'] as int,
            url: row['url'] as String,
            game: row['game'] as int));
  }

  @override
  Future<void> insertArtworks(List<Artwork> artworks) async {
    await _artworkInsertionAdapter.insertList(
        artworks, OnConflictStrategy.abort);
  }
}

class _$GenreDao extends GenreDao {
  _$GenreDao(this.database, this.changeListener)
      : _queryAdapter = QueryAdapter(database),
        _genreInsertionAdapter = InsertionAdapter(
            database,
            'Genre',
            (Genre item) => <String, Object?>{
                  'id': item.id,
                  'name': item.name,
                  'game': item.game
                });

  final sqflite.DatabaseExecutor database;

  final StreamController<String> changeListener;

  final QueryAdapter _queryAdapter;

  final InsertionAdapter<Genre> _genreInsertionAdapter;

  @override
  Future<List<Genre>> findAllGenres() async {
    return _queryAdapter.queryList('SELECT * FROM Genre',
        mapper: (Map<String, Object?> row) => Genre(
            id: row['id'] as int,
            name: row['name'] as String,
            game: row['game'] as int));
  }

  @override
  Future<void> insertGenres(List<Genre> genres) async {
    await _genreInsertionAdapter.insertList(genres, OnConflictStrategy.abort);
  }
}

class _$VideoDao extends VideoDao {
  _$VideoDao(this.database, this.changeListener)
      : _queryAdapter = QueryAdapter(database),
        _videoInsertionAdapter = InsertionAdapter(
            database,
            'Video',
            (Video item) => <String, Object?>{
                  'id': item.id,
                  'videoId': item.videoId,
                  'game': item.game
                });

  final sqflite.DatabaseExecutor database;

  final StreamController<String> changeListener;

  final QueryAdapter _queryAdapter;

  final InsertionAdapter<Video> _videoInsertionAdapter;

  @override
  Future<List<Video>> findAllVideos() async {
    return _queryAdapter.queryList('SELECT * FROM Video',
        mapper: (Map<String, Object?> row) => Video(
            id: row['id'] as int,
            videoId: row['videoId'] as String,
            game: row['game'] as int));
  }

  @override
  Future<void> insertVideos(List<Video> videos) async {
    await _videoInsertionAdapter.insertList(videos, OnConflictStrategy.abort);
  }
}
