.class public Lcom/sonymobile/android/vcard/VCardComposer;
.super Ljava/lang/Object;
.source "VCardComposer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/android/vcard/VCardComposer$RawContactEntitlesInfoCallback;,
        Lcom/sonymobile/android/vcard/VCardComposer$RawContactEntitlesInfo;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field public static final FAILURE_REASON_FAILED_TO_GET_DATABASE_INFO:Ljava/lang/String; = "Failed to get database information"

.field public static final FAILURE_REASON_NOT_INITIALIZED:Ljava/lang/String; = "The vCard composer object is not correctly initialized"

.field public static final FAILURE_REASON_NO_ENTRY:Ljava/lang/String; = "There\'s no exportable in the database"

.field public static final FAILURE_REASON_UNSUPPORTED_URI:Ljava/lang/String; = "The Uri vCard composer received is not supported by the composer."

.field private static final LOG_TAG:Ljava/lang/String; = "VCardComposer"

.field public static final NO_ERROR:Ljava/lang/String; = "No error"

.field private static final SHIFT_JIS:Ljava/lang/String; = "SHIFT_JIS"

.field private static final UTF_8:Ljava/lang/String; = "UTF-8"

.field private static final sContactsProjection:[Ljava/lang/String;

.field private static final sImMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mCharset:Ljava/lang/String;

.field private final mContentResolver:Landroid/content/ContentResolver;

.field private mContentUriForRawContactsEntity:Landroid/net/Uri;

.field private mCursor:Landroid/database/Cursor;

.field private mCursorSuppliedFromOutside:Z

.field private mErrorReason:Ljava/lang/String;

.field private mFirstVCardEmittedInDoCoMoCase:Z

.field private mIdColumn:I

.field private mInitDone:Z

.field private final mIsDoCoMo:Z

.field private mPhoneTranslationCallback:Lcom/sonymobile/android/vcard/VCardPhoneNumberTranslationCallback;

.field private mRawContactEntitlesInfoCallback:Lcom/sonymobile/android/vcard/VCardComposer$RawContactEntitlesInfoCallback;

.field private mTerminateCalled:Z

.field private final mVCardType:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 125
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/sonymobile/android/vcard/VCardComposer;->sImMap:Ljava/util/Map;

    .line 126
    sget-object v0, Lcom/sonymobile/android/vcard/VCardComposer;->sImMap:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "X-AIM"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    sget-object v0, Lcom/sonymobile/android/vcard/VCardComposer;->sImMap:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "X-MSN"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    sget-object v0, Lcom/sonymobile/android/vcard/VCardComposer;->sImMap:Ljava/util/Map;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "X-YAHOO"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    sget-object v0, Lcom/sonymobile/android/vcard/VCardComposer;->sImMap:Ljava/util/Map;

    const/4 v1, 0x6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "X-ICQ"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    sget-object v0, Lcom/sonymobile/android/vcard/VCardComposer;->sImMap:Ljava/util/Map;

    const/4 v1, 0x7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "X-JABBER"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    sget-object v0, Lcom/sonymobile/android/vcard/VCardComposer;->sImMap:Ljava/util/Map;

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "X-SKYPE-USERNAME"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    new-array v0, v4, [Ljava/lang/String;

    const-string/jumbo v1, "_id"

    aput-object v1, v0, v3

    sput-object v0, Lcom/sonymobile/android/vcard/VCardComposer;->sContactsProjection:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 168
    sget v0, Lcom/sonymobile/android/vcard/VCardConfig;->VCARD_TYPE_DEFAULT:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/sonymobile/android/vcard/VCardComposer;-><init>(Landroid/content/Context;ILjava/lang/String;Z)V

    .line 169
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 175
    const/4 v1, 0x1

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/sonymobile/android/vcard/VCardComposer;-><init>(Landroid/content/Context;ILjava/lang/String;Z)V

    .line 176
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILjava/lang/String;)V
    .locals 1

    .prologue
    .line 179
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/sonymobile/android/vcard/VCardComposer;-><init>(Landroid/content/Context;ILjava/lang/String;Z)V

    .line 180
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILjava/lang/String;Z)V
    .locals 6

    .prologue
    .line 200
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/sonymobile/android/vcard/VCardComposer;-><init>(Landroid/content/Context;Landroid/content/ContentResolver;ILjava/lang/String;Z)V

    .line 201
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IZ)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 187
    invoke-direct {p0, p1, p2, v0, p3}, Lcom/sonymobile/android/vcard/VCardComposer;-><init>(Landroid/content/Context;ILjava/lang/String;Z)V

    .line 188
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/ContentResolver;ILjava/lang/String;Z)V
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 209
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v2, "No error"

    .line 153
    iput-object v2, p0, Lcom/sonymobile/android/vcard/VCardComposer;->mErrorReason:Ljava/lang/String;

    .line 159
    iput-boolean v1, p0, Lcom/sonymobile/android/vcard/VCardComposer;->mTerminateCalled:Z

    .line 212
    iput p3, p0, Lcom/sonymobile/android/vcard/VCardComposer;->mVCardType:I

    .line 213
    iput-object p2, p0, Lcom/sonymobile/android/vcard/VCardComposer;->mContentResolver:Landroid/content/ContentResolver;

    .line 215
    invoke-static {p3}, Lcom/sonymobile/android/vcard/VCardConfig;->isDoCoMo(I)Z

    move-result v2

    iput-boolean v2, p0, Lcom/sonymobile/android/vcard/VCardComposer;->mIsDoCoMo:Z

    .line 217
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 218
    :goto_0
    invoke-static {p3}, Lcom/sonymobile/android/vcard/VCardConfig;->isVersion30(I)Z

    move-result v2

    if-nez v2, :cond_3

    :cond_0
    move v0, v1

    .line 221
    :goto_1
    iget-boolean v1, p0, Lcom/sonymobile/android/vcard/VCardComposer;->mIsDoCoMo:Z

    if-eqz v1, :cond_4

    :cond_1
    const-string/jumbo v0, "SHIFT_JIS"

    .line 222
    invoke-virtual {v0, p4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 228
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 231
    iput-object p4, p0, Lcom/sonymobile/android/vcard/VCardComposer;->mCharset:Ljava/lang/String;

    :goto_2
    const-string/jumbo v0, "VCardComposer"

    .line 242
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Use the charset \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sonymobile/android/vcard/VCardComposer;->mCharset:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    return-void

    :cond_2
    const-string/jumbo p4, "UTF-8"

    goto :goto_0

    :cond_3
    const-string/jumbo v2, "UTF-8"

    .line 218
    invoke-virtual {v2, p4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    .line 221
    :cond_4
    if-nez v0, :cond_1

    .line 235
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 238
    iput-object p4, p0, Lcom/sonymobile/android/vcard/VCardComposer;->mCharset:Ljava/lang/String;

    goto :goto_2

    .line 223
    :cond_5
    iput-object p4, p0, Lcom/sonymobile/android/vcard/VCardComposer;->mCharset:Ljava/lang/String;

    goto :goto_2

    :cond_6
    const-string/jumbo v0, "SHIFT_JIS"

    .line 229
    iput-object v0, p0, Lcom/sonymobile/android/vcard/VCardComposer;->mCharset:Ljava/lang/String;

    goto :goto_2

    :cond_7
    const-string/jumbo v0, "UTF-8"

    .line 236
    iput-object v0, p0, Lcom/sonymobile/android/vcard/VCardComposer;->mCharset:Ljava/lang/String;

    goto :goto_2
.end method

.method private closeCursorIfAppropriate()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 635
    iget-boolean v0, p0, Lcom/sonymobile/android/vcard/VCardComposer;->mCursorSuppliedFromOutside:Z

    if-eqz v0, :cond_1

    .line 643
    :cond_0
    :goto_0
    return-void

    .line 635
    :cond_1
    iget-object v0, p0, Lcom/sonymobile/android/vcard/VCardComposer;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 637
    :try_start_0
    iget-object v0, p0, Lcom/sonymobile/android/vcard/VCardComposer;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 641
    :goto_1
    iput-object v4, p0, Lcom/sonymobile/android/vcard/VCardComposer;->mCursor:Landroid/database/Cursor;

    goto :goto_0

    .line 640
    :catch_0
    move-exception v0

    const-string/jumbo v1, "VCardComposer"

    .line 639
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "SQLiteException on Cursor#close(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private createOneEntryInternal(JLjava/lang/reflect/Method;)Ljava/lang/String;
    .locals 9

    .prologue
    const/4 v6, 0x0

    .line 510
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 517
    :try_start_0
    iget-object v1, p0, Lcom/sonymobile/android/vcard/VCardComposer;->mContentUriForRawContactsEntity:Landroid/net/Uri;

    .line 518
    iget-object v0, p0, Lcom/sonymobile/android/vcard/VCardComposer;->mRawContactEntitlesInfoCallback:Lcom/sonymobile/android/vcard/VCardComposer$RawContactEntitlesInfoCallback;

    if-nez v0, :cond_1

    :goto_0
    const-string/jumbo v0, "contact_id=?"

    const/4 v0, 0x1

    .line 525
    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v0

    .line 526
    if-nez p3, :cond_2

    .line 542
    iget-object v0, p0, Lcom/sonymobile/android/vcard/VCardComposer;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v3, "contact_id=?"

    const/4 v2, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    invoke-static {v0}, Landroid/provider/ContactsContract$RawContacts;->newEntityIterator(Landroid/database/Cursor;)Landroid/content/EntityIterator;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v6

    move-object v1, v6

    .line 546
    :goto_1
    if-eqz v1, :cond_3

    .line 551
    :try_start_1
    invoke-interface {v1}, Landroid/content/EntityIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 556
    :cond_0
    invoke-interface {v1}, Landroid/content/EntityIterator;->hasNext()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v0

    if-nez v0, :cond_7

    .line 573
    if-nez v1, :cond_a

    .line 578
    :goto_2
    invoke-virtual {p0, v7}, Lcom/sonymobile/android/vcard/VCardComposer;->buildVCard(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 519
    :cond_1
    :try_start_2
    iget-object v0, p0, Lcom/sonymobile/android/vcard/VCardComposer;->mRawContactEntitlesInfoCallback:Lcom/sonymobile/android/vcard/VCardComposer$RawContactEntitlesInfoCallback;

    invoke-interface {v0, p1, p2}, Lcom/sonymobile/android/vcard/VCardComposer$RawContactEntitlesInfoCallback;->getRawContactEntitlesInfo(J)Lcom/sonymobile/android/vcard/VCardComposer$RawContactEntitlesInfo;

    move-result-object v0

    .line 521
    iget-object v1, v0, Lcom/sonymobile/android/vcard/VCardComposer$RawContactEntitlesInfo;->rawContactEntitlesUri:Landroid/net/Uri;

    .line 522
    iget-wide p1, v0, Lcom/sonymobile/android/vcard/VCardComposer$RawContactEntitlesInfo;->contactId:J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    const/4 v2, 0x5

    .line 529
    :try_start_3
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v5, p0, Lcom/sonymobile/android/vcard/VCardComposer;->mContentResolver:Landroid/content/ContentResolver;

    aput-object v5, v2, v3

    const/4 v3, 0x1

    aput-object v1, v2, v3

    const/4 v1, 0x2

    const-string/jumbo v3, "contact_id=?"

    aput-object v3, v2, v1

    const/4 v1, 0x3

    aput-object v4, v2, v1

    const/4 v1, 0x4

    const/4 v3, 0x0

    aput-object v3, v2, v1

    invoke-virtual {p3, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/EntityIterator;
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object v1, v0

    .line 540
    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_4
    const-string/jumbo v1, "VCardComposer"

    .line 532
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "IllegalArgumentException has been thrown: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    move-object v1, v6

    .line 540
    goto :goto_1

    :catch_1
    move-exception v0

    const-string/jumbo v1, "VCardComposer"

    .line 535
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "IllegalAccessException has been thrown: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_3

    .line 574
    :catchall_0
    move-exception v0

    move-object v1, v6

    .line 573
    :goto_4
    if-nez v1, :cond_b

    .line 574
    :goto_5
    throw v0

    .line 540
    :catch_2
    move-exception v0

    :try_start_5
    const-string/jumbo v1, "VCardComposer"

    const-string/jumbo v2, "InvocationTargetException has been thrown: "

    .line 538
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 539
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "InvocationTargetException has been thrown"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :cond_3
    :try_start_6
    const-string/jumbo v0, "VCardComposer"

    const-string/jumbo v2, "EntityIterator is null"

    .line 547
    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, ""
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 573
    if-nez v1, :cond_4

    .line 574
    :goto_6
    return-object v0

    :cond_4
    invoke-interface {v1}, Landroid/content/EntityIterator;->close()V

    goto :goto_6

    :cond_5
    :try_start_7
    const-string/jumbo v0, "VCardComposer"

    .line 552
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Data does not exist. contactId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, ""
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 573
    if-nez v1, :cond_6

    .line 574
    :goto_7
    return-object v0

    :cond_6
    invoke-interface {v1}, Landroid/content/EntityIterator;->close()V

    goto :goto_7

    .line 557
    :cond_7
    :try_start_8
    invoke-interface {v1}, Landroid/content/EntityIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Entity;

    .line 558
    invoke-virtual {v0}, Landroid/content/Entity;->getSubValues()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_8
    :goto_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Entity$NamedContentValues;

    .line 559
    iget-object v3, v0, Landroid/content/Entity$NamedContentValues;->values:Landroid/content/ContentValues;

    const-string/jumbo v0, "mimetype"

    .line 560
    invoke-virtual {v3, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 561
    if-eqz v4, :cond_8

    .line 562
    invoke-interface {v7, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 564
    if-eqz v0, :cond_9

    .line 568
    :goto_9
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_8

    .line 574
    :catchall_1
    move-exception v0

    goto :goto_4

    .line 565
    :cond_9
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 566
    invoke-interface {v7, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto :goto_9

    .line 574
    :cond_a
    invoke-interface {v1}, Landroid/content/EntityIterator;->close()V

    goto/16 :goto_2

    :cond_b
    invoke-interface {v1}, Landroid/content/EntityIterator;->close()V

    goto/16 :goto_5
.end method

.method private initInterCursorCreationPart(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 420
    iput-boolean v6, p0, Lcom/sonymobile/android/vcard/VCardComposer;->mCursorSuppliedFromOutside:Z

    .line 421
    iget-object v0, p0, Lcom/sonymobile/android/vcard/VCardComposer;->mContentResolver:Landroid/content/ContentResolver;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/android/vcard/VCardComposer;->mCursor:Landroid/database/Cursor;

    .line 423
    iget-object v0, p0, Lcom/sonymobile/android/vcard/VCardComposer;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 428
    const/4 v0, 0x1

    return v0

    :cond_0
    const-string/jumbo v0, "VCardComposer"

    const-string/jumbo v1, "Cursor became null unexpectedly"

    .line 424
    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "Failed to get database information"

    .line 425
    iput-object v0, p0, Lcom/sonymobile/android/vcard/VCardComposer;->mErrorReason:Ljava/lang/String;

    .line 426
    return v6
.end method

.method private initInterFirstPart(Landroid/net/Uri;)Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 407
    if-nez p1, :cond_0

    sget-object p1, Landroid/provider/ContactsContract$RawContactsEntity;->CONTENT_URI:Landroid/net/Uri;

    :cond_0
    iput-object p1, p0, Lcom/sonymobile/android/vcard/VCardComposer;->mContentUriForRawContactsEntity:Landroid/net/Uri;

    .line 410
    iget-boolean v0, p0, Lcom/sonymobile/android/vcard/VCardComposer;->mInitDone:Z

    if-nez v0, :cond_1

    .line 414
    const/4 v0, 0x1

    return v0

    :cond_1
    const-string/jumbo v0, "VCardComposer"

    const-string/jumbo v1, "init() is already called"

    .line 411
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 412
    return v2
.end method

.method private initInterLastPart()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 449
    iput-boolean v1, p0, Lcom/sonymobile/android/vcard/VCardComposer;->mInitDone:Z

    .line 450
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonymobile/android/vcard/VCardComposer;->mTerminateCalled:Z

    .line 451
    return v1
.end method

.method private initInterMainPart()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 432
    iget-object v1, p0, Lcom/sonymobile/android/vcard/VCardComposer;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-nez v1, :cond_1

    .line 437
    :cond_0
    invoke-direct {p0}, Lcom/sonymobile/android/vcard/VCardComposer;->closeCursorIfAppropriate()V

    .line 438
    return v0

    .line 432
    :cond_1
    iget-object v1, p0, Lcom/sonymobile/android/vcard/VCardComposer;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 440
    iget-object v1, p0, Lcom/sonymobile/android/vcard/VCardComposer;->mCursor:Landroid/database/Cursor;

    const-string/jumbo v2, "contact_id"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/sonymobile/android/vcard/VCardComposer;->mIdColumn:I

    .line 441
    iget v1, p0, Lcom/sonymobile/android/vcard/VCardComposer;->mIdColumn:I

    if-ltz v1, :cond_2

    .line 445
    :goto_0
    iget v1, p0, Lcom/sonymobile/android/vcard/VCardComposer;->mIdColumn:I

    if-gez v1, :cond_3

    :goto_1
    return v0

    .line 442
    :cond_2
    iget-object v1, p0, Lcom/sonymobile/android/vcard/VCardComposer;->mCursor:Landroid/database/Cursor;

    const-string/jumbo v2, "_id"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/sonymobile/android/vcard/VCardComposer;->mIdColumn:I

    goto :goto_0

    :cond_3
    const/4 v0, 0x1

    .line 445
    goto :goto_1
.end method


# virtual methods
.method public buildVCard(Ljava/util/Map;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Landroid/content/ContentValues;",
            ">;>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 604
    if-eqz p1, :cond_0

    .line 608
    new-instance v1, Lcom/sonymobile/android/vcard/VCardBuilder;

    iget v0, p0, Lcom/sonymobile/android/vcard/VCardComposer;->mVCardType:I

    iget-object v2, p0, Lcom/sonymobile/android/vcard/VCardComposer;->mCharset:Ljava/lang/String;

    invoke-direct {v1, v0, v2}, Lcom/sonymobile/android/vcard/VCardBuilder;-><init>(ILjava/lang/String;)V

    const-string/jumbo v0, "vnd.android.cursor.item/name"

    .line 609
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-virtual {v1, v0}, Lcom/sonymobile/android/vcard/VCardBuilder;->appendNameProperties(Ljava/util/List;)Lcom/sonymobile/android/vcard/VCardBuilder;

    move-result-object v2

    const-string/jumbo v0, "vnd.android.cursor.item/nickname"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-virtual {v2, v0}, Lcom/sonymobile/android/vcard/VCardBuilder;->appendNickNames(Ljava/util/List;)Lcom/sonymobile/android/vcard/VCardBuilder;

    move-result-object v2

    const-string/jumbo v0, "vnd.android.cursor.item/phone_v2"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iget-object v3, p0, Lcom/sonymobile/android/vcard/VCardComposer;->mPhoneTranslationCallback:Lcom/sonymobile/android/vcard/VCardPhoneNumberTranslationCallback;

    invoke-virtual {v2, v0, v3}, Lcom/sonymobile/android/vcard/VCardBuilder;->appendPhones(Ljava/util/List;Lcom/sonymobile/android/vcard/VCardPhoneNumberTranslationCallback;)Lcom/sonymobile/android/vcard/VCardBuilder;

    move-result-object v2

    const-string/jumbo v0, "vnd.android.cursor.item/email_v2"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-virtual {v2, v0}, Lcom/sonymobile/android/vcard/VCardBuilder;->appendEmails(Ljava/util/List;)Lcom/sonymobile/android/vcard/VCardBuilder;

    move-result-object v2

    const-string/jumbo v0, "vnd.android.cursor.item/postal-address_v2"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-virtual {v2, v0}, Lcom/sonymobile/android/vcard/VCardBuilder;->appendPostals(Ljava/util/List;)Lcom/sonymobile/android/vcard/VCardBuilder;

    move-result-object v2

    const-string/jumbo v0, "vnd.android.cursor.item/organization"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-virtual {v2, v0}, Lcom/sonymobile/android/vcard/VCardBuilder;->appendOrganizations(Ljava/util/List;)Lcom/sonymobile/android/vcard/VCardBuilder;

    move-result-object v2

    const-string/jumbo v0, "vnd.android.cursor.item/website"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-virtual {v2, v0}, Lcom/sonymobile/android/vcard/VCardBuilder;->appendWebsites(Ljava/util/List;)Lcom/sonymobile/android/vcard/VCardBuilder;

    .line 617
    iget v0, p0, Lcom/sonymobile/android/vcard/VCardComposer;->mVCardType:I

    const/high16 v2, 0x800000

    and-int/2addr v0, v2

    if-eqz v0, :cond_1

    :goto_0
    const-string/jumbo v0, "vnd.android.cursor.item/note"

    .line 620
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-virtual {v1, v0}, Lcom/sonymobile/android/vcard/VCardBuilder;->appendNotes(Ljava/util/List;)Lcom/sonymobile/android/vcard/VCardBuilder;

    move-result-object v2

    const-string/jumbo v0, "vnd.android.cursor.item/contact_event"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-virtual {v2, v0}, Lcom/sonymobile/android/vcard/VCardBuilder;->appendEvents(Ljava/util/List;)Lcom/sonymobile/android/vcard/VCardBuilder;

    move-result-object v2

    const-string/jumbo v0, "vnd.android.cursor.item/im"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-virtual {v2, v0}, Lcom/sonymobile/android/vcard/VCardBuilder;->appendIms(Ljava/util/List;)Lcom/sonymobile/android/vcard/VCardBuilder;

    move-result-object v2

    const-string/jumbo v0, "vnd.android.cursor.item/sip_address"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-virtual {v2, v0}, Lcom/sonymobile/android/vcard/VCardBuilder;->appendSipAddresses(Ljava/util/List;)Lcom/sonymobile/android/vcard/VCardBuilder;

    move-result-object v2

    const-string/jumbo v0, "vnd.android.cursor.item/relation"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-virtual {v2, v0}, Lcom/sonymobile/android/vcard/VCardBuilder;->appendRelation(Ljava/util/List;)Lcom/sonymobile/android/vcard/VCardBuilder;

    .line 625
    invoke-virtual {v1}, Lcom/sonymobile/android/vcard/VCardBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string/jumbo v0, "VCardComposer"

    const-string/jumbo v1, "The given map is null. Ignore and return empty String"

    .line 605
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, ""

    .line 606
    return-object v0

    :cond_1
    const-string/jumbo v0, "vnd.android.cursor.item/photo"

    .line 618
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-virtual {v1, v0}, Lcom/sonymobile/android/vcard/VCardBuilder;->appendPhotos(Ljava/util/List;)Lcom/sonymobile/android/vcard/VCardBuilder;

    goto :goto_0
.end method

.method public createOneEntry()Ljava/lang/String;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 458
    invoke-virtual {p0, v0}, Lcom/sonymobile/android/vcard/VCardComposer;->createOneEntry(Ljava/lang/reflect/Method;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public createOneEntry(Ljava/lang/reflect/Method;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 465
    iget-boolean v0, p0, Lcom/sonymobile/android/vcard/VCardComposer;->mIsDoCoMo:Z

    if-nez v0, :cond_1

    .line 474
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/sonymobile/android/vcard/VCardComposer;->mCursor:Landroid/database/Cursor;

    iget v1, p0, Lcom/sonymobile/android/vcard/VCardComposer;->mIdColumn:I

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p1}, Lcom/sonymobile/android/vcard/VCardComposer;->createOneEntryInternal(JLjava/lang/reflect/Method;)Ljava/lang/String;

    move-result-object v0

    .line 476
    iget-object v1, p0, Lcom/sonymobile/android/vcard/VCardComposer;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 479
    :goto_1
    return-object v0

    .line 465
    :cond_1
    iget-boolean v0, p0, Lcom/sonymobile/android/vcard/VCardComposer;->mFirstVCardEmittedInDoCoMoCase:Z

    if-nez v0, :cond_0

    .line 466
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonymobile/android/vcard/VCardComposer;->mFirstVCardEmittedInDoCoMoCase:Z

    goto :goto_0

    :cond_2
    const-string/jumbo v1, "VCardComposer"

    const-string/jumbo v2, "Cursor#moveToNext() returned false"

    .line 477
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method protected finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 648
    :try_start_0
    iget-boolean v0, p0, Lcom/sonymobile/android/vcard/VCardComposer;->mTerminateCalled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 652
    :goto_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 654
    return-void

    :cond_0
    :try_start_1
    const-string/jumbo v0, "VCardComposer"

    const-string/jumbo v1, "finalized() is called before terminate() being called"

    .line 649
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 653
    :catchall_0
    move-exception v0

    .line 652
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public getCount()I
    .locals 2

    .prologue
    .line 662
    iget-object v0, p0, Lcom/sonymobile/android/vcard/VCardComposer;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 666
    iget-object v0, p0, Lcom/sonymobile/android/vcard/VCardComposer;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    return v0

    :cond_0
    const-string/jumbo v0, "VCardComposer"

    const-string/jumbo v1, "This object is not ready yet."

    .line 663
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 664
    return v0
.end method

.method public getErrorReason()Ljava/lang/String;
    .locals 1

    .prologue
    .line 685
    iget-object v0, p0, Lcom/sonymobile/android/vcard/VCardComposer;->mErrorReason:Ljava/lang/String;

    return-object v0
.end method

.method public init()Z
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 255
    invoke-virtual {p0, v0, v0}, Lcom/sonymobile/android/vcard/VCardComposer;->init(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public init(Landroid/database/Cursor;)Z
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 381
    invoke-virtual {p0, p1, v0}, Lcom/sonymobile/android/vcard/VCardComposer;->initWithCallback(Landroid/database/Cursor;Lcom/sonymobile/android/vcard/VCardComposer$RawContactEntitlesInfoCallback;)Z

    move-result v0

    return v0
.end method

.method public init(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7

    .prologue
    .line 294
    sget-object v2, Lcom/sonymobile/android/vcard/VCardComposer;->sContactsProjection:[Ljava/lang/String;

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v6}, Lcom/sonymobile/android/vcard/VCardComposer;->init(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)Z

    move-result v0

    return v0
.end method

.method public init(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)Z
    .locals 7

    .prologue
    .line 313
    sget-object v2, Lcom/sonymobile/android/vcard/VCardComposer;->sContactsProjection:[Ljava/lang/String;

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/sonymobile/android/vcard/VCardComposer;->init(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)Z

    move-result v0

    return v0
.end method

.method public init(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    const-string/jumbo v0, "com.android.contacts"

    .line 357
    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 363
    invoke-direct {p0, p6}, Lcom/sonymobile/android/vcard/VCardComposer;->initInterFirstPart(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 366
    invoke-direct/range {p0 .. p5}, Lcom/sonymobile/android/vcard/VCardComposer;->initInterCursorCreationPart(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 370
    invoke-direct {p0}, Lcom/sonymobile/android/vcard/VCardComposer;->initInterMainPart()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 373
    invoke-direct {p0}, Lcom/sonymobile/android/vcard/VCardComposer;->initInterLastPart()Z

    move-result v0

    return v0

    :cond_0
    const-string/jumbo v0, "The Uri vCard composer received is not supported by the composer."

    .line 359
    iput-object v0, p0, Lcom/sonymobile/android/vcard/VCardComposer;->mErrorReason:Ljava/lang/String;

    .line 360
    return v2

    .line 364
    :cond_1
    return v2

    .line 368
    :cond_2
    return v2

    .line 371
    :cond_3
    return v2
.end method

.method public init(Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 7

    .prologue
    const/4 v5, 0x0

    .line 285
    sget-object v1, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/sonymobile/android/vcard/VCardComposer;->sContactsProjection:[Ljava/lang/String;

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-object v6, v5

    invoke-virtual/range {v0 .. v6}, Lcom/sonymobile/android/vcard/VCardComposer;->init(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)Z

    move-result v0

    return v0
.end method

.method public initWithCallback(Landroid/database/Cursor;Lcom/sonymobile/android/vcard/VCardComposer$RawContactEntitlesInfoCallback;)Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 393
    invoke-direct {p0, v0}, Lcom/sonymobile/android/vcard/VCardComposer;->initInterFirstPart(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 396
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonymobile/android/vcard/VCardComposer;->mCursorSuppliedFromOutside:Z

    .line 397
    iput-object p1, p0, Lcom/sonymobile/android/vcard/VCardComposer;->mCursor:Landroid/database/Cursor;

    .line 398
    iput-object p2, p0, Lcom/sonymobile/android/vcard/VCardComposer;->mRawContactEntitlesInfoCallback:Lcom/sonymobile/android/vcard/VCardComposer$RawContactEntitlesInfoCallback;

    .line 399
    invoke-direct {p0}, Lcom/sonymobile/android/vcard/VCardComposer;->initInterMainPart()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 402
    invoke-direct {p0}, Lcom/sonymobile/android/vcard/VCardComposer;->initInterLastPart()Z

    move-result v0

    return v0

    .line 394
    :cond_0
    return v1

    .line 400
    :cond_1
    return v1
.end method

.method public initWithRawContactsEntityUri(Landroid/net/Uri;)Z
    .locals 7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 276
    sget-object v1, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/sonymobile/android/vcard/VCardComposer;->sContactsProjection:[Ljava/lang/String;

    move-object v0, p0

    move-object v4, v3

    move-object v5, v3

    move-object v6, p1

    invoke-virtual/range {v0 .. v6}, Lcom/sonymobile/android/vcard/VCardComposer;->init(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)Z

    move-result v0

    return v0
.end method

.method public isAfterLast()Z
    .locals 2

    .prologue
    .line 674
    iget-object v0, p0, Lcom/sonymobile/android/vcard/VCardComposer;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 678
    iget-object v0, p0, Lcom/sonymobile/android/vcard/VCardComposer;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    return v0

    :cond_0
    const-string/jumbo v0, "VCardComposer"

    const-string/jumbo v1, "This object is not ready yet."

    .line 675
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 676
    const/4 v0, 0x0

    return v0
.end method

.method public setPhoneNumberTranslationCallback(Lcom/sonymobile/android/vcard/VCardPhoneNumberTranslationCallback;)V
    .locals 0

    .prologue
    .line 596
    iput-object p1, p0, Lcom/sonymobile/android/vcard/VCardComposer;->mPhoneTranslationCallback:Lcom/sonymobile/android/vcard/VCardPhoneNumberTranslationCallback;

    .line 597
    return-void
.end method

.method public terminate()V
    .locals 1

    .prologue
    .line 630
    invoke-direct {p0}, Lcom/sonymobile/android/vcard/VCardComposer;->closeCursorIfAppropriate()V

    .line 631
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonymobile/android/vcard/VCardComposer;->mTerminateCalled:Z

    .line 632
    return-void
.end method
