.class final Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/DefaultVoicemailNotifier$DefaultNameLookupQuery;
.super Ljava/lang/Object;
.source "DefaultVoicemailNotifier.java"

# interfaces
.implements Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/DefaultVoicemailNotifier$NameLookupQuery;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/DefaultVoicemailNotifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DefaultNameLookupQuery"
.end annotation


# static fields
.field private static final DISPLAY_NAME_COLUMN_INDEX:I

.field private static final PROJECTION:[Ljava/lang/String;


# instance fields
.field private final mContentResolver:Landroid/content/ContentResolver;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 386
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    .line 387
    const-string/jumbo v1, "display_name"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 386
    sput-object v0, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/DefaultVoicemailNotifier$DefaultNameLookupQuery;->PROJECTION:[Ljava/lang/String;

    .line 385
    return-void
.end method

.method private constructor <init>(Landroid/content/ContentResolver;)V
    .locals 0
    .param p1, "contentResolver"    # Landroid/content/ContentResolver;

    .prologue
    .line 394
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 395
    invoke-static {p1}, Lcom/sonyericsson/android/socialphonebook/util/CommonCodeUtil;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 396
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/DefaultVoicemailNotifier$DefaultNameLookupQuery;->mContentResolver:Landroid/content/ContentResolver;

    .line 394
    return-void
.end method

.method synthetic constructor <init>(Landroid/content/ContentResolver;Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/DefaultVoicemailNotifier$DefaultNameLookupQuery;)V
    .locals 0
    .param p1, "contentResolver"    # Landroid/content/ContentResolver;

    .prologue
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/DefaultVoicemailNotifier$DefaultNameLookupQuery;-><init>(Landroid/content/ContentResolver;)V

    return-void
.end method


# virtual methods
.method public query(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    .line 401
    invoke-static {p1}, Lcom/sonyericsson/android/socialphonebook/util/CommonCodeUtil;->checkNotNull(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 402
    const/4 v6, 0x0

    .line 404
    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/DefaultVoicemailNotifier$DefaultNameLookupQuery;->mContentResolver:Landroid/content/ContentResolver;

    .line 406
    sget-object v1, Landroid/provider/ContactsContract$PhoneLookup;->ENTERPRISE_CONTENT_FILTER_URI:Landroid/net/Uri;

    .line 407
    invoke-static {p1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 405
    invoke-static {v1, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 408
    sget-object v2, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/DefaultVoicemailNotifier$DefaultNameLookupQuery;->PROJECTION:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 404
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 409
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 410
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 413
    if-eqz v6, :cond_0

    .line 414
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 410
    :cond_0
    return-object v0

    .line 413
    :cond_1
    if-eqz v6, :cond_2

    .line 414
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 417
    :cond_2
    return-object v7

    .line 412
    .end local v6    # "cursor":Landroid/database/Cursor;
    :catchall_0
    move-exception v0

    .line 413
    if-eqz v6, :cond_3

    .line 414
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 412
    :cond_3
    throw v0
.end method
