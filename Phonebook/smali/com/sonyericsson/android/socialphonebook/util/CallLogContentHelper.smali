.class public Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper;
.super Ljava/lang/Object;
.source "CallLogContentHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper$OnQueryCompleteListener;,
        Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper$QueryCommandCreator;,
        Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper$UiUpdaterExecutor;,
        Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper$ExtendedCallLogObserver;
    }
.end annotation


# static fields
.field private static synthetic -com_sonyericsson_android_socialphonebook_ui_CallLogFilterDialogFragment$CallLogFilterTypeSwitchesValues:[I = null

.field private static CALLS_EXTENSIONS_PROJECTION:[Ljava/lang/String; = null

.field static final CALL_LOG_PROJECTION:[Ljava/lang/String;

.field public static final NUMBER_NOT_NULL_SELECTION:Ljava/lang/String; = "number IS NOT NULL "

.field public static final PROTOCOL_SKYPE:Ljava/lang/String; = "skype:"

.field public static final PROTOCOL_TEL:Ljava/lang/String; = "tel:"

.field public static final TAG:Ljava/lang/String;

.field public static final VOICEMAIL_NOT_DELETED_SELECTION:Ljava/lang/String; = "deleted = 0 "

.field static final VOIP_CALL_LOG_PROJECTION:[Ljava/lang/String;


# instance fields
.field private mBrandName:Ljava/lang/String;

.field private mCollapseCallLogMatchingMethod:Ljava/lang/String;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mExecutor:Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper$UiUpdaterExecutor;

.field private final mExecutorLock:Ljava/lang/Object;

.field private mExtendedCallLogHelper:Lcom/sonyericsson/android/socialphonebook/calllog/ExtendedCallLogHelper;

.field private mExtendedCallLogObserver:Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper$ExtendedCallLogObserver;

.field private mIsConferenceCallEnabled:Z

.field private mIsNumberMatchingMethodStrict:Z

.field private mListener:Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper$OnQueryCompleteListener;

.field private final mListenerLock:Ljava/lang/Object;

.field private mSharedPreferences:Landroid/content/SharedPreferences;

.field private mVoipIsInstalled:Z


# direct methods
.method static synthetic -get0(Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper;)Landroid/content/ContentResolver;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper;->mContentResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic -get1(Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper;)Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper$OnQueryCompleteListener;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper;->mListener:Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper$OnQueryCompleteListener;

    return-object v0
.end method

.method static synthetic -get2(Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper;->mListenerLock:Ljava/lang/Object;

    return-object v0
.end method

.method private static synthetic -getcom_sonyericsson_android_socialphonebook_ui_CallLogFilterDialogFragment$CallLogFilterTypeSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper;->-com_sonyericsson_android_socialphonebook_ui_CallLogFilterDialogFragment$CallLogFilterTypeSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper;->-com_sonyericsson_android_socialphonebook_ui_CallLogFilterDialogFragment$CallLogFilterTypeSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/sonyericsson/android/socialphonebook/ui/CallLogFilterDialogFragment$CallLogFilterType;->values()[Lcom/sonyericsson/android/socialphonebook/ui/CallLogFilterDialogFragment$CallLogFilterType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/sonyericsson/android/socialphonebook/ui/CallLogFilterDialogFragment$CallLogFilterType;->ALL_CALLS:Lcom/sonyericsson/android/socialphonebook/ui/CallLogFilterDialogFragment$CallLogFilterType;

    invoke-virtual {v1}, Lcom/sonyericsson/android/socialphonebook/ui/CallLogFilterDialogFragment$CallLogFilterType;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_6

    :goto_0
    :try_start_1
    sget-object v1, Lcom/sonyericsson/android/socialphonebook/ui/CallLogFilterDialogFragment$CallLogFilterType;->INCOMING_CALLS:Lcom/sonyericsson/android/socialphonebook/ui/CallLogFilterDialogFragment$CallLogFilterType;

    invoke-virtual {v1}, Lcom/sonyericsson/android/socialphonebook/ui/CallLogFilterDialogFragment$CallLogFilterType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_5

    :goto_1
    :try_start_2
    sget-object v1, Lcom/sonyericsson/android/socialphonebook/ui/CallLogFilterDialogFragment$CallLogFilterType;->MISSED_CALLS:Lcom/sonyericsson/android/socialphonebook/ui/CallLogFilterDialogFragment$CallLogFilterType;

    invoke-virtual {v1}, Lcom/sonyericsson/android/socialphonebook/ui/CallLogFilterDialogFragment$CallLogFilterType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_4

    :goto_2
    :try_start_3
    sget-object v1, Lcom/sonyericsson/android/socialphonebook/ui/CallLogFilterDialogFragment$CallLogFilterType;->OUTGOING_CALLS:Lcom/sonyericsson/android/socialphonebook/ui/CallLogFilterDialogFragment$CallLogFilterType;

    invoke-virtual {v1}, Lcom/sonyericsson/android/socialphonebook/ui/CallLogFilterDialogFragment$CallLogFilterType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :goto_3
    :try_start_4
    sget-object v1, Lcom/sonyericsson/android/socialphonebook/ui/CallLogFilterDialogFragment$CallLogFilterType;->VIDEO_CALLS:Lcom/sonyericsson/android/socialphonebook/ui/CallLogFilterDialogFragment$CallLogFilterType;

    invoke-virtual {v1}, Lcom/sonyericsson/android/socialphonebook/ui/CallLogFilterDialogFragment$CallLogFilterType;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_2

    :goto_4
    :try_start_5
    sget-object v1, Lcom/sonyericsson/android/socialphonebook/ui/CallLogFilterDialogFragment$CallLogFilterType;->VOICEMAIL_CALLS:Lcom/sonyericsson/android/socialphonebook/ui/CallLogFilterDialogFragment$CallLogFilterType;

    invoke-virtual {v1}, Lcom/sonyericsson/android/socialphonebook/ui/CallLogFilterDialogFragment$CallLogFilterType;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_1

    :goto_5
    :try_start_6
    sget-object v1, Lcom/sonyericsson/android/socialphonebook/ui/CallLogFilterDialogFragment$CallLogFilterType;->VOICE_CALLS:Lcom/sonyericsson/android/socialphonebook/ui/CallLogFilterDialogFragment$CallLogFilterType;

    invoke-virtual {v1}, Lcom/sonyericsson/android/socialphonebook/ui/CallLogFilterDialogFragment$CallLogFilterType;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_0

    :goto_6
    sput-object v0, Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper;->-com_sonyericsson_android_socialphonebook_ui_CallLogFilterDialogFragment$CallLogFilterTypeSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_6

    :catch_1
    move-exception v1

    goto :goto_5

    :catch_2
    move-exception v1

    goto :goto_4

    :catch_3
    move-exception v1

    goto :goto_3

    :catch_4
    move-exception v1

    goto :goto_2

    :catch_5
    move-exception v1

    goto :goto_1

    :catch_6
    move-exception v1

    goto :goto_0
.end method

.method static synthetic -set0(Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper;->mVoipIsInstalled:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    .locals 1
    .param p1, "selection"    # Ljava/lang/String;
    .param p2, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper;->querySync(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper;Ljava/lang/String;)Ljava/lang/Runnable;
    .locals 1
    .param p1, "selection"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper;->buildQueryCommand(Ljava/lang/String;)Ljava/lang/Runnable;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 53
    const-class v0, Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper;->TAG:Ljava/lang/String;

    .line 71
    const/16 v0, 0xc

    new-array v0, v0, [Ljava/lang/String;

    .line 72
    const-string/jumbo v1, "_id"

    aput-object v1, v0, v3

    .line 73
    const-string/jumbo v1, "number"

    aput-object v1, v0, v4

    .line 74
    const-string/jumbo v1, "presentation"

    aput-object v1, v0, v5

    .line 75
    const-string/jumbo v1, "date"

    aput-object v1, v0, v6

    .line 76
    const-string/jumbo v1, "duration"

    aput-object v1, v0, v7

    .line 77
    const-string/jumbo v1, "type"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 78
    const-string/jumbo v1, "name"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 79
    const-string/jumbo v1, "numbertype"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    .line 80
    const-string/jumbo v1, "numberlabel"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    .line 81
    const-string/jumbo v1, "voicemail_uri"

    const/16 v2, 0x9

    aput-object v1, v0, v2

    .line 82
    const-string/jumbo v1, "is_read"

    const/16 v2, 0xa

    aput-object v1, v0, v2

    .line 83
    const-string/jumbo v1, "subscription_id"

    const/16 v2, 0xb

    aput-object v1, v0, v2

    .line 71
    sput-object v0, Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper;->CALL_LOG_PROJECTION:[Ljava/lang/String;

    .line 90
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    .line 91
    const-string/jumbo v1, "_id"

    aput-object v1, v0, v3

    .line 92
    const-string/jumbo v1, "number"

    aput-object v1, v0, v4

    .line 93
    const-string/jumbo v1, "date"

    aput-object v1, v0, v5

    .line 94
    const-string/jumbo v1, "duration"

    aput-object v1, v0, v6

    .line 95
    const-string/jumbo v1, "type"

    aput-object v1, v0, v7

    .line 96
    const-string/jumbo v1, "name"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 97
    const-string/jumbo v1, "numbertype"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 98
    const-string/jumbo v1, "numberlabel"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    .line 99
    const-string/jumbo v1, "protocol"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    .line 90
    sput-object v0, Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper;->VOIP_CALL_LOG_PROJECTION:[Ljava/lang/String;

    .line 105
    new-array v0, v7, [Ljava/lang/String;

    .line 106
    const-string/jumbo v1, "_id"

    aput-object v1, v0, v3

    .line 107
    const-string/jumbo v1, "call_id"

    aput-object v1, v0, v4

    .line 108
    const-string/jumbo v1, "extension"

    aput-object v1, v0, v5

    .line 109
    const-string/jumbo v1, "value"

    aput-object v1, v0, v6

    .line 105
    sput-object v0, Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper;->CALLS_EXTENSIONS_PROJECTION:[Ljava/lang/String;

    .line 51
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 393
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 118
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper;->mVoipIsInstalled:Z

    .line 120
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper;->mExecutorLock:Ljava/lang/Object;

    .line 122
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper;->mListenerLock:Ljava/lang/Object;

    .line 124
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper;->mBrandName:Ljava/lang/String;

    .line 394
    invoke-static {p1}, Lcom/sonyericsson/android/socialphonebook/Configuration;->getInstance(Landroid/content/Context;)Lcom/sonyericsson/android/socialphonebook/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/socialphonebook/Configuration;->isNumberMatchingMethodStrict()Z

    move-result v0

    iput-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper;->mIsNumberMatchingMethodStrict:Z

    .line 396
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper;->mContentResolver:Landroid/content/ContentResolver;

    .line 397
    invoke-static {p1}, Lcom/sonyericsson/android/socialphonebook/Configuration;->getInstance(Landroid/content/Context;)Lcom/sonyericsson/android/socialphonebook/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/socialphonebook/Configuration;->isConferenceCallEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper;->mIsConferenceCallEnabled:Z

    .line 398
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 399
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper$3;

    invoke-direct {v1, p0}, Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper$3;-><init>(Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 393
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper$OnQueryCompleteListener;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper$OnQueryCompleteListener;

    .prologue
    .line 159
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper;-><init>(Landroid/content/Context;)V

    .line 160
    iput-object p2, p0, Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper;->mListener:Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper$OnQueryCompleteListener;

    .line 161
    new-instance v0, Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper$UiUpdaterExecutor;

    invoke-direct {v0}, Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper$UiUpdaterExecutor;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper;->mExecutor:Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper$UiUpdaterExecutor;

    .line 162
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 158
    return-void
.end method

.method private buildExtensionMap(Ljava/lang/String;)V
    .locals 9
    .param p1, "selection"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    .line 889
    const/4 v6, 0x0

    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/sonymobile/providers/extendedcalllog/ExtendedCallLog$CallsExtensions;->CONTENT_URI:Landroid/net/Uri;

    .line 890
    sget-object v2, Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper;->CALLS_EXTENSIONS_PROJECTION:[Ljava/lang/String;

    const-string/jumbo v5, "call_id"

    const/4 v4, 0x0

    move-object v3, p1

    .line 889
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 891
    .local v6, "cursor":Landroid/database/Cursor;
    new-instance v0, Lcom/sonyericsson/android/socialphonebook/calllog/ExtendedCallLogHelper;

    invoke-direct {v0, v6}, Lcom/sonyericsson/android/socialphonebook/calllog/ExtendedCallLogHelper;-><init>(Landroid/database/Cursor;)V

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper;->mExtendedCallLogHelper:Lcom/sonyericsson/android/socialphonebook/calllog/ExtendedCallLogHelper;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 892
    if-eqz v6, :cond_0

    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    :cond_0
    :goto_0
    if-eqz v7, :cond_4

    throw v7

    :catch_0
    move-exception v7

    goto :goto_0

    .end local v6    # "cursor":Landroid/database/Cursor;
    :catch_1
    move-exception v0

    :try_start_2
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v1

    move-object v8, v1

    move-object v1, v0

    move-object v0, v8

    :goto_1
    if-eqz v6, :cond_1

    :try_start_3
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2

    :cond_1
    :goto_2
    if-eqz v1, :cond_3

    throw v1

    :catch_2
    move-exception v2

    if-nez v1, :cond_2

    move-object v1, v2

    goto :goto_2

    :cond_2
    if-eq v1, v2, :cond_1

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_3
    throw v0

    .line 888
    .restart local v6    # "cursor":Landroid/database/Cursor;
    :cond_4
    return-void

    .line 892
    .end local v6    # "cursor":Landroid/database/Cursor;
    :catchall_1
    move-exception v0

    move-object v1, v7

    goto :goto_1
.end method

.method private buildExtensionMapByIds([I)V
    .locals 7
    .param p1, "callIds"    # [I

    .prologue
    const/4 v3, 0x0

    .line 836
    const/4 v2, 0x0

    .line 837
    .local v2, "selection":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 839
    .local v1, "sb":Ljava/lang/StringBuilder;
    if-eqz p1, :cond_1

    array-length v4, p1

    if-lez v4, :cond_1

    .line 842
    const-string/jumbo v4, "call_id"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " IN ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 843
    array-length v4, p1

    :goto_0
    if-ge v3, v4, :cond_0

    aget v0, p1, v3

    .line 844
    .local v0, "id":I
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 843
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 846
    .end local v0    # "id":I
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    const/16 v4, 0x29

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 848
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 849
    .local v2, "selection":Ljava/lang/String;
    invoke-direct {p0, v2}, Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper;->buildExtensionMap(Ljava/lang/String;)V

    .line 835
    return-void
.end method

.method private buildExtensionMapBySelection(Ljava/lang/String;)V
    .locals 4
    .param p1, "callLogSelection"    # Ljava/lang/String;

    .prologue
    .line 863
    const/4 v1, 0x0

    .line 864
    .local v1, "selection":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 866
    .local v0, "sb":Ljava/lang/StringBuilder;
    if-eqz p1, :cond_0

    .line 871
    const-string/jumbo v2, "call_id"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " IN (SELECT "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "_id"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 872
    const-string/jumbo v3, " FROM CALLS WHERE "

    .line 871
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 872
    const-string/jumbo v3, ")"

    .line 871
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 874
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 875
    .local v1, "selection":Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper;->buildExtensionMap(Ljava/lang/String;)V

    .line 862
    return-void
.end method

.method private buildQueryCommand(Ljava/lang/String;)Ljava/lang/Runnable;
    .locals 1
    .param p1, "selection"    # Ljava/lang/String;

    .prologue
    .line 232
    new-instance v0, Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper$2;

    invoke-direct {v0, p0, p1}, Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper$2;-><init>(Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper;Ljava/lang/String;)V

    return-object v0
.end method

.method private buildVideoExtensionFilter(Ljava/lang/StringBuilder;Z)Ljava/lang/String;
    .locals 1
    .param p1, "builder"    # Ljava/lang/StringBuilder;
    .param p2, "includeVideoCalls"    # Z

    .prologue
    .line 326
    const-string/jumbo v0, "_id"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 327
    if-eqz p2, :cond_0

    .line 328
    const-string/jumbo v0, " IN ("

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 332
    :goto_0
    const-string/jumbo v0, "SELECT "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 333
    const-string/jumbo v0, "call_id"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 334
    const-string/jumbo v0, " FROM calls_extensions_somc"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 335
    const-string/jumbo v0, " WHERE extension"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 336
    const-string/jumbo v0, " = \'application/vnd.sonymobile.videocall\'"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 337
    const-string/jumbo v0, ")"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 338
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 330
    :cond_0
    const-string/jumbo v0, " NOT IN ("

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method private getCallLogFilterSelection(Landroid/content/Context;)Ljava/lang/String;
    .locals 9
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    .line 264
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 267
    .local v0, "selectionBuilder":Ljava/lang/StringBuilder;
    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 268
    const-string/jumbo v4, "call_log_filter"

    .line 270
    sget v5, Lcom/sonyericsson/android/socialphonebook/ui/CallLogFilterDialogFragment;->DEFAULT_SETTING:I

    .line 269
    invoke-direct {p0, p1, v5}, Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper;->readOldCallLogFilterPreference(Landroid/content/Context;I)I

    move-result v5

    .line 267
    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 272
    .local v1, "state":I
    invoke-static {}, Lcom/sonyericsson/android/socialphonebook/ui/CallLogFilterDialogFragment$CallLogFilterType;->values()[Lcom/sonyericsson/android/socialphonebook/ui/CallLogFilterDialogFragment$CallLogFilterType;

    move-result-object v3

    aget-object v2, v3, v1

    .line 275
    .local v2, "stateEnum":Lcom/sonyericsson/android/socialphonebook/ui/CallLogFilterDialogFragment$CallLogFilterType;
    sget-object v3, Lcom/sonyericsson/android/socialphonebook/ui/CallLogFilterDialogFragment$CallLogFilterType;->ALL_CALLS:Lcom/sonyericsson/android/socialphonebook/ui/CallLogFilterDialogFragment$CallLogFilterType;

    if-ne v2, v3, :cond_0

    .line 276
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 281
    :cond_0
    sget-object v3, Lcom/sonyericsson/android/socialphonebook/ui/CallLogFilterDialogFragment$CallLogFilterType;->VIDEO_CALLS:Lcom/sonyericsson/android/socialphonebook/ui/CallLogFilterDialogFragment$CallLogFilterType;

    if-ne v2, v3, :cond_1

    .line 282
    invoke-direct {p0, v0, v6}, Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper;->buildVideoExtensionFilter(Ljava/lang/StringBuilder;Z)Ljava/lang/String;

    .line 319
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 286
    :cond_1
    const-string/jumbo v3, "type IN ("

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 287
    sget-object v3, Lcom/sonyericsson/android/socialphonebook/ui/CallLogFilterDialogFragment$CallLogFilterType;->VOICE_CALLS:Lcom/sonyericsson/android/socialphonebook/ui/CallLogFilterDialogFragment$CallLogFilterType;

    if-ne v2, v3, :cond_2

    .line 288
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 289
    const-string/jumbo v3, ", "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 290
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 291
    const-string/jumbo v3, ", "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 292
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 293
    const-string/jumbo v3, ") AND "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 294
    const/4 v3, 0x0

    invoke-direct {p0, v0, v3}, Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper;->buildVideoExtensionFilter(Ljava/lang/StringBuilder;Z)Ljava/lang/String;

    .line 295
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 300
    :cond_2
    invoke-static {}, Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper;->-getcom_sonyericsson_android_socialphonebook_ui_CallLogFilterDialogFragment$CallLogFilterTypeSwitchesValues()[I

    move-result-object v3

    invoke-virtual {v2}, Lcom/sonyericsson/android/socialphonebook/ui/CallLogFilterDialogFragment$CallLogFilterType;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 316
    :goto_0
    const-string/jumbo v3, ")"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 317
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 302
    :pswitch_0
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 305
    :pswitch_1
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 308
    :pswitch_2
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 311
    :pswitch_3
    const/4 v3, 0x4

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 300
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public static getCallLogProjection()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 730
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper;->CALL_LOG_PROJECTION:[Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public static getCutoffTime()J
    .locals 4

    .prologue
    .line 641
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide v2, 0x90321000L

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method private getExtendedCallLogObserver(Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper$QueryCommandCreator;)Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper$ExtendedCallLogObserver;
    .locals 1
    .param p1, "queryCommandCreator"    # Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper$QueryCommandCreator;

    .prologue
    .line 906
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper;->mExtendedCallLogObserver:Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper$ExtendedCallLogObserver;

    if-nez v0, :cond_0

    .line 907
    new-instance v0, Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper$ExtendedCallLogObserver;

    invoke-direct {v0, p0, p1}, Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper$ExtendedCallLogObserver;-><init>(Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper;Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper$QueryCommandCreator;)V

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper;->mExtendedCallLogObserver:Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper$ExtendedCallLogObserver;

    .line 910
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper;->mExtendedCallLogObserver:Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper$ExtendedCallLogObserver;

    return-object v0
.end method

.method private getFilteredCallLogQueryCommandCreator(Landroid/content/Context;Z)Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper$QueryCommandCreator;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "excludeUnknownPhoneNumber"    # Z

    .prologue
    .line 194
    new-instance v0, Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper$1;-><init>(Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper;Landroid/content/Context;Z)V

    return-object v0
.end method

.method public static getSubIdAtCurrentPosition(Landroid/content/Context;Landroid/database/Cursor;)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 652
    const-string/jumbo v2, "subscription_id"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 651
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 653
    .local v0, "serialNum":Ljava/lang/String;
    invoke-static {p0, v0}, Lcom/sonyericsson/android/socialphonebook/SlotUtils;->getSlotIdByIccSerialNumber(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    .line 654
    .local v1, "slotId":I
    invoke-static {v1}, Lcom/sonyericsson/android/socialphonebook/util/SimUtil;->convertToMSimConstantsSub(I)I

    move-result v2

    return v2
.end method

.method private querySync(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    .locals 13
    .param p1, "selection"    # Ljava/lang/String;
    .param p2, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 445
    const/4 v7, 0x0

    .line 446
    .local v7, "callsCursorIndex":I
    const/4 v12, 0x1

    .line 447
    .local v12, "voipCursorIndex":I
    const/4 v0, 0x2

    new-array v8, v0, [Landroid/database/Cursor;

    .line 448
    .local v8, "cursors":[Landroid/database/Cursor;
    const/4 v11, 0x0

    .line 450
    .local v11, "voipCursor":Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/CallLog$Calls;->CONTENT_URI_WITH_VOICEMAIL:Landroid/net/Uri;

    .line 451
    sget-object v2, Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper;->CALL_LOG_PROJECTION:[Ljava/lang/String;

    const-string/jumbo v5, "date DESC"

    move-object v3, p1

    move-object v4, p2

    .line 450
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, v8, v1

    .line 453
    const/4 v0, 0x0

    aget-object v0, v8, v0

    if-nez v0, :cond_0

    .line 454
    return-object v6

    .line 457
    :cond_0
    iget-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper;->mVoipIsInstalled:Z

    if-eqz v0, :cond_3

    .line 460
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/sonyericsson/provider/VoIPCallLog$VoIPCalls;->CONTENT_URI:Landroid/net/Uri;

    .line 461
    sget-object v2, Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper;->VOIP_CALL_LOG_PROJECTION:[Ljava/lang/String;

    .line 462
    const-string/jumbo v5, "date DESC"

    move-object v3, p1

    move-object v4, p2

    .line 460
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 464
    .local v11, "voipCursor":Landroid/database/Cursor;
    if-eqz v11, :cond_3

    .line 465
    new-instance v0, Landroid/database/MatrixCursor;

    sget-object v1, Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper;->VOIP_CALL_LOG_PROJECTION:[Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    const/4 v1, 0x1

    aput-object v0, v8, v1

    .line 466
    :goto_0
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 468
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper;->VOIP_CALL_LOG_PROJECTION:[Ljava/lang/String;

    array-length v0, v0

    new-array v10, v0, [Ljava/lang/Object;

    .line 469
    .local v10, "row":[Ljava/lang/Object;
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_1
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper;->VOIP_CALL_LOG_PROJECTION:[Ljava/lang/String;

    array-length v0, v0

    if-ge v9, v0, :cond_1

    .line 470
    invoke-interface {v11, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v10, v9

    .line 469
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 472
    :cond_1
    const/4 v0, 0x1

    aget-object v0, v8, v0

    check-cast v0, Landroid/database/MatrixCursor;

    invoke-virtual {v0, v10}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 476
    .end local v9    # "i":I
    .end local v10    # "row":[Ljava/lang/Object;
    .end local v11    # "voipCursor":Landroid/database/Cursor;
    :catchall_0
    move-exception v0

    .line 477
    if-eqz v11, :cond_2

    .line 478
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 476
    :cond_2
    throw v0

    .line 477
    :cond_3
    if-eqz v11, :cond_4

    .line 478
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 482
    :cond_4
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper;->buildExtensionMapBySelection(Ljava/lang/String;)V

    .line 483
    new-instance v0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor;

    iget-boolean v2, p0, Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper;->mIsNumberMatchingMethodStrict:Z

    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper;->mBrandName:Ljava/lang/String;

    .line 484
    iget-object v4, p0, Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper;->mCollapseCallLogMatchingMethod:Ljava/lang/String;

    iget-boolean v5, p0, Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper;->mIsConferenceCallEnabled:Z

    iget-object v6, p0, Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper;->mExtendedCallLogHelper:Lcom/sonyericsson/android/socialphonebook/calllog/ExtendedCallLogHelper;

    move-object v1, v8

    .line 483
    invoke-direct/range {v0 .. v6}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor;-><init>([Landroid/database/Cursor;ZLjava/lang/String;Ljava/lang/String;ZLcom/sonyericsson/android/socialphonebook/calllog/ExtendedCallLogHelper;)V

    return-object v0
.end method

.method private readOldCallLogFilterPreference(Landroid/content/Context;I)I
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "defaultState"    # I

    .prologue
    .line 389
    invoke-static {p1}, Lcom/sonyericsson/android/socialphonebook/util/SharedPrefsUtil;->getSPBSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 390
    .local v0, "oldPrefs":Landroid/content/SharedPreferences;
    const-string/jumbo v1, "call_log_filter"

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    return v1
.end method


# virtual methods
.method public containsConferenceCall([I)Z
    .locals 1
    .param p1, "callIds"    # [I

    .prologue
    .line 1001
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper;->mExtendedCallLogHelper:Lcom/sonyericsson/android/socialphonebook/calllog/ExtendedCallLogHelper;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/socialphonebook/calllog/ExtendedCallLogHelper;->containsConferenceCall([I)Z

    move-result v0

    return v0
.end method

.method public containsHdVoiceCall([I)Z
    .locals 1
    .param p1, "callIds"    # [I

    .prologue
    .line 1044
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper;->mExtendedCallLogHelper:Lcom/sonyericsson/android/socialphonebook/calllog/ExtendedCallLogHelper;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/socialphonebook/calllog/ExtendedCallLogHelper;->containsHdVoiceCall([I)Z

    move-result v0

    return v0
.end method

.method public containsVideoCall([I)Z
    .locals 1
    .param p1, "callIds"    # [I

    .prologue
    .line 991
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper;->mExtendedCallLogHelper:Lcom/sonyericsson/android/socialphonebook/calllog/ExtendedCallLogHelper;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/socialphonebook/calllog/ExtendedCallLogHelper;->containsVideoCall([I)Z

    move-result v0

    return v0
.end method

.method public deleteAll()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 592
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "CallLogContentHelper delete"

    invoke-static {v0, v1}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 593
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 594
    iget-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper;->mVoipIsInstalled:Z

    if-eqz v0, :cond_0

    .line 595
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/sonyericsson/provider/VoIPCallLog$VoIPCalls;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 591
    :cond_0
    return-void
.end method

.method public deleteById(ILjava/lang/String;)I
    .locals 6
    .param p1, "id"    # I
    .param p2, "provider"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 575
    sget-object v1, Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "CallLogContentHelper delete id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 576
    const/4 v0, 0x0

    .line 577
    .local v0, "result":I
    const-string/jumbo v1, "skype:"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 578
    iget-boolean v1, p0, Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper;->mVoipIsInstalled:Z

    if-eqz v1, :cond_0

    .line 579
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v2, Lcom/sonyericsson/provider/VoIPCallLog$VoIPCalls;->CONTENT_URI:Landroid/net/Uri;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "_ID = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 584
    :cond_0
    :goto_0
    return v0

    .line 582
    :cond_1
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v2, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "_ID = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public deleteByIds([ILjava/lang/String;)I
    .locals 8
    .param p1, "ids"    # [I
    .param p2, "protocol"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    const/4 v7, 0x0

    .line 541
    sget-object v4, Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper;->TAG:Ljava/lang/String;

    invoke-static {v4}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->begin(Ljava/lang/String;)V

    .line 542
    if-eqz p1, :cond_0

    array-length v4, p1

    if-nez v4, :cond_1

    .line 543
    :cond_0
    sget-object v3, Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "Illegal arguments."

    invoke-static {v3, v4}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 544
    const/4 v3, -0x1

    return v3

    .line 546
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 547
    .local v2, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v4, "_id"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " IN ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 548
    array-length v4, p1

    :goto_0
    if-ge v3, v4, :cond_2

    aget v0, p1, v3

    .line 549
    .local v0, "callsId":I
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 548
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 551
    .end local v0    # "callsId":I
    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    const/16 v4, 0x29

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 553
    const/4 v1, 0x0

    .line 554
    .local v1, "result":I
    const-string/jumbo v3, "skype:"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 555
    iget-boolean v3, p0, Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper;->mVoipIsInstalled:Z

    if-eqz v3, :cond_3

    .line 556
    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v4, Lcom/sonyericsson/provider/VoIPCallLog$VoIPCalls;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5, v7}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 562
    :cond_3
    :goto_1
    sget-object v3, Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Protocol: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", deleted result: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 563
    sget-object v3, Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper;->TAG:Ljava/lang/String;

    invoke-static {v3}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->end(Ljava/lang/String;)V

    .line 564
    return v1

    .line 559
    :cond_4
    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v4, Landroid/provider/CallLog$Calls;->CONTENT_URI_WITH_VOICEMAIL:Landroid/net/Uri;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5, v7}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    goto :goto_1
.end method

.method public deleteBySelection(Ljava/lang/String;)V
    .locals 3
    .param p1, "selection"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 600
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, p1, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 601
    iget-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper;->mVoipIsInstalled:Z

    if-eqz v0, :cond_0

    .line 602
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/sonyericsson/provider/VoIPCallLog$VoIPCalls;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, p1, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 599
    :cond_0
    return-void
.end method

.method public deleteVoicemailByUri(Landroid/net/Uri;)I
    .locals 4
    .param p1, "voicemailUri"    # Landroid/net/Uri;

    .prologue
    const/4 v3, 0x0

    .line 746
    sget-object v1, Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "CallLogContentHelper delete voicemail record"

    invoke-static {v1, v2}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 747
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {v1, p1, v3, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 748
    .local v0, "result":I
    return v0
.end method

.method public getExcludeUnknownPhoneNumberQueryCommandCreator(Landroid/content/Context;)Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper$QueryCommandCreator;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 185
    sget-object v1, Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper;->TAG:Ljava/lang/String;

    invoke-static {v1}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->begin(Ljava/lang/String;)V

    .line 186
    const/4 v1, 0x1

    invoke-direct {p0, p1, v1}, Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper;->getFilteredCallLogQueryCommandCreator(Landroid/content/Context;Z)Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper$QueryCommandCreator;

    move-result-object v0

    .line 187
    .local v0, "Qcc":Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper$QueryCommandCreator;
    sget-object v1, Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper;->TAG:Ljava/lang/String;

    invoke-static {v1}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->end(Ljava/lang/String;)V

    .line 188
    return-object v0
.end method

.method public getFilteredSelection(Landroid/content/Context;Z)Ljava/lang/String;
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "excludeUnknownPhoneNumber"    # Z
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 206
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper;->getCallLogFilterSelection(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 207
    .local v0, "filter":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "date > "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper;->getCutoffTime()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " AND "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 208
    const-string/jumbo v3, "number IS NOT NULL "

    .line 207
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 208
    const-string/jumbo v3, " AND "

    .line 207
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 209
    const-string/jumbo v3, "deleted = 0 "

    .line 207
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 210
    .local v1, "selection":Ljava/lang/String;
    if-eqz p2, :cond_0

    .line 220
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " AND number <> \'\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 222
    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 223
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " AND "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 226
    :cond_1
    return-object v1
.end method

.method public getLastCallId([I)I
    .locals 1
    .param p1, "callIds"    # [I

    .prologue
    .line 1053
    const/4 v0, 0x0

    aget v0, p1, v0

    return v0
.end method

.method public getLocation(I)Ljava/lang/String;
    .locals 1
    .param p1, "callId"    # I

    .prologue
    .line 1021
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper;->mExtendedCallLogHelper:Lcom/sonyericsson/android/socialphonebook/calllog/ExtendedCallLogHelper;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/socialphonebook/calllog/ExtendedCallLogHelper;->getLocation(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getQueryCommandCreator(Landroid/content/Context;)Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper$QueryCommandCreator;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 173
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper;->getFilteredCallLogQueryCommandCreator(Landroid/content/Context;Z)Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper$QueryCommandCreator;

    move-result-object v0

    return-object v0
.end method

.method public getSubject(I)Ljava/lang/String;
    .locals 1
    .param p1, "callId"    # I

    .prologue
    .line 1011
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper;->mExtendedCallLogHelper:Lcom/sonyericsson/android/socialphonebook/calllog/ExtendedCallLogHelper;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/socialphonebook/calllog/ExtendedCallLogHelper;->getSubject(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVoicemailCount()I
    .locals 10

    .prologue
    .line 1077
    const/4 v6, 0x0

    .line 1078
    .local v6, "count":I
    const/4 v7, 0x0

    .line 1079
    .local v7, "cursor":Landroid/database/Cursor;
    const-string/jumbo v3, ""

    .line 1082
    .local v3, "selection":Ljava/lang/String;
    :try_start_0
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 1083
    .local v9, "strBuilder":Ljava/lang/StringBuilder;
    const-string/jumbo v0, "type=4"

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1085
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "number IS NOT NULL  AND deleted = 0  AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1088
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/CallLog$Calls;->CONTENT_URI_WITH_VOICEMAIL:Landroid/net/Uri;

    .line 1089
    sget-object v2, Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper;->CALL_LOG_PROJECTION:[Ljava/lang/String;

    const-string/jumbo v5, "date DESC"

    const/4 v4, 0x0

    .line 1088
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 1094
    .end local v7    # "cursor":Landroid/database/Cursor;
    .end local v9    # "strBuilder":Ljava/lang/StringBuilder;
    :goto_0
    if-eqz v7, :cond_0

    .line 1095
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v6

    .line 1096
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 1099
    :cond_0
    return v6

    .line 1091
    .restart local v7    # "cursor":Landroid/database/Cursor;
    :catch_0
    move-exception v8

    .line 1092
    .local v8, "e":Ljava/lang/Exception;
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getVoicemailCount querySync("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ") failed. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public hasCallItems(I)Z
    .locals 1
    .param p1, "callId"    # I

    .prologue
    .line 947
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper;->mExtendedCallLogHelper:Lcom/sonyericsson/android/socialphonebook/calllog/ExtendedCallLogHelper;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/socialphonebook/calllog/ExtendedCallLogHelper;->hasCallItems(I)Z

    move-result v0

    return v0
.end method

.method public hasEnrichedCalls([I)Z
    .locals 5
    .param p1, "callIds"    # [I

    .prologue
    const/4 v2, 0x0

    .line 956
    array-length v3, p1

    move v1, v2

    :goto_0
    if-ge v1, v3, :cond_1

    aget v0, p1, v1

    .line 957
    .local v0, "callId":I
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper;->isEnrichedCall(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 958
    const/4 v1, 0x1

    return v1

    .line 956
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 961
    .end local v0    # "callId":I
    :cond_1
    return v2
.end method

.method public isAnsweringMachineVoicemail(Landroid/net/Uri;)Z
    .locals 3
    .param p1, "voicemailUri"    # Landroid/net/Uri;

    .prologue
    const/4 v1, 0x0

    .line 759
    if-nez p1, :cond_0

    return v1

    .line 762
    :cond_0
    const-string/jumbo v2, "source_package"

    .line 761
    invoke-virtual {p1, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 763
    .local v0, "sourcePackage":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 764
    const-string/jumbo v1, "com.android.server.telecom"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 763
    :cond_1
    return v1
.end method

.method public isConferenceCall(I)Z
    .locals 1
    .param p1, "callId"    # I

    .prologue
    .line 981
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper;->mExtendedCallLogHelper:Lcom/sonyericsson/android/socialphonebook/calllog/ExtendedCallLogHelper;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/socialphonebook/calllog/ExtendedCallLogHelper;->isConferenceCall(I)Z

    move-result v0

    return v0
.end method

.method public isEnrichedCall(I)Z
    .locals 2
    .param p1, "callId"    # I

    .prologue
    const/4 v0, 0x1

    .line 951
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper;->hasCallItems(I)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper;->isUrgent(I)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper;->getLocation(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 952
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper;->getSubject(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    .line 951
    :cond_0
    return v0
.end method

.method public isHdVoiceCall(I)Z
    .locals 1
    .param p1, "callId"    # I

    .prologue
    .line 1032
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper;->mExtendedCallLogHelper:Lcom/sonyericsson/android/socialphonebook/calllog/ExtendedCallLogHelper;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/socialphonebook/calllog/ExtendedCallLogHelper;->isHdVoiceCall(I)Z

    move-result v0

    return v0
.end method

.method public isShowAllCallsFilter(Landroid/content/Context;)Z
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 1063
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 1064
    const-string/jumbo v2, "call_log_filter"

    .line 1066
    sget v3, Lcom/sonyericsson/android/socialphonebook/ui/CallLogFilterDialogFragment;->DEFAULT_SETTING:I

    .line 1065
    invoke-direct {p0, p1, v3}, Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper;->readOldCallLogFilterPreference(Landroid/content/Context;I)I

    move-result v3

    .line 1063
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 1067
    .local v0, "state":I
    sget-object v1, Lcom/sonyericsson/android/socialphonebook/ui/CallLogFilterDialogFragment$CallLogFilterType;->ALL_CALLS:Lcom/sonyericsson/android/socialphonebook/ui/CallLogFilterDialogFragment$CallLogFilterType;

    invoke-virtual {v1}, Lcom/sonyericsson/android/socialphonebook/ui/CallLogFilterDialogFragment$CallLogFilterType;->ordinal()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isUrgent(I)Z
    .locals 1
    .param p1, "callId"    # I

    .prologue
    .line 937
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper;->mExtendedCallLogHelper:Lcom/sonyericsson/android/socialphonebook/calllog/ExtendedCallLogHelper;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/socialphonebook/calllog/ExtendedCallLogHelper;->isUrgent(I)Z

    move-result v0

    return v0
.end method

.method public isVideoCall(I)Z
    .locals 1
    .param p1, "callId"    # I

    .prologue
    .line 971
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper;->mExtendedCallLogHelper:Lcom/sonyericsson/android/socialphonebook/calllog/ExtendedCallLogHelper;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/socialphonebook/calllog/ExtendedCallLogHelper;->isVideoCall(I)Z

    move-result v0

    return v0
.end method

.method public isVoicemailFilterOnly(Landroid/content/Context;)Z
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 372
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 373
    const-string/jumbo v2, "call_log_filter"

    .line 375
    sget v3, Lcom/sonyericsson/android/socialphonebook/ui/CallLogFilterDialogFragment;->DEFAULT_SETTING:I

    .line 374
    invoke-direct {p0, p1, v3}, Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper;->readOldCallLogFilterPreference(Landroid/content/Context;I)I

    move-result v3

    .line 372
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 377
    .local v0, "state":I
    sget-object v1, Lcom/sonyericsson/android/socialphonebook/ui/CallLogFilterDialogFragment$CallLogFilterType;->VOICEMAIL_CALLS:Lcom/sonyericsson/android/socialphonebook/ui/CallLogFilterDialogFragment$CallLogFilterType;

    invoke-virtual {v1}, Lcom/sonyericsson/android/socialphonebook/ui/CallLogFilterDialogFragment$CallLogFilterType;->ordinal()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public markNewVoicemailsAsold()V
    .locals 6

    .prologue
    .line 789
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "type"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 790
    .local v2, "where":Ljava/lang/StringBuilder;
    const-string/jumbo v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 791
    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 792
    const-string/jumbo v3, " AND "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 793
    const-string/jumbo v3, "new"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 794
    const-string/jumbo v3, "=1"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 796
    new-instance v1, Landroid/content/ContentValues;

    const/4 v3, 0x1

    invoke-direct {v1, v3}, Landroid/content/ContentValues;-><init>(I)V

    .line 797
    .local v1, "values":Landroid/content/ContentValues;
    const-string/jumbo v3, "new"

    const-string/jumbo v4, "0"

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 799
    :try_start_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "tel:"

    const/4 v5, 0x0

    invoke-virtual {p0, v1, v3, v5, v4}, Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper;->update(Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 787
    :goto_0
    return-void

    .line 800
    :catch_0
    move-exception v0

    .line 803
    .local v0, "e":Landroid/database/sqlite/SQLiteDiskIOException;
    sget-object v3, Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Failed to clear new voicemail calls flag: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public queryAsync(Ljava/lang/Runnable;)V
    .locals 3
    .param p1, "queryCommand"    # Ljava/lang/Runnable;

    .prologue
    .line 427
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper;->mExecutorLock:Ljava/lang/Object;

    monitor-enter v1

    .line 428
    :try_start_0
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper;->mListenerLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 429
    :try_start_1
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper;->mListener:Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper$OnQueryCompleteListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper;->mExecutor:Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper$UiUpdaterExecutor;

    if-eqz v0, :cond_0

    .line 430
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper;->mExecutor:Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper$UiUpdaterExecutor;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper$UiUpdaterExecutor;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit v1

    .line 426
    return-void

    .line 428
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v2

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 427
    :catchall_1
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public querySyncByIds([ILjava/lang/String;)Landroid/database/Cursor;
    .locals 9
    .param p1, "ids"    # [I
    .param p2, "protocol"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    const/4 v4, 0x0

    .line 499
    sget-object v1, Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper;->TAG:Ljava/lang/String;

    invoke-static {v1}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->begin(Ljava/lang/String;)V

    .line 500
    if-eqz p1, :cond_0

    array-length v1, p1

    if-nez v1, :cond_1

    .line 501
    :cond_0
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "Illegal arguments."

    invoke-static {v0, v1}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 502
    return-object v4

    .line 505
    :cond_1
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 506
    .local v8, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "_id"

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " IN ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 507
    array-length v1, p1

    :goto_0
    if-ge v0, v1, :cond_2

    aget v6, p1, v0

    .line 508
    .local v6, "id":I
    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 507
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 510
    .end local v6    # "id":I
    :cond_2
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/16 v1, 0x29

    invoke-virtual {v8, v0, v1}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 512
    const/4 v7, 0x0

    .line 513
    .local v7, "result":Landroid/database/Cursor;
    const-string/jumbo v0, "skype:"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 514
    iget-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper;->mVoipIsInstalled:Z

    if-eqz v0, :cond_3

    .line 515
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/sonyericsson/provider/VoIPCallLog$VoIPCalls;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper;->VOIP_CALL_LOG_PROJECTION:[Ljava/lang/String;

    .line 516
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v5, "date DESC"

    .line 515
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 525
    .end local v7    # "result":Landroid/database/Cursor;
    :goto_1
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper;->buildExtensionMapByIds([I)V

    .line 526
    sget-object v1, Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Protocol: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, ", cursor size: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 527
    if-nez v7, :cond_5

    const-string/jumbo v0, "NULL"

    .line 526
    :goto_2
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 528
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper;->TAG:Ljava/lang/String;

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->end(Ljava/lang/String;)V

    .line 529
    return-object v7

    .line 518
    .restart local v7    # "result":Landroid/database/Cursor;
    :cond_3
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "Voip is not installed"

    invoke-static {v0, v1}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 521
    :cond_4
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/CallLog$Calls;->CONTENT_URI_WITH_VOICEMAIL:Landroid/net/Uri;

    sget-object v2, Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper;->CALL_LOG_PROJECTION:[Ljava/lang/String;

    .line 522
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v5, "date DESC"

    .line 521
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .local v7, "result":Landroid/database/Cursor;
    goto :goto_1

    .line 527
    .end local v7    # "result":Landroid/database/Cursor;
    :cond_5
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_2
.end method

.method public queryVoicemailContent(Landroid/net/Uri;[Ljava/lang/String;)Landroid/database/Cursor;
    .locals 7
    .param p1, "voicemailUri"    # Landroid/net/Uri;
    .param p2, "projection"    # [Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 738
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "CallLogContentHelper query voicemail content"

    invoke-static {v0, v1}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 740
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper;->mContentResolver:Landroid/content/ContentResolver;

    move-object v1, p1

    move-object v2, p2

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 742
    .local v6, "cursorVoicemail":Landroid/database/Cursor;
    return-object v6
.end method

.method public queryVoicemailStatus(Landroid/net/Uri;[Ljava/lang/String;)Landroid/database/Cursor;
    .locals 7
    .param p1, "voicemailStatusUri"    # Landroid/net/Uri;
    .param p2, "projection"    # [Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 779
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "CallLogContentHelper query voicemail status content"

    invoke-static {v0, v1}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 781
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper;->mContentResolver:Landroid/content/ContentResolver;

    move-object v1, p1

    move-object v2, p2

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 784
    .local v6, "cursorVoicemailstatus":Landroid/database/Cursor;
    return-object v6
.end method

.method public readCallLogFilterPreference(Landroid/content/Context;)I
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 381
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 382
    const-string/jumbo v2, "call_log_filter"

    .line 384
    sget v3, Lcom/sonyericsson/android/socialphonebook/ui/CallLogFilterDialogFragment;->DEFAULT_SETTING:I

    .line 383
    invoke-direct {p0, p1, v3}, Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper;->readOldCallLogFilterPreference(Landroid/content/Context;I)I

    move-result v3

    .line 381
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 385
    .local v0, "state":I
    return v0
.end method

.method public registerExtendedCallLogObserver(Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper$QueryCommandCreator;)V
    .locals 4
    .param p1, "queryCommandCreator"    # Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper$QueryCommandCreator;

    .prologue
    .line 896
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/sonymobile/providers/extendedcalllog/ExtendedCallLog;->CONTENT_URI:Landroid/net/Uri;

    .line 897
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper;->getExtendedCallLogObserver(Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper$QueryCommandCreator;)Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper$ExtendedCallLogObserver;

    move-result-object v2

    .line 896
    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 895
    return-void
.end method

.method public release()V
    .locals 2

    .prologue
    .line 625
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper;->mExecutorLock:Ljava/lang/Object;

    monitor-enter v1

    .line 626
    :try_start_0
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper;->mExecutor:Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper$UiUpdaterExecutor;

    if-eqz v0, :cond_0

    .line 627
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper;->mExecutor:Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper$UiUpdaterExecutor;

    invoke-virtual {v0}, Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper$UiUpdaterExecutor;->tryStop()V

    .line 628
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper;->mExecutor:Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper$UiUpdaterExecutor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    .line 631
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper;->mListenerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 632
    const/4 v1, 0x0

    :try_start_1
    iput-object v1, p0, Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper;->mListener:Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper$OnQueryCompleteListener;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    monitor-exit v0

    .line 624
    return-void

    .line 625
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 631
    :catchall_1
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public resetFilter(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 359
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 360
    .local v0, "sharedPrefEditor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v1, "call_log_filter"

    .line 361
    sget-object v2, Lcom/sonyericsson/android/socialphonebook/ui/CallLogFilterDialogFragment$CallLogFilterType;->ALL_CALLS:Lcom/sonyericsson/android/socialphonebook/ui/CallLogFilterDialogFragment$CallLogFilterType;

    invoke-virtual {v2}, Lcom/sonyericsson/android/socialphonebook/ui/CallLogFilterDialogFragment$CallLogFilterType;->ordinal()I

    move-result v2

    .line 360
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 362
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 358
    return-void
.end method

.method public setAllVisualVoicemailsAsRead()V
    .locals 6

    .prologue
    .line 811
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 812
    .local v2, "where":Ljava/lang/StringBuilder;
    const-string/jumbo v3, "COALESCE(source_package,\'\') = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 813
    const-string/jumbo v3, "\'com.sonymobile.visualvoicemail\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 815
    new-instance v1, Landroid/content/ContentValues;

    const/4 v3, 0x1

    invoke-direct {v1, v3}, Landroid/content/ContentValues;-><init>(I)V

    .line 816
    .local v1, "values":Landroid/content/ContentValues;
    const-string/jumbo v3, "is_read"

    const-string/jumbo v4, "1"

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 818
    :try_start_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "tel:"

    const/4 v5, 0x0

    invoke-virtual {p0, v1, v3, v5, v4}, Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper;->update(Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 810
    :goto_0
    return-void

    .line 819
    :catch_0
    move-exception v0

    .line 822
    .local v0, "e":Landroid/database/sqlite/SQLiteDiskIOException;
    sget-object v3, Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Failed to set all visual voicemails as read: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setBrandName(Ljava/lang/String;)V
    .locals 0
    .param p1, "brandName"    # Ljava/lang/String;

    .prologue
    .line 413
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper;->mBrandName:Ljava/lang/String;

    .line 412
    return-void
.end method

.method public setCallLogCollapsingMatchingMethod(Ljava/lang/String;)V
    .locals 0
    .param p1, "collapseCallLogMatchingMethod"    # Ljava/lang/String;

    .prologue
    .line 417
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper;->mCollapseCallLogMatchingMethod:Ljava/lang/String;

    .line 416
    return-void
.end method

.method public setVoicemailFilterOnly(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 347
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 348
    .local v0, "sharedPrefEditor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v1, "call_log_filter"

    .line 349
    sget-object v2, Lcom/sonyericsson/android/socialphonebook/ui/CallLogFilterDialogFragment$CallLogFilterType;->VOICEMAIL_CALLS:Lcom/sonyericsson/android/socialphonebook/ui/CallLogFilterDialogFragment$CallLogFilterType;

    invoke-virtual {v2}, Lcom/sonyericsson/android/socialphonebook/ui/CallLogFilterDialogFragment$CallLogFilterType;->ordinal()I

    move-result v2

    .line 348
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 350
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 346
    return-void
.end method

.method public unregisterExtendedCallLogObserver()V
    .locals 2

    .prologue
    .line 901
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper;->mExtendedCallLogObserver:Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper$ExtendedCallLogObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 900
    return-void
.end method

.method public update(Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)I
    .locals 4
    .param p1, "values"    # Landroid/content/ContentValues;
    .param p2, "where"    # Ljava/lang/String;
    .param p3, "selectionArgs"    # [Ljava/lang/String;
    .param p4, "provider"    # Ljava/lang/String;

    .prologue
    .line 607
    sget-object v2, Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "CallLogContentHelper update"

    invoke-static {v2, v3}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 608
    const/4 v1, 0x0

    .line 609
    .local v1, "update":I
    const-string/jumbo v2, "skype:"

    invoke-virtual {v2, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 610
    iget-boolean v2, p0, Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper;->mVoipIsInstalled:Z

    if-eqz v2, :cond_0

    .line 611
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v3, Lcom/sonyericsson/provider/VoIPCallLog$VoIPCalls;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2, v3, p1, p2, p3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 621
    :cond_0
    :goto_0
    return v1

    .line 615
    :cond_1
    :try_start_0
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v3, Landroid/provider/CallLog$Calls;->CONTENT_URI_WITH_VOICEMAIL:Landroid/net/Uri;

    invoke-virtual {v2, v3, p1, p2, p3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 617
    :catch_0
    move-exception v0

    .line 618
    .local v0, "ex":Landroid/database/sqlite/SQLiteFullException;
    sget-object v2, Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "Cannot write to call log. Memory full."

    invoke-static {v2, v3}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public updateVoicemailToReadByUri(Landroid/net/Uri;)I
    .locals 5
    .param p1, "voicemailUri"    # Landroid/net/Uri;

    .prologue
    const/4 v4, 0x0

    .line 768
    sget-object v2, Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "CallLogContentHelper update voicemail record to old"

    invoke-static {v2, v3}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 770
    new-instance v1, Landroid/content/ContentValues;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/content/ContentValues;-><init>(I)V

    .line 771
    .local v1, "values":Landroid/content/ContentValues;
    const-string/jumbo v2, "is_read"

    const-string/jumbo v3, "1"

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 773
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {v2, p1, v1, v4, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 775
    .local v0, "result":I
    return v0
.end method
