.class final Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/DefaultVoicemailNotifier$DefaultNewCallsQuery;
.super Ljava/lang/Object;
.source "DefaultVoicemailNotifier.java"

# interfaces
.implements Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/DefaultVoicemailNotifier$NewCallsQuery;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/DefaultVoicemailNotifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DefaultNewCallsQuery"
.end annotation


# static fields
.field private static final ID_COLUMN_INDEX:I = 0x0

.field private static final NUMBER_COLUMN_INDEX:I = 0x1

.field private static final NUMBER_PRESENTATION_COLUMN_INDEX:I = 0x2

.field private static final PROJECTION:[Ljava/lang/String;

.field private static final VOICEMAIL_URI_COLUMN_INDEX:I = 0x3


# instance fields
.field private final mContentResolver:Landroid/content/ContentResolver;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 280
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    .line 281
    const-string/jumbo v1, "_id"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string/jumbo v1, "number"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string/jumbo v1, "presentation"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string/jumbo v1, "voicemail_uri"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 280
    sput-object v0, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/DefaultVoicemailNotifier$DefaultNewCallsQuery;->PROJECTION:[Ljava/lang/String;

    .line 279
    return-void
.end method

.method private constructor <init>(Landroid/content/ContentResolver;)V
    .locals 0
    .param p1, "contentResolver"    # Landroid/content/ContentResolver;

    .prologue
    .line 294
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 295
    invoke-static {p1}, Lcom/sonyericsson/android/socialphonebook/util/CommonCodeUtil;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 296
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/DefaultVoicemailNotifier$DefaultNewCallsQuery;->mContentResolver:Landroid/content/ContentResolver;

    .line 294
    return-void
.end method

.method synthetic constructor <init>(Landroid/content/ContentResolver;Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/DefaultVoicemailNotifier$DefaultNewCallsQuery;)V
    .locals 0
    .param p1, "contentResolver"    # Landroid/content/ContentResolver;

    .prologue
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/DefaultVoicemailNotifier$DefaultNewCallsQuery;-><init>(Landroid/content/ContentResolver;)V

    return-void
.end method

.method private createNewCallsFromCursor(Landroid/database/Cursor;)Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/DefaultVoicemailNotifier$NewCall;
    .locals 8
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    const/4 v6, 0x1

    .line 353
    invoke-interface {p1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 354
    .local v1, "number":Ljava/lang/String;
    const/4 v5, 0x2

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 355
    .local v2, "numberPresentation":I
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    if-ne v2, v6, :cond_0

    .line 356
    const/4 v5, 0x0

    return-object v5

    .line 358
    :cond_0
    sget-object v5, Landroid/provider/CallLog$Calls;->CONTENT_URI_WITH_VOICEMAIL:Landroid/net/Uri;

    .line 359
    const/4 v6, 0x0

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 358
    invoke-static {v5, v6, v7}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 360
    .local v0, "callsUri":Landroid/net/Uri;
    const/4 v5, 0x3

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 361
    .local v4, "voicemailUriString":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v3, 0x0

    .line 363
    :goto_0
    const-string/jumbo v5, "DefaultVoicemailNotifier"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "voicemailUriString: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 364
    new-instance v5, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/DefaultVoicemailNotifier$NewCall;

    invoke-direct {v5, v0, v3, v1, v2}, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/DefaultVoicemailNotifier$NewCall;-><init>(Landroid/net/Uri;Landroid/net/Uri;Ljava/lang/String;I)V

    return-object v5

    .line 361
    :cond_1
    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .local v3, "voicemailUri":Landroid/net/Uri;
    goto :goto_0
.end method


# virtual methods
.method public query()[Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/DefaultVoicemailNotifier$NewCall;
    .locals 12

    .prologue
    const/4 v11, 0x0

    .line 305
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 306
    .local v10, "selection":Ljava/lang/StringBuilder;
    const-string/jumbo v0, "number IS NOT NULL "

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 307
    const-string/jumbo v0, " AND "

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 308
    const-string/jumbo v0, "new = 1"

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 309
    const-string/jumbo v0, " AND "

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 310
    const-string/jumbo v0, "type = 4"

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 311
    const-string/jumbo v0, " AND "

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 312
    const-string/jumbo v0, "source_package <> "

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 313
    const-string/jumbo v0, "\'com.android.server.telecom\'"

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 314
    const-string/jumbo v0, " AND "

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 315
    const-string/jumbo v0, "source_package <> "

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 316
    const-string/jumbo v0, "\'com.sonymobile.vvm3client\'"

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 317
    const-string/jumbo v0, " AND "

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 318
    const-string/jumbo v0, "source_package <> "

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 319
    const-string/jumbo v0, "\'com.sonymobile.visualvoicemail\'"

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 322
    const/4 v6, 0x0

    .line 324
    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/DefaultVoicemailNotifier$DefaultNewCallsQuery;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/CallLog$Calls;->CONTENT_URI_WITH_VOICEMAIL:Landroid/net/Uri;

    sget-object v2, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/DefaultVoicemailNotifier$DefaultNewCallsQuery;->PROJECTION:[Ljava/lang/String;

    .line 325
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v5, "date DESC"

    const/4 v4, 0x0

    .line 324
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 326
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_4

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_4

    .line 327
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 328
    .local v9, "newCalls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/DefaultVoicemailNotifier$NewCall;>;"
    const/4 v8, 0x0

    .line 329
    :cond_0
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 330
    invoke-direct {p0, v6}, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/DefaultVoicemailNotifier$DefaultNewCallsQuery;->createNewCallsFromCursor(Landroid/database/Cursor;)Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/DefaultVoicemailNotifier$NewCall;

    move-result-object v8

    .line 331
    .local v8, "newCall":Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/DefaultVoicemailNotifier$NewCall;
    if-eqz v8, :cond_0

    .line 332
    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 340
    .end local v6    # "cursor":Landroid/database/Cursor;
    .end local v8    # "newCall":Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/DefaultVoicemailNotifier$NewCall;
    .end local v9    # "newCalls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/DefaultVoicemailNotifier$NewCall;>;"
    :catchall_0
    move-exception v0

    .line 341
    if-eqz v6, :cond_1

    .line 342
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 340
    :cond_1
    throw v0

    .line 335
    .restart local v6    # "cursor":Landroid/database/Cursor;
    .restart local v9    # "newCalls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/DefaultVoicemailNotifier$NewCall;>;"
    :cond_2
    :try_start_1
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 336
    .local v7, "length":I
    if-lez v7, :cond_4

    .line 337
    new-array v0, v7, [Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/DefaultVoicemailNotifier$NewCall;

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/DefaultVoicemailNotifier$NewCall;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 341
    if-eqz v6, :cond_3

    .line 342
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 337
    :cond_3
    return-object v0

    .line 341
    .end local v7    # "length":I
    .end local v9    # "newCalls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/DefaultVoicemailNotifier$NewCall;>;"
    :cond_4
    if-eqz v6, :cond_5

    .line 342
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 345
    :cond_5
    return-object v11
.end method
