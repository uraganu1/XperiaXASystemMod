.class public Lcom/sonyericsson/android/socialphonebook/calllog/ContactInfoCache;
.super Ljava/lang/Object;
.source "ContactInfoCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/socialphonebook/calllog/ContactInfoCache$CallerIdThread;,
        Lcom/sonyericsson/android/socialphonebook/calllog/ContactInfoCache$CallerInfo;,
        Lcom/sonyericsson/android/socialphonebook/calllog/ContactInfoCache$ContactInfo;
    }
.end annotation


# static fields
.field private static final LABEL_COLUMN_INDEX:I = 0x3

.field private static final MATCHED_NUMBER_COLUMN_INDEX:I = 0x4

.field private static final NAME_COLUMN_INDEX:I = 0x1

.field private static final PERSON_ID_COLUMN_INDEX:I = 0x0

.field private static final PHONES_PROJECTION:[Ljava/lang/String;

.field private static final PHONE_TYPE_COLUMN_INDEX:I = 0x2

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mActivityIsBackground:Z

.field private mCallLogContentHelper:Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper;

.field private mCallerIdThread:Lcom/sonyericsson/android/socialphonebook/calllog/ContactInfoCache$CallerIdThread;

.field private mContactInfo:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/sonyericsson/android/socialphonebook/calllog/ContactInfoCache$ContactInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private final mIsQueryDataEachTime:Z

.field private mRequests:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/sonyericsson/android/socialphonebook/calllog/ContactInfoCache$CallerInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/sonyericsson/android/socialphonebook/calllog/ContactInfoCache;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1(Lcom/sonyericsson/android/socialphonebook/calllog/ContactInfoCache;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/ContactInfoCache;->mActivityIsBackground:Z

    return v0
.end method

.method static synthetic -get2(Lcom/sonyericsson/android/socialphonebook/calllog/ContactInfoCache;)Ljava/util/HashMap;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/ContactInfoCache;->mContactInfo:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic -get3(Lcom/sonyericsson/android/socialphonebook/calllog/ContactInfoCache;)Ljava/util/LinkedList;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/ContactInfoCache;->mRequests:Ljava/util/LinkedList;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/sonyericsson/android/socialphonebook/calllog/ContactInfoCache;Lcom/sonyericsson/android/socialphonebook/calllog/ContactInfoCache$CallerInfo;)V
    .locals 0
    .param p1, "callerInfo"    # Lcom/sonyericsson/android/socialphonebook/calllog/ContactInfoCache$CallerInfo;

    .prologue
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/socialphonebook/calllog/ContactInfoCache;->queryContactInfo(Lcom/sonyericsson/android/socialphonebook/calllog/ContactInfoCache$CallerInfo;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 53
    const-class v0, Lcom/sonyericsson/android/socialphonebook/calllog/ContactInfoCache;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/android/socialphonebook/calllog/ContactInfoCache;->TAG:Ljava/lang/String;

    .line 56
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    .line 57
    const-string/jumbo v1, "_id"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string/jumbo v1, "display_name"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string/jumbo v1, "type"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string/jumbo v1, "label"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 58
    const-string/jumbo v1, "number"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 56
    sput-object v0, Lcom/sonyericsson/android/socialphonebook/calllog/ContactInfoCache;->PHONES_PROJECTION:[Ljava/lang/String;

    .line 51
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "helper"    # Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper;

    .prologue
    .line 101
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/sonyericsson/android/socialphonebook/calllog/ContactInfoCache;-><init>(Landroid/content/Context;Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper;Z)V

    .line 100
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper;Z)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "helper"    # Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper;
    .param p3, "isQueryData"    # Z

    .prologue
    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/ContactInfoCache;->mActivityIsBackground:Z

    .line 95
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/ContactInfoCache;->mHandler:Landroid/os/Handler;

    .line 105
    iput-boolean p3, p0, Lcom/sonyericsson/android/socialphonebook/calllog/ContactInfoCache;->mIsQueryDataEachTime:Z

    .line 106
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/ContactInfoCache;->mContext:Landroid/content/Context;

    .line 107
    iput-object p2, p0, Lcom/sonyericsson/android/socialphonebook/calllog/ContactInfoCache;->mCallLogContentHelper:Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper;

    .line 109
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/ContactInfoCache;->mContactInfo:Ljava/util/HashMap;

    .line 110
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/ContactInfoCache;->mRequests:Ljava/util/LinkedList;

    .line 104
    return-void
.end method

.method private enqueueQueryRequest(Lcom/sonyericsson/android/socialphonebook/calllog/ContactInfoCache$CallerInfo;Z)V
    .locals 2
    .param p1, "request"    # Lcom/sonyericsson/android/socialphonebook/calllog/ContactInfoCache$CallerInfo;
    .param p2, "immediate"    # Z

    .prologue
    .line 280
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/calllog/ContactInfoCache;->mRequests:Ljava/util/LinkedList;

    monitor-enter v1

    .line 281
    :try_start_0
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/ContactInfoCache;->mRequests:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 282
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/ContactInfoCache;->mRequests:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->notify()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 285
    if-eqz p2, :cond_0

    .line 286
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/calllog/ContactInfoCache;->startRequestProcessing()V

    .line 279
    :cond_0
    return-void

    .line 280
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private getContactInfo(Lcom/sonyericsson/android/socialphonebook/calllog/ContactInfoCache$CallerInfo;)Lcom/sonyericsson/android/socialphonebook/calllog/ContactInfoCache$ContactInfo;
    .locals 4
    .param p1, "src"    # Lcom/sonyericsson/android/socialphonebook/calllog/ContactInfoCache$CallerInfo;

    .prologue
    const/4 v3, 0x0

    .line 251
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/calllog/ContactInfoCache;->mContactInfo:Ljava/util/HashMap;

    iget-object v2, p1, Lcom/sonyericsson/android/socialphonebook/calllog/ContactInfoCache$CallerInfo;->number:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/socialphonebook/calllog/ContactInfoCache$ContactInfo;

    .line 253
    .local v0, "info":Lcom/sonyericsson/android/socialphonebook/calllog/ContactInfoCache$ContactInfo;
    if-nez v0, :cond_1

    .line 255
    new-instance v0, Lcom/sonyericsson/android/socialphonebook/calllog/ContactInfoCache$ContactInfo;

    .end local v0    # "info":Lcom/sonyericsson/android/socialphonebook/calllog/ContactInfoCache$ContactInfo;
    invoke-direct {v0}, Lcom/sonyericsson/android/socialphonebook/calllog/ContactInfoCache$ContactInfo;-><init>()V

    .line 256
    .restart local v0    # "info":Lcom/sonyericsson/android/socialphonebook/calllog/ContactInfoCache$ContactInfo;
    iget v1, p1, Lcom/sonyericsson/android/socialphonebook/calllog/ContactInfoCache$CallerInfo;->numberType:I

    iput v1, v0, Lcom/sonyericsson/android/socialphonebook/calllog/ContactInfoCache$ContactInfo;->type:I

    .line 257
    iget-object v1, p1, Lcom/sonyericsson/android/socialphonebook/calllog/ContactInfoCache$CallerInfo;->name:Ljava/lang/String;

    iput-object v1, v0, Lcom/sonyericsson/android/socialphonebook/calllog/ContactInfoCache$ContactInfo;->name:Ljava/lang/String;

    .line 258
    iget-object v1, p1, Lcom/sonyericsson/android/socialphonebook/calllog/ContactInfoCache$CallerInfo;->numberLabel:Ljava/lang/String;

    iput-object v1, v0, Lcom/sonyericsson/android/socialphonebook/calllog/ContactInfoCache$ContactInfo;->label:Ljava/lang/String;

    .line 259
    invoke-static {v0, v3}, Lcom/sonyericsson/android/socialphonebook/calllog/ContactInfoCache$ContactInfo;->-set1(Lcom/sonyericsson/android/socialphonebook/calllog/ContactInfoCache$ContactInfo;Z)Z

    .line 260
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/calllog/ContactInfoCache;->mContactInfo:Ljava/util/HashMap;

    iget-object v2, p1, Lcom/sonyericsson/android/socialphonebook/calllog/ContactInfoCache$CallerInfo;->number:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 261
    const/4 v1, 0x1

    invoke-direct {p0, p1, v1}, Lcom/sonyericsson/android/socialphonebook/calllog/ContactInfoCache;->enqueueQueryRequest(Lcom/sonyericsson/android/socialphonebook/calllog/ContactInfoCache$CallerInfo;Z)V

    .line 276
    :cond_0
    :goto_0
    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/calllog/ContactInfoCache$ContactInfo;->-get1(Lcom/sonyericsson/android/socialphonebook/calllog/ContactInfoCache$ContactInfo;)Z

    move-result v1

    if-eqz v1, :cond_4

    .end local v0    # "info":Lcom/sonyericsson/android/socialphonebook/calllog/ContactInfoCache$ContactInfo;
    :goto_1
    return-object v0

    .line 263
    .restart local v0    # "info":Lcom/sonyericsson/android/socialphonebook/calllog/ContactInfoCache$ContactInfo;
    :cond_1
    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/calllog/ContactInfoCache$ContactInfo;->-get1(Lcom/sonyericsson/android/socialphonebook/calllog/ContactInfoCache$ContactInfo;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 266
    iget-object v1, v0, Lcom/sonyericsson/android/socialphonebook/calllog/ContactInfoCache$ContactInfo;->name:Ljava/lang/String;

    iget-object v2, p1, Lcom/sonyericsson/android/socialphonebook/calllog/ContactInfoCache$CallerInfo;->name:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget v1, v0, Lcom/sonyericsson/android/socialphonebook/calllog/ContactInfoCache$ContactInfo;->type:I

    iget v2, p1, Lcom/sonyericsson/android/socialphonebook/calllog/ContactInfoCache$CallerInfo;->numberType:I

    if-eq v1, v2, :cond_3

    .line 268
    :cond_2
    invoke-direct {p0, p1, v3}, Lcom/sonyericsson/android/socialphonebook/calllog/ContactInfoCache;->enqueueQueryRequest(Lcom/sonyericsson/android/socialphonebook/calllog/ContactInfoCache$CallerInfo;Z)V

    .line 271
    :goto_2
    iget-object v1, v0, Lcom/sonyericsson/android/socialphonebook/calllog/ContactInfoCache$ContactInfo;->formattedNumber:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 272
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/calllog/ContactInfoCache;->mContext:Landroid/content/Context;

    iget-object v2, v0, Lcom/sonyericsson/android/socialphonebook/calllog/ContactInfoCache$ContactInfo;->number:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/sonyericsson/android/socialphonebook/util/PhoneNumberHelper;->formatPhoneNumber(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sonyericsson/android/socialphonebook/calllog/ContactInfoCache$ContactInfo;->formattedNumber:Ljava/lang/String;

    goto :goto_0

    .line 267
    :cond_3
    iget-object v1, v0, Lcom/sonyericsson/android/socialphonebook/calllog/ContactInfoCache$ContactInfo;->label:Ljava/lang/String;

    iget-object v2, p1, Lcom/sonyericsson/android/socialphonebook/calllog/ContactInfoCache$CallerInfo;->numberLabel:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_2

    .line 276
    :cond_4
    new-instance v0, Lcom/sonyericsson/android/socialphonebook/calllog/ContactInfoCache$ContactInfo;

    .end local v0    # "info":Lcom/sonyericsson/android/socialphonebook/calllog/ContactInfoCache$ContactInfo;
    invoke-direct {v0}, Lcom/sonyericsson/android/socialphonebook/calllog/ContactInfoCache$ContactInfo;-><init>()V

    goto :goto_1
.end method

.method private queryContactInfo(Lcom/sonyericsson/android/socialphonebook/calllog/ContactInfoCache$CallerInfo;)V
    .locals 24
    .param p1, "callerInfo"    # Lcom/sonyericsson/android/socialphonebook/calllog/ContactInfoCache$CallerInfo;

    .prologue
    .line 291
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sonyericsson/android/socialphonebook/calllog/ContactInfoCache;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 294
    .local v4, "resolver":Landroid/content/ContentResolver;
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sonyericsson/android/socialphonebook/calllog/ContactInfoCache;->mContactInfo:Ljava/util/HashMap;

    move-object/from16 v0, p1

    iget-object v9, v0, Lcom/sonyericsson/android/socialphonebook/calllog/ContactInfoCache$CallerInfo;->number:Ljava/lang/String;

    invoke-virtual {v6, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/sonyericsson/android/socialphonebook/calllog/ContactInfoCache$ContactInfo;

    .line 296
    .local v21, "info":Lcom/sonyericsson/android/socialphonebook/calllog/ContactInfoCache$ContactInfo;
    if-eqz v21, :cond_2

    invoke-static/range {v21 .. v21}, Lcom/sonyericsson/android/socialphonebook/calllog/ContactInfoCache$ContactInfo;->-get1(Lcom/sonyericsson/android/socialphonebook/calllog/ContactInfoCache$ContactInfo;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 452
    :cond_0
    :goto_0
    if-eqz v21, :cond_1

    .line 453
    const/4 v6, 0x1

    move-object/from16 v0, v21

    invoke-static {v0, v6}, Lcom/sonyericsson/android/socialphonebook/calllog/ContactInfoCache$ContactInfo;->-set1(Lcom/sonyericsson/android/socialphonebook/calllog/ContactInfoCache$ContactInfo;Z)Z

    .line 454
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/android/socialphonebook/calllog/ContactInfoCache;->updateCallLog(Lcom/sonyericsson/android/socialphonebook/calllog/ContactInfoCache$CallerInfo;Lcom/sonyericsson/android/socialphonebook/calllog/ContactInfoCache$ContactInfo;)V

    .line 290
    :cond_1
    return-void

    .line 297
    :cond_2
    move-object/from16 v0, p1

    iget v6, v0, Lcom/sonyericsson/android/socialphonebook/calllog/ContactInfoCache$CallerInfo;->numberPresentation:I

    const/4 v9, 0x1

    if-ne v6, v9, :cond_0

    .line 298
    new-instance v21, Lcom/sonyericsson/android/socialphonebook/calllog/ContactInfoCache$ContactInfo;

    .end local v21    # "info":Lcom/sonyericsson/android/socialphonebook/calllog/ContactInfoCache$ContactInfo;
    invoke-direct/range {v21 .. v21}, Lcom/sonyericsson/android/socialphonebook/calllog/ContactInfoCache$ContactInfo;-><init>()V

    .line 299
    .restart local v21    # "info":Lcom/sonyericsson/android/socialphonebook/calllog/ContactInfoCache$ContactInfo;
    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/sonyericsson/android/socialphonebook/calllog/ContactInfoCache$CallerInfo;->protocol:Ljava/lang/String;

    move-object/from16 v0, v21

    iput-object v6, v0, Lcom/sonyericsson/android/socialphonebook/calllog/ContactInfoCache$ContactInfo;->protocol:Ljava/lang/String;

    .line 302
    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/sonyericsson/android/socialphonebook/calllog/ContactInfoCache$CallerInfo;->number:Ljava/lang/String;

    invoke-static {v6}, Lcom/sonyericsson/android/socialphonebook/util/StringUtil;->isUriNumber(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 311
    sget-object v5, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    .line 322
    .local v5, "contactRef":Landroid/net/Uri;
    const-string/jumbo v7, "UPPER(data1)=? AND mimetype=\'vnd.android.cursor.item/sip_address\'"

    .line 324
    .local v7, "selection":Ljava/lang/String;
    const/4 v6, 0x1

    new-array v8, v6, [Ljava/lang/String;

    .line 325
    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/sonyericsson/android/socialphonebook/calllog/ContactInfoCache$CallerInfo;->number:Ljava/lang/String;

    sget-object v9, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v6, v9}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v6

    const/4 v9, 0x0

    aput-object v6, v8, v9

    .line 328
    .local v8, "selectionArgs":[Ljava/lang/String;
    const/16 v18, 0x0

    .line 331
    .local v18, "cursor":Landroid/database/Cursor;
    const/4 v6, 0x0

    const/4 v9, 0x0

    :try_start_0
    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v18

    .line 332
    .local v18, "cursor":Landroid/database/Cursor;
    if-eqz v18, :cond_3

    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 341
    const-string/jumbo v6, "contact_id"

    move-object/from16 v0, v18

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    move-object/from16 v0, v18

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    move-object/from16 v0, v21

    iput-wide v14, v0, Lcom/sonyericsson/android/socialphonebook/calllog/ContactInfoCache$ContactInfo;->personId:J

    .line 342
    const-string/jumbo v6, "_id"

    move-object/from16 v0, v18

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    move-object/from16 v0, v18

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    move-object/from16 v0, v21

    iput-wide v14, v0, Lcom/sonyericsson/android/socialphonebook/calllog/ContactInfoCache$ContactInfo;->dataId:J

    .line 343
    const-string/jumbo v6, "display_name"

    move-object/from16 v0, v18

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    move-object/from16 v0, v18

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v21

    iput-object v6, v0, Lcom/sonyericsson/android/socialphonebook/calllog/ContactInfoCache$ContactInfo;->name:Ljava/lang/String;

    .line 346
    const/4 v6, 0x3

    move-object/from16 v0, v21

    iput v6, v0, Lcom/sonyericsson/android/socialphonebook/calllog/ContactInfoCache$ContactInfo;->type:I

    .line 347
    const/4 v6, 0x0

    move-object/from16 v0, v21

    iput-object v6, v0, Lcom/sonyericsson/android/socialphonebook/calllog/ContactInfoCache$ContactInfo;->label:Ljava/lang/String;

    .line 352
    const-string/jumbo v6, "data1"

    move-object/from16 v0, v18

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    move-object/from16 v0, v18

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v21

    iput-object v6, v0, Lcom/sonyericsson/android/socialphonebook/calllog/ContactInfoCache$ContactInfo;->number:Ljava/lang/String;

    .line 353
    const/4 v6, 0x1

    move-object/from16 v0, v21

    iput-boolean v6, v0, Lcom/sonyericsson/android/socialphonebook/calllog/ContactInfoCache$ContactInfo;->hasContactData:Z

    .line 357
    const/4 v6, 0x0

    move-object/from16 v0, v21

    iput-object v6, v0, Lcom/sonyericsson/android/socialphonebook/calllog/ContactInfoCache$ContactInfo;->formattedNumber:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 362
    :cond_3
    if-eqz v18, :cond_4

    .line 363
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->close()V

    .line 449
    .end local v5    # "contactRef":Landroid/net/Uri;
    .end local v7    # "selection":Ljava/lang/String;
    .end local v8    # "selectionArgs":[Ljava/lang/String;
    .end local v18    # "cursor":Landroid/database/Cursor;
    :cond_4
    :goto_1
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sonyericsson/android/socialphonebook/calllog/ContactInfoCache;->mContactInfo:Ljava/util/HashMap;

    move-object/from16 v0, p1

    iget-object v9, v0, Lcom/sonyericsson/android/socialphonebook/calllog/ContactInfoCache$CallerInfo;->number:Ljava/lang/String;

    move-object/from16 v0, v21

    invoke-virtual {v6, v9, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 359
    .restart local v5    # "contactRef":Landroid/net/Uri;
    .restart local v7    # "selection":Ljava/lang/String;
    .restart local v8    # "selectionArgs":[Ljava/lang/String;
    :catch_0
    move-exception v20

    .line 360
    .local v20, "e":Ljava/lang/Exception;
    :try_start_1
    sget-object v6, Lcom/sonyericsson/android/socialphonebook/calllog/ContactInfoCache;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "failed to get phone number "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, v20

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 362
    if-eqz v18, :cond_4

    .line 363
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 361
    .end local v20    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    .line 362
    if-eqz v18, :cond_5

    .line 363
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->close()V

    .line 361
    :cond_5
    throw v6

    .line 368
    .end local v5    # "contactRef":Landroid/net/Uri;
    .end local v7    # "selection":Ljava/lang/String;
    .end local v8    # "selectionArgs":[Ljava/lang/String;
    :cond_6
    const/16 v18, 0x0

    .line 369
    .local v18, "cursor":Landroid/database/Cursor;
    sget-object v6, Landroid/provider/ContactsContract$PhoneLookup;->ENTERPRISE_CONTENT_FILTER_URI:Landroid/net/Uri;

    .line 370
    move-object/from16 v0, p1

    iget-object v9, v0, Lcom/sonyericsson/android/socialphonebook/calllog/ContactInfoCache$CallerInfo;->number:Ljava/lang/String;

    invoke-static {v9}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 369
    invoke-static {v6, v9}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    .line 372
    .local v10, "uri":Landroid/net/Uri;
    :try_start_2
    sget-object v11, Lcom/sonyericsson/android/socialphonebook/calllog/ContactInfoCache;->PHONES_PROJECTION:[Ljava/lang/String;

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object v9, v4

    invoke-virtual/range {v9 .. v14}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v18

    .line 373
    .local v18, "cursor":Landroid/database/Cursor;
    if-eqz v18, :cond_b

    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v6

    if-eqz v6, :cond_b

    .line 374
    const/4 v6, 0x0

    move-object/from16 v0, v18

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    move-object/from16 v0, v21

    iput-wide v14, v0, Lcom/sonyericsson/android/socialphonebook/calllog/ContactInfoCache$ContactInfo;->personId:J

    .line 375
    const/4 v6, 0x1

    move-object/from16 v0, v18

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v21

    iput-object v6, v0, Lcom/sonyericsson/android/socialphonebook/calllog/ContactInfoCache$ContactInfo;->name:Ljava/lang/String;

    .line 376
    const/4 v6, 0x2

    move-object/from16 v0, v18

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    move-object/from16 v0, v21

    iput v6, v0, Lcom/sonyericsson/android/socialphonebook/calllog/ContactInfoCache$ContactInfo;->type:I

    .line 377
    const/4 v6, 0x3

    move-object/from16 v0, v18

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v21

    iput-object v6, v0, Lcom/sonyericsson/android/socialphonebook/calllog/ContactInfoCache$ContactInfo;->label:Ljava/lang/String;

    .line 378
    const/4 v6, 0x4

    move-object/from16 v0, v18

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v21

    iput-object v6, v0, Lcom/sonyericsson/android/socialphonebook/calllog/ContactInfoCache$ContactInfo;->number:Ljava/lang/String;

    .line 379
    const/4 v6, 0x1

    move-object/from16 v0, v21

    iput-boolean v6, v0, Lcom/sonyericsson/android/socialphonebook/calllog/ContactInfoCache$ContactInfo;->hasContactData:Z

    .line 382
    const/4 v6, 0x0

    move-object/from16 v0, v21

    iput-object v6, v0, Lcom/sonyericsson/android/socialphonebook/calllog/ContactInfoCache$ContactInfo;->formattedNumber:Ljava/lang/String;

    .line 384
    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/sonyericsson/android/socialphonebook/calllog/ContactInfoCache;->mIsQueryDataEachTime:Z

    if-eqz v6, :cond_8

    .line 385
    const-string/jumbo v7, "data1=? AND mimetype=\'vnd.android.cursor.item/phone_v2\'"

    .line 387
    .restart local v7    # "selection":Ljava/lang/String;
    const/4 v6, 0x1

    new-array v8, v6, [Ljava/lang/String;

    .line 388
    move-object/from16 v0, v21

    iget-object v6, v0, Lcom/sonyericsson/android/socialphonebook/calllog/ContactInfoCache$ContactInfo;->number:Ljava/lang/String;

    const/4 v9, 0x0

    aput-object v6, v8, v9
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 390
    .restart local v8    # "selectionArgs":[Ljava/lang/String;
    const/16 v19, 0x0

    .line 393
    .local v19, "dataCursor":Landroid/database/Cursor;
    :try_start_3
    sget-object v12, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    const/4 v6, 0x1

    new-array v13, v6, [Ljava/lang/String;

    .line 394
    const-string/jumbo v6, "_id"

    const/4 v9, 0x0

    aput-object v6, v13, v9

    .line 395
    const/16 v16, 0x0

    move-object v11, v4

    move-object v14, v7

    move-object v15, v8

    .line 393
    invoke-virtual/range {v11 .. v16}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v19

    .line 396
    .local v19, "dataCursor":Landroid/database/Cursor;
    if-eqz v19, :cond_7

    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v6

    if-eqz v6, :cond_7

    .line 398
    const-string/jumbo v6, "_id"

    .line 397
    move-object/from16 v0, v19

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    move-object/from16 v0, v19

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    move-object/from16 v0, v21

    iput-wide v14, v0, Lcom/sonyericsson/android/socialphonebook/calllog/ContactInfoCache$ContactInfo;->dataId:J
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 404
    :cond_7
    if-eqz v19, :cond_8

    .line 405
    :try_start_4
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 443
    .end local v7    # "selection":Ljava/lang/String;
    .end local v8    # "selectionArgs":[Ljava/lang/String;
    .end local v19    # "dataCursor":Landroid/database/Cursor;
    :cond_8
    :goto_2
    if-eqz v18, :cond_4

    .line 444
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->close()V

    goto/16 :goto_1

    .line 400
    .restart local v7    # "selection":Ljava/lang/String;
    .restart local v8    # "selectionArgs":[Ljava/lang/String;
    :catch_1
    move-exception v20

    .line 401
    .restart local v20    # "e":Ljava/lang/Exception;
    const/4 v6, 0x0

    :try_start_5
    move-object/from16 v0, v21

    iput-boolean v6, v0, Lcom/sonyericsson/android/socialphonebook/calllog/ContactInfoCache$ContactInfo;->hasContactData:Z

    .line 402
    sget-object v6, Lcom/sonyericsson/android/socialphonebook/calllog/ContactInfoCache;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "failed to query data table "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, v20

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 404
    if-eqz v19, :cond_8

    .line 405
    :try_start_6
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto :goto_2

    .line 440
    .end local v7    # "selection":Ljava/lang/String;
    .end local v8    # "selectionArgs":[Ljava/lang/String;
    .end local v18    # "cursor":Landroid/database/Cursor;
    .end local v20    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v20

    .line 441
    .restart local v20    # "e":Ljava/lang/Exception;
    :try_start_7
    sget-object v6, Lcom/sonyericsson/android/socialphonebook/calllog/ContactInfoCache;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "failed to get phone number "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, v20

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 443
    if-eqz v18, :cond_4

    .line 444
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->close()V

    goto/16 :goto_1

    .line 403
    .end local v20    # "e":Ljava/lang/Exception;
    .restart local v7    # "selection":Ljava/lang/String;
    .restart local v8    # "selectionArgs":[Ljava/lang/String;
    .restart local v18    # "cursor":Landroid/database/Cursor;
    :catchall_1
    move-exception v6

    .line 404
    if-eqz v19, :cond_9

    .line 405
    :try_start_8
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V

    .line 403
    :cond_9
    throw v6
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 442
    .end local v7    # "selection":Ljava/lang/String;
    .end local v8    # "selectionArgs":[Ljava/lang/String;
    .end local v18    # "cursor":Landroid/database/Cursor;
    :catchall_2
    move-exception v6

    .line 443
    if-eqz v18, :cond_a

    .line 444
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->close()V

    .line 442
    :cond_a
    throw v6

    .line 413
    .restart local v18    # "cursor":Landroid/database/Cursor;
    :cond_b
    :try_start_9
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sonyericsson/android/socialphonebook/calllog/ContactInfoCache;->mContext:Landroid/content/Context;

    move-object/from16 v0, p1

    iget-object v9, v0, Lcom/sonyericsson/android/socialphonebook/calllog/ContactInfoCache$CallerInfo;->number:Ljava/lang/String;

    invoke-static {v6, v9}, Lcom/sonyericsson/android/socialphonebook/util/CnapUtil;->isCnapUpdatable(Landroid/content/Context;Ljava/lang/String;)Z
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_2
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    move-result v22

    .line 414
    .local v22, "isUpdated":Z
    if-nez v22, :cond_8

    .line 415
    const/16 v17, 0x0

    .line 418
    .local v17, "cnapCursor":Landroid/database/Cursor;
    :try_start_a
    const-string/jumbo v6, "content://com.sonyericsson.providers.cnap/cnaprecords"

    .line 417
    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v12

    .line 419
    .local v12, "CONTENT_URI":Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sonyericsson/android/socialphonebook/calllog/ContactInfoCache;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    .line 420
    const/4 v6, 0x1

    new-array v13, v6, [Ljava/lang/String;

    .line 421
    const-string/jumbo v6, "name"

    const/4 v9, 0x0

    aput-object v6, v13, v9

    .line 422
    const-string/jumbo v14, "number=?"

    const/4 v6, 0x1

    new-array v15, v6, [Ljava/lang/String;

    .line 423
    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/sonyericsson/android/socialphonebook/calllog/ContactInfoCache$CallerInfo;->number:Ljava/lang/String;

    const/4 v9, 0x0

    aput-object v6, v15, v9

    .line 424
    const/16 v16, 0x0

    .line 419
    invoke-virtual/range {v11 .. v16}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v17

    .line 426
    .local v17, "cnapCursor":Landroid/database/Cursor;
    if-eqz v17, :cond_c

    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v6

    if-eqz v6, :cond_c

    .line 427
    const/4 v6, 0x0

    move-object/from16 v0, v17

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v23

    .line 428
    .local v23, "name":Ljava/lang/String;
    invoke-static/range {v23 .. v23}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_c

    .line 429
    move-object/from16 v0, v23

    move-object/from16 v1, v21

    iput-object v0, v1, Lcom/sonyericsson/android/socialphonebook/calllog/ContactInfoCache$ContactInfo;->name:Ljava/lang/String;

    .line 430
    const/4 v6, 0x1

    move-object/from16 v0, v21

    invoke-static {v0, v6}, Lcom/sonyericsson/android/socialphonebook/calllog/ContactInfoCache$ContactInfo;->-set0(Lcom/sonyericsson/android/socialphonebook/calllog/ContactInfoCache$ContactInfo;Z)Z
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    .line 434
    .end local v23    # "name":Ljava/lang/String;
    :cond_c
    if-eqz v17, :cond_8

    .line 435
    :try_start_b
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    goto/16 :goto_2

    .line 433
    .end local v12    # "CONTENT_URI":Landroid/net/Uri;
    .end local v17    # "cnapCursor":Landroid/database/Cursor;
    :catchall_3
    move-exception v6

    .line 434
    if-eqz v17, :cond_d

    .line 435
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    .line 433
    :cond_d
    throw v6
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_2
    .catchall {:try_start_b .. :try_end_b} :catchall_2
.end method

.method private updateCallLog(Lcom/sonyericsson/android/socialphonebook/calllog/ContactInfoCache$CallerInfo;Lcom/sonyericsson/android/socialphonebook/calllog/ContactInfoCache$ContactInfo;)V
    .locals 7
    .param p1, "callerInfo"    # Lcom/sonyericsson/android/socialphonebook/calllog/ContactInfoCache$CallerInfo;
    .param p2, "contactInfo"    # Lcom/sonyericsson/android/socialphonebook/calllog/ContactInfoCache$ContactInfo;

    .prologue
    .line 466
    iget-object v4, p1, Lcom/sonyericsson/android/socialphonebook/calllog/ContactInfoCache$CallerInfo;->name:Ljava/lang/String;

    iget-object v5, p2, Lcom/sonyericsson/android/socialphonebook/calllog/ContactInfoCache$ContactInfo;->name:Ljava/lang/String;

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 467
    iget-object v4, p1, Lcom/sonyericsson/android/socialphonebook/calllog/ContactInfoCache$CallerInfo;->numberLabel:Ljava/lang/String;

    iget-object v5, p2, Lcom/sonyericsson/android/socialphonebook/calllog/ContactInfoCache$ContactInfo;->label:Ljava/lang/String;

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    .line 466
    if-eqz v4, :cond_0

    .line 468
    iget v4, p1, Lcom/sonyericsson/android/socialphonebook/calllog/ContactInfoCache$CallerInfo;->numberType:I

    iget v5, p2, Lcom/sonyericsson/android/socialphonebook/calllog/ContactInfoCache$ContactInfo;->type:I

    if-ne v4, v5, :cond_0

    .line 469
    return-void

    .line 473
    :cond_0
    iget-object v4, p0, Lcom/sonyericsson/android/socialphonebook/calllog/ContactInfoCache;->mContext:Landroid/content/Context;

    iget-object v5, p1, Lcom/sonyericsson/android/socialphonebook/calllog/ContactInfoCache$CallerInfo;->number:Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/sonyericsson/android/socialphonebook/util/CnapUtil;->isCnapUpdatable(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    .line 474
    .local v1, "isUpdated":Z
    if-nez v1, :cond_2

    .line 475
    iget-boolean v4, p2, Lcom/sonyericsson/android/socialphonebook/calllog/ContactInfoCache$ContactInfo;->hasContactData:Z

    if-nez v4, :cond_1

    .line 476
    invoke-static {p2}, Lcom/sonyericsson/android/socialphonebook/calllog/ContactInfoCache$ContactInfo;->-get0(Lcom/sonyericsson/android/socialphonebook/calllog/ContactInfoCache$ContactInfo;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 479
    return-void

    .line 484
    :cond_1
    iget-object v4, p0, Lcom/sonyericsson/android/socialphonebook/calllog/ContactInfoCache;->mContext:Landroid/content/Context;

    iget-object v5, p1, Lcom/sonyericsson/android/socialphonebook/calllog/ContactInfoCache$CallerInfo;->number:Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/sonyericsson/android/socialphonebook/util/CnapUtil;->makeCnapUpdatable(Landroid/content/Context;Ljava/lang/String;)V

    .line 491
    :cond_2
    iget-object v4, p1, Lcom/sonyericsson/android/socialphonebook/calllog/ContactInfoCache$CallerInfo;->number:Ljava/lang/String;

    invoke-static {v4}, Lcom/sonyericsson/android/socialphonebook/util/StringUtil;->isUriNumber(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p2, Lcom/sonyericsson/android/socialphonebook/calllog/ContactInfoCache$ContactInfo;->name:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 492
    iget-object v4, p1, Lcom/sonyericsson/android/socialphonebook/calllog/ContactInfoCache$CallerInfo;->number:Ljava/lang/String;

    invoke-static {v4}, Lcom/sonyericsson/android/socialphonebook/util/StringUtil;->getUriName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p2, Lcom/sonyericsson/android/socialphonebook/calllog/ContactInfoCache$ContactInfo;->name:Ljava/lang/String;

    .line 493
    iget-object v4, p0, Lcom/sonyericsson/android/socialphonebook/calllog/ContactInfoCache;->mContactInfo:Ljava/util/HashMap;

    iget-object v5, p1, Lcom/sonyericsson/android/socialphonebook/calllog/ContactInfoCache$CallerInfo;->number:Ljava/lang/String;

    invoke-virtual {v4, v5, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 496
    :cond_3
    new-instance v3, Landroid/content/ContentValues;

    const/4 v4, 0x3

    invoke-direct {v3, v4}, Landroid/content/ContentValues;-><init>(I)V

    .line 497
    .local v3, "values":Landroid/content/ContentValues;
    const-string/jumbo v4, "name"

    iget-object v5, p2, Lcom/sonyericsson/android/socialphonebook/calllog/ContactInfoCache$ContactInfo;->name:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 498
    const-string/jumbo v4, "numbertype"

    iget v5, p2, Lcom/sonyericsson/android/socialphonebook/calllog/ContactInfoCache$ContactInfo;->type:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 499
    const-string/jumbo v4, "numberlabel"

    iget-object v5, p2, Lcom/sonyericsson/android/socialphonebook/calllog/ContactInfoCache$ContactInfo;->label:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 502
    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "number=\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Lcom/sonyericsson/android/socialphonebook/calllog/ContactInfoCache$CallerInfo;->number:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 503
    .local v2, "selection":Ljava/lang/String;
    iget-object v4, p0, Lcom/sonyericsson/android/socialphonebook/calllog/ContactInfoCache;->mCallLogContentHelper:Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper;

    if-eqz v4, :cond_4

    .line 504
    iget-object v4, p0, Lcom/sonyericsson/android/socialphonebook/calllog/ContactInfoCache;->mCallLogContentHelper:Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper;

    iget-object v5, p2, Lcom/sonyericsson/android/socialphonebook/calllog/ContactInfoCache$ContactInfo;->protocol:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-virtual {v4, v3, v2, v6, v5}, Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper;->update(Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 512
    .end local v2    # "selection":Ljava/lang/String;
    :cond_4
    :goto_0
    iget-object v5, p0, Lcom/sonyericsson/android/socialphonebook/calllog/ContactInfoCache;->mRequests:Ljava/util/LinkedList;

    monitor-enter v5

    .line 513
    :try_start_1
    iget-object v4, p0, Lcom/sonyericsson/android/socialphonebook/calllog/ContactInfoCache;->mRequests:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 514
    iget-object v4, p0, Lcom/sonyericsson/android/socialphonebook/calllog/ContactInfoCache;->mHandler:Landroid/os/Handler;

    const/4 v6, 0x1

    invoke-virtual {v4, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_5
    monitor-exit v5

    .line 464
    return-void

    .line 506
    :catch_0
    move-exception v0

    .line 508
    .local v0, "e":Landroid/database/sqlite/SQLiteDiskIOException;
    sget-object v4, Lcom/sonyericsson/android/socialphonebook/calllog/ContactInfoCache;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Failed to update call log: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 512
    .end local v0    # "e":Landroid/database/sqlite/SQLiteDiskIOException;
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4
.end method


# virtual methods
.method public clearCache()V
    .locals 2

    .prologue
    .line 177
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/calllog/ContactInfoCache;->mContactInfo:Ljava/util/HashMap;

    monitor-enter v1

    .line 178
    :try_start_0
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/ContactInfoCache;->mContactInfo:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 176
    return-void

    .line 177
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public destroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 114
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/calllog/ContactInfoCache;->clearCache()V

    .line 115
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/calllog/ContactInfoCache;->mRequests:Ljava/util/LinkedList;

    monitor-enter v1

    .line 116
    :try_start_0
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/ContactInfoCache;->mRequests:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 118
    iput-object v2, p0, Lcom/sonyericsson/android/socialphonebook/calllog/ContactInfoCache;->mCallLogContentHelper:Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper;

    .line 119
    iput-object v2, p0, Lcom/sonyericsson/android/socialphonebook/calllog/ContactInfoCache;->mContext:Landroid/content/Context;

    .line 113
    return-void

    .line 115
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public getContactInfo(Landroid/database/Cursor;)Lcom/sonyericsson/android/socialphonebook/calllog/ContactInfoCache$ContactInfo;
    .locals 14
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 201
    new-instance v5, Lcom/sonyericsson/android/socialphonebook/calllog/ContactInfoCache$CallerInfo;

    const/4 v12, 0x0

    invoke-direct {v5, v12}, Lcom/sonyericsson/android/socialphonebook/calllog/ContactInfoCache$CallerInfo;-><init>(Lcom/sonyericsson/android/socialphonebook/calllog/ContactInfoCache$CallerInfo;)V

    .line 202
    .local v5, "info":Lcom/sonyericsson/android/socialphonebook/calllog/ContactInfoCache$CallerInfo;
    const-string/jumbo v12, "number"

    invoke-interface {p1, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    invoke-interface {p1, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    iput-object v12, v5, Lcom/sonyericsson/android/socialphonebook/calllog/ContactInfoCache$CallerInfo;->number:Ljava/lang/String;

    .line 203
    const-string/jumbo v12, "name"

    invoke-interface {p1, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    invoke-interface {p1, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    iput-object v12, v5, Lcom/sonyericsson/android/socialphonebook/calllog/ContactInfoCache$CallerInfo;->name:Ljava/lang/String;

    .line 204
    const-string/jumbo v12, "numberlabel"

    invoke-interface {p1, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    invoke-interface {p1, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    iput-object v12, v5, Lcom/sonyericsson/android/socialphonebook/calllog/ContactInfoCache$CallerInfo;->numberLabel:Ljava/lang/String;

    .line 205
    const-string/jumbo v12, "presentation"

    invoke-interface {p1, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    invoke-interface {p1, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    iput v12, v5, Lcom/sonyericsson/android/socialphonebook/calllog/ContactInfoCache$CallerInfo;->numberPresentation:I

    .line 206
    const-string/jumbo v12, "numbertype"

    invoke-interface {p1, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    invoke-interface {p1, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    iput v12, v5, Lcom/sonyericsson/android/socialphonebook/calllog/ContactInfoCache$CallerInfo;->numberType:I

    .line 208
    const-string/jumbo v12, "protocol"

    invoke-interface {p1, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    const/4 v13, -0x1

    if-ne v12, v13, :cond_0

    .line 209
    const-string/jumbo v12, "tel:"

    iput-object v12, v5, Lcom/sonyericsson/android/socialphonebook/calllog/ContactInfoCache$CallerInfo;->protocol:Ljava/lang/String;

    .line 215
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 216
    .local v0, "bundle":Landroid/os/Bundle;
    if-eqz v0, :cond_1

    .line 218
    const-string/jumbo v12, "call_items"

    .line 217
    invoke-virtual {v0, v12}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor$CallLogHelper;

    .line 219
    .local v1, "callLogHelper":Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor$CallLogHelper;
    invoke-virtual {v1}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor$CallLogHelper;->getSize()I

    move-result v3

    .line 221
    .local v3, "count":I
    const/4 v12, 0x1

    if-le v3, v12, :cond_1

    .line 222
    invoke-virtual {v1}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor$CallLogHelper;->getIds()[I

    move-result-object v2

    .line 223
    .local v2, "collapsedIds":[I
    if-eqz v2, :cond_1

    .line 224
    iget-object v12, p0, Lcom/sonyericsson/android/socialphonebook/calllog/ContactInfoCache;->mCallLogContentHelper:Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper;

    invoke-virtual {v12, v2}, Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper;->containsConferenceCall([I)Z

    move-result v12

    .line 223
    if-eqz v12, :cond_1

    .line 226
    invoke-virtual {v1}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor$CallLogHelper;->getNames()[Ljava/lang/String;

    move-result-object v6

    .line 227
    .local v6, "names":[Ljava/lang/String;
    invoke-virtual {v1}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor$CallLogHelper;->getNumbers()[Ljava/lang/String;

    move-result-object v8

    .line 228
    .local v8, "numbers":[Ljava/lang/String;
    invoke-virtual {v1}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor$CallLogHelper;->getNumberLabels()[Ljava/lang/String;

    move-result-object v7

    .line 229
    .local v7, "numberLabels":[Ljava/lang/String;
    invoke-virtual {v1}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor$CallLogHelper;->getTypes()[I

    move-result-object v11

    .line 230
    .local v11, "types":[I
    invoke-virtual {v1}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor$CallLogHelper;->getPresentations()[I

    move-result-object v9

    .line 233
    .local v9, "presentations":[I
    const/4 v4, 0x1

    .local v4, "i":I
    :goto_1
    if-ge v4, v3, :cond_1

    .line 234
    new-instance v10, Lcom/sonyericsson/android/socialphonebook/calllog/ContactInfoCache$CallerInfo;

    const/4 v12, 0x0

    invoke-direct {v10, v12}, Lcom/sonyericsson/android/socialphonebook/calllog/ContactInfoCache$CallerInfo;-><init>(Lcom/sonyericsson/android/socialphonebook/calllog/ContactInfoCache$CallerInfo;)V

    .line 235
    .local v10, "src":Lcom/sonyericsson/android/socialphonebook/calllog/ContactInfoCache$CallerInfo;
    aget-object v12, v6, v4

    iput-object v12, v10, Lcom/sonyericsson/android/socialphonebook/calllog/ContactInfoCache$CallerInfo;->name:Ljava/lang/String;

    .line 236
    aget-object v12, v8, v4

    iput-object v12, v10, Lcom/sonyericsson/android/socialphonebook/calllog/ContactInfoCache$CallerInfo;->number:Ljava/lang/String;

    .line 237
    aget v12, v11, v4

    iput v12, v10, Lcom/sonyericsson/android/socialphonebook/calllog/ContactInfoCache$CallerInfo;->numberType:I

    .line 238
    aget v12, v9, v4

    iput v12, v10, Lcom/sonyericsson/android/socialphonebook/calllog/ContactInfoCache$CallerInfo;->numberPresentation:I

    .line 239
    aget-object v12, v7, v4

    iput-object v12, v10, Lcom/sonyericsson/android/socialphonebook/calllog/ContactInfoCache$CallerInfo;->numberLabel:Ljava/lang/String;

    .line 240
    iget-object v12, v5, Lcom/sonyericsson/android/socialphonebook/calllog/ContactInfoCache$CallerInfo;->protocol:Ljava/lang/String;

    iput-object v12, v10, Lcom/sonyericsson/android/socialphonebook/calllog/ContactInfoCache$CallerInfo;->protocol:Ljava/lang/String;

    .line 241
    invoke-direct {p0, v10}, Lcom/sonyericsson/android/socialphonebook/calllog/ContactInfoCache;->getContactInfo(Lcom/sonyericsson/android/socialphonebook/calllog/ContactInfoCache$CallerInfo;)Lcom/sonyericsson/android/socialphonebook/calllog/ContactInfoCache$ContactInfo;

    .line 233
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 211
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v1    # "callLogHelper":Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor$CallLogHelper;
    .end local v2    # "collapsedIds":[I
    .end local v3    # "count":I
    .end local v4    # "i":I
    .end local v6    # "names":[Ljava/lang/String;
    .end local v7    # "numberLabels":[Ljava/lang/String;
    .end local v8    # "numbers":[Ljava/lang/String;
    .end local v9    # "presentations":[I
    .end local v10    # "src":Lcom/sonyericsson/android/socialphonebook/calllog/ContactInfoCache$CallerInfo;
    .end local v11    # "types":[I
    :cond_0
    const-string/jumbo v12, "protocol"

    invoke-interface {p1, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    invoke-interface {p1, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    iput-object v12, v5, Lcom/sonyericsson/android/socialphonebook/calllog/ContactInfoCache$CallerInfo;->protocol:Ljava/lang/String;

    goto :goto_0

    .line 247
    .restart local v0    # "bundle":Landroid/os/Bundle;
    :cond_1
    invoke-direct {p0, v5}, Lcom/sonyericsson/android/socialphonebook/calllog/ContactInfoCache;->getContactInfo(Lcom/sonyericsson/android/socialphonebook/calllog/ContactInfoCache$CallerInfo;)Lcom/sonyericsson/android/socialphonebook/calllog/ContactInfoCache$ContactInfo;

    move-result-object v12

    return-object v12
.end method

.method public getContactInfo(Ljava/lang/String;)Lcom/sonyericsson/android/socialphonebook/calllog/ContactInfoCache$ContactInfo;
    .locals 3
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 188
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/calllog/ContactInfoCache;->mContactInfo:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/socialphonebook/calllog/ContactInfoCache$ContactInfo;

    .line 189
    .local v0, "info":Lcom/sonyericsson/android/socialphonebook/calllog/ContactInfoCache$ContactInfo;
    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/calllog/ContactInfoCache$ContactInfo;->-get1(Lcom/sonyericsson/android/socialphonebook/calllog/ContactInfoCache$ContactInfo;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 190
    return-object v0

    .line 192
    :cond_0
    return-object v2
.end method

.method public setAdapterHandler(Landroid/os/Handler;)V
    .locals 2
    .param p1, "handler"    # Landroid/os/Handler;

    .prologue
    .line 128
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/ContactInfoCache;->mRequests:Ljava/util/LinkedList;

    monitor-enter v0

    .line 129
    :try_start_0
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/calllog/ContactInfoCache;->mHandler:Landroid/os/Handler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    .line 127
    return-void

    .line 128
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public setBackgroundFlag(Z)V
    .locals 0
    .param p1, "isBackground"    # Z

    .prologue
    .line 139
    iput-boolean p1, p0, Lcom/sonyericsson/android/socialphonebook/calllog/ContactInfoCache;->mActivityIsBackground:Z

    .line 138
    return-void
.end method

.method public startRequestProcessing()V
    .locals 2

    .prologue
    .line 146
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/calllog/ContactInfoCache;->stopRequestProcessing()V

    .line 148
    new-instance v0, Lcom/sonyericsson/android/socialphonebook/calllog/ContactInfoCache$CallerIdThread;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sonyericsson/android/socialphonebook/calllog/ContactInfoCache$CallerIdThread;-><init>(Lcom/sonyericsson/android/socialphonebook/calllog/ContactInfoCache;Lcom/sonyericsson/android/socialphonebook/calllog/ContactInfoCache$CallerIdThread;)V

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/ContactInfoCache;->mCallerIdThread:Lcom/sonyericsson/android/socialphonebook/calllog/ContactInfoCache$CallerIdThread;

    .line 149
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/ContactInfoCache;->mCallerIdThread:Lcom/sonyericsson/android/socialphonebook/calllog/ContactInfoCache$CallerIdThread;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/socialphonebook/calllog/ContactInfoCache$CallerIdThread;->setPriority(I)V

    .line 150
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/ContactInfoCache;->mCallerIdThread:Lcom/sonyericsson/android/socialphonebook/calllog/ContactInfoCache$CallerIdThread;

    invoke-virtual {v0}, Lcom/sonyericsson/android/socialphonebook/calllog/ContactInfoCache$CallerIdThread;->start()V

    .line 145
    return-void
.end method

.method public stopRequestProcessing()V
    .locals 4

    .prologue
    .line 157
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/calllog/ContactInfoCache;->mCallerIdThread:Lcom/sonyericsson/android/socialphonebook/calllog/ContactInfoCache$CallerIdThread;

    if-eqz v1, :cond_0

    .line 158
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/calllog/ContactInfoCache;->mCallerIdThread:Lcom/sonyericsson/android/socialphonebook/calllog/ContactInfoCache$CallerIdThread;

    invoke-virtual {v1}, Lcom/sonyericsson/android/socialphonebook/calllog/ContactInfoCache$CallerIdThread;->tryStop()V

    .line 159
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/calllog/ContactInfoCache;->mCallerIdThread:Lcom/sonyericsson/android/socialphonebook/calllog/ContactInfoCache$CallerIdThread;

    invoke-virtual {v1}, Lcom/sonyericsson/android/socialphonebook/calllog/ContactInfoCache$CallerIdThread;->interrupt()V

    .line 161
    :try_start_0
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/calllog/ContactInfoCache;->mCallerIdThread:Lcom/sonyericsson/android/socialphonebook/calllog/ContactInfoCache$CallerIdThread;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v1, v2, v3}, Lcom/sonyericsson/android/socialphonebook/calllog/ContactInfoCache$CallerIdThread;->join(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 165
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/calllog/ContactInfoCache;->mCallerIdThread:Lcom/sonyericsson/android/socialphonebook/calllog/ContactInfoCache$CallerIdThread;

    invoke-virtual {v1}, Lcom/sonyericsson/android/socialphonebook/calllog/ContactInfoCache$CallerIdThread;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 166
    sget-object v1, Lcom/sonyericsson/android/socialphonebook/calllog/ContactInfoCache;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Try interrupt again"

    invoke-static {v1, v2}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/calllog/ContactInfoCache;->mCallerIdThread:Lcom/sonyericsson/android/socialphonebook/calllog/ContactInfoCache$CallerIdThread;

    invoke-virtual {v1}, Lcom/sonyericsson/android/socialphonebook/calllog/ContactInfoCache$CallerIdThread;->interrupt()V

    .line 156
    :cond_0
    :goto_0
    return-void

    .line 162
    :catch_0
    move-exception v0

    .line 165
    .local v0, "ignore":Ljava/lang/InterruptedException;
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/calllog/ContactInfoCache;->mCallerIdThread:Lcom/sonyericsson/android/socialphonebook/calllog/ContactInfoCache$CallerIdThread;

    invoke-virtual {v1}, Lcom/sonyericsson/android/socialphonebook/calllog/ContactInfoCache$CallerIdThread;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 166
    sget-object v1, Lcom/sonyericsson/android/socialphonebook/calllog/ContactInfoCache;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Try interrupt again"

    invoke-static {v1, v2}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/calllog/ContactInfoCache;->mCallerIdThread:Lcom/sonyericsson/android/socialphonebook/calllog/ContactInfoCache$CallerIdThread;

    invoke-virtual {v1}, Lcom/sonyericsson/android/socialphonebook/calllog/ContactInfoCache$CallerIdThread;->interrupt()V

    goto :goto_0

    .line 164
    .end local v0    # "ignore":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    .line 165
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/calllog/ContactInfoCache;->mCallerIdThread:Lcom/sonyericsson/android/socialphonebook/calllog/ContactInfoCache$CallerIdThread;

    invoke-virtual {v2}, Lcom/sonyericsson/android/socialphonebook/calllog/ContactInfoCache$CallerIdThread;->isAlive()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 166
    sget-object v2, Lcom/sonyericsson/android/socialphonebook/calllog/ContactInfoCache;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "Try interrupt again"

    invoke-static {v2, v3}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/calllog/ContactInfoCache;->mCallerIdThread:Lcom/sonyericsson/android/socialphonebook/calllog/ContactInfoCache$CallerIdThread;

    invoke-virtual {v2}, Lcom/sonyericsson/android/socialphonebook/calllog/ContactInfoCache$CallerIdThread;->interrupt()V

    .line 164
    :cond_1
    throw v1
.end method
