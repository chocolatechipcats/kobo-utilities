CREATE TABLE content(
    ContentID TEXT NOT NULL,
    ContentType TEXT NOT NULL,
    MimeType TEXT NOT NULL,
    BookID TEXT,
    BookTitle TEXT,
    ImageId TEXT,
    Title TEXT COLLATE NOCASE,
    Attribution TEXT COLLATE NOCASE,
    Description TEXT,
    DateCreated TEXT,
    ShortCoverKey TEXT,
    adobe_location TEXT,
    Publisher TEXT,
    IsEncrypted BOOL,
    DateLastRead TEXT,
    FirstTimeReading BOOL,
    ChapterIDBookmarked TEXT,
    ParagraphBookmarked INTEGER,
    BookmarkWordOffset INTEGER,
    NumShortcovers INTEGER,
    VolumeIndex INTEGER,
    ___NumPages INTEGER,
    ReadStatus INTEGER,
    ___SyncTime TEXT,
    ___UserID TEXT NOT NULL,
    PublicationId TEXT,
    ___FileOffset INTEGER,
    ___FileSize INTEGER,
    ___PercentRead INTEGER,
    ___ExpirationStatus INTEGER,
    FavouritesIndex NOT NULL DEFAULT -1,
    Accessibility INTEGER DEFAULT 1,
    ContentURL TEXT,
    Language TEXT,
    BookshelfTags TEXT,
    IsDownloaded BIT NOT NULL DEFAULT 1,
    FeedbackType INTEGER DEFAULT 0,
    AverageRating INTEGER DEFAULT 0,
    Depth INTEGER,
    PageProgressDirection TEXT,
    InWishlist BOOL NOT NULL DEFAULT FALSE,
    ISBN TEXT,
    WishlistedDate TEXT DEFAULT "0000-00-00T00:00:00.000",
    FeedbackTypeSynced INTEGER DEFAULT 0,
    IsSocialEnabled BOOL NOT NULL DEFAULT TRUE,
    EpubType INT NOT NULL DEFAULT -1,
    Monetization INTEGER DEFAULT 2,
    ExternalId TEXT,
    Series TEXT,
    SeriesNumber TEXT,
    Subtitle TEXT,
    WordCount INTEGER DEFAULT -1,
    Fallback TEXT,
    RestOfBookEstimate INTEGER,
    CurrentChapterEstimate INTEGER,
    CurrentChapterProgress FLOAT,
    PocketStatus INTEGER DEFAULT 0,
    UnsyncedPocketChanges TEXT,
    ImageUrl TEXT,
    DateAdded TEXT,
    WorkId TEXT,
    Properties TEXT,
    RenditionSpread TEXT,
    RatingCount INTEGER DEFAULT 0,
    ReviewsSyncDate TEXT,
    MediaOverlay TEXT,
    MediaOverlayType TEXT,
    RedirectPreviewUrl TEXT,
    PreviewFileSize INTEGER,
    EntitlementId TEXT,
    CrossRevisionId TEXT,
    DownloadUrl TEXT,
    ReadStateSynced BIT NOT NULL DEFAULT false,
    TimesStartedReading INTEGER,
    TimeSpentReading INTEGER,
    LastTimeStartedReading TEXT,
    LastTimeFinishedReading TEXT,
    ApplicableSubscriptions TEXT,
    ExternalIds TEXT,
    PurchaseRevisionId TEXT,
    SeriesID TEXT,
    SeriesNumberFloat REAL,
    AdobeLoanExpiration TEXT,
    HideFromHomePage bit,
    IsInternetArchive BOOL NOT NULL DEFAULT FALSE,
    titleKana TEXT,
    subtitleKana TEXT,
    seriesKana TEXT,
    attributionKana TEXT,
    publisherKana TEXT,
    IsPurchaseable BOOL DEFAULT TRUE,
    IsSupported BOOL DEFAULT TRUE,
    AnnotationsSyncToken TEXT,
    DateModified TEXT DEFAULT "0000-00-00T00:00:00.000",
    StorePages INTEGER DEFAULT 0,
    StoreWordCount INTEGER DEFAULT 0,
    StoreTimeToReadLowerEstimate INTEGER DEFAULT 0,
    StoreTimeToReadUpperEstimate INTEGER DEFAULT 0,
    Duration INTEGER DEFAULT 0,
    IsAbridged BOOL DEFAULT NULL,
    SyncConflictType INTEGER DEFAULT 0,
    PRIMARY KEY (ContentID)
);
CREATE TABLE ratings (
    ContentID TEXT NOT NULL,
    Rating INTEGER,
    Review TEXT,
    DateModified TEXT NOT NULL,
    PRIMARY KEY(ContentID)
);
