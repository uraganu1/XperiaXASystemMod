.class public Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor;
.super Landroid/database/MergeCursor;
.source "CallLogMergeCursor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor$LogItemMode;,
        Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor$CollapseMode;,
        Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor$LogItem;,
        Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor$CallLogHelper;,
        Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor$CollapsedLogItem;
    }
.end annotation


# static fields
.field private static synthetic -com_sonyericsson_android_socialphonebook_calllog_CallLogMergeCursor$CollapseModeSwitchesValues:[I = null

.field public static final EXTRAS_KEY_CALL_ITEMS:Ljava/lang/String; = "call_items"

.field public static final VOICEMAIL_RECORD_READ:I = 0x1


# instance fields
.field private mBrandName:Ljava/lang/String;

.field private mBundles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation
.end field

.field private mCollapseCallLogMatchingMethod:Ljava/lang/String;

.field private mCursorCallLog:Landroid/database/Cursor;

.field private mCursorVoIPCallLog:Landroid/database/Cursor;

.field private mExtendedCallLogHelper:Lcom/sonyericsson/android/socialphonebook/calllog/ExtendedCallLogHelper;

.field private mIndexTable:[I

.field private mIsConferenceCallEnabled:Z

.field private mIsNumberMatchingMethodStrict:Z


# direct methods
.method private static synthetic -getcom_sonyericsson_android_socialphonebook_calllog_CallLogMergeCursor$CollapseModeSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor;->-com_sonyericsson_android_socialphonebook_calllog_CallLogMergeCursor$CollapseModeSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor;->-com_sonyericsson_android_socialphonebook_calllog_CallLogMergeCursor$CollapseModeSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor$CollapseMode;->values()[Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor$CollapseMode;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor$CollapseMode;->COLLAPSE:Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor$CollapseMode;

    invoke-virtual {v1}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor$CollapseMode;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_3

    :goto_0
    :try_start_1
    sget-object v1, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor$CollapseMode;->COLLAPSE_CONFERENCE:Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor$CollapseMode;

    invoke-virtual {v1}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor$CollapseMode;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_2

    :goto_1
    :try_start_2
    sget-object v1, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor$CollapseMode;->COLLAPSE_VOICEMAIL:Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor$CollapseMode;

    invoke-virtual {v1}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor$CollapseMode;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_1

    :goto_2
    :try_start_3
    sget-object v1, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor$CollapseMode;->NEW:Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor$CollapseMode;

    invoke-virtual {v1}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor$CollapseMode;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_0

    :goto_3
    sput-object v0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor;->-com_sonyericsson_android_socialphonebook_calllog_CallLogMergeCursor$CollapseModeSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_3

    :catch_1
    move-exception v1

    goto :goto_2

    :catch_2
    move-exception v1

    goto :goto_1

    :catch_3
    move-exception v1

    goto :goto_0
.end method

.method public constructor <init>([Landroid/database/Cursor;ZLjava/lang/String;)V
    .locals 7
    .param p1, "cursors"    # [Landroid/database/Cursor;
    .param p2, "isNumberMatchingMethodStrict"    # Z
    .param p3, "collapseCallLogMatchingMethod"    # Ljava/lang/String;

    .prologue
    .line 92
    new-instance v6, Lcom/sonyericsson/android/socialphonebook/calllog/ExtendedCallLogHelper;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    invoke-direct {v6, v0}, Lcom/sonyericsson/android/socialphonebook/calllog/ExtendedCallLogHelper;-><init>(Landroid/util/SparseArray;)V

    .line 91
    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v6}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor;-><init>([Landroid/database/Cursor;ZLjava/lang/String;Ljava/lang/String;ZLcom/sonyericsson/android/socialphonebook/calllog/ExtendedCallLogHelper;)V

    .line 90
    return-void
.end method

.method public constructor <init>([Landroid/database/Cursor;ZLjava/lang/String;Ljava/lang/String;ZLcom/sonyericsson/android/socialphonebook/calllog/ExtendedCallLogHelper;)V
    .locals 1
    .param p1, "cursors"    # [Landroid/database/Cursor;
    .param p2, "isNumberMatchingMethodStrict"    # Z
    .param p3, "brandName"    # Ljava/lang/String;
    .param p4, "collapseCallLogMatchingMethod"    # Ljava/lang/String;
    .param p5, "isConferenceCallEnabled"    # Z
    .param p6, "extendedCallLogHelper"    # Lcom/sonyericsson/android/socialphonebook/calllog/ExtendedCallLogHelper;

    .prologue
    .line 102
    invoke-direct {p0, p1}, Landroid/database/MergeCursor;-><init>([Landroid/database/Cursor;)V

    .line 51
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor;->mBrandName:Ljava/lang/String;

    .line 103
    iput-boolean p2, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor;->mIsNumberMatchingMethodStrict:Z

    .line 104
    iput-boolean p5, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor;->mIsConferenceCallEnabled:Z

    .line 107
    const/4 v0, 0x0

    aget-object v0, p1, v0

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor;->mCursorCallLog:Landroid/database/Cursor;

    .line 108
    const/4 v0, 0x1

    aget-object v0, p1, v0

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor;->mCursorVoIPCallLog:Landroid/database/Cursor;

    .line 109
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor;->mBundles:Ljava/util/List;

    .line 110
    iput-object p3, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor;->mBrandName:Ljava/lang/String;

    .line 111
    iput-object p4, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor;->mCollapseCallLogMatchingMethod:Ljava/lang/String;

    .line 112
    iput-object p6, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor;->mExtendedCallLogHelper:Lcom/sonyericsson/android/socialphonebook/calllog/ExtendedCallLogHelper;

    .line 113
    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor;->group()V

    .line 101
    return-void
.end method

.method private areVoicemailAndMissed(Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor$LogItem;Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor$LogItem;)Z
    .locals 4
    .param p1, "currItem"    # Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor$LogItem;
    .param p2, "prevItem"    # Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor$LogItem;

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x3

    const/4 v1, 0x1

    .line 707
    iget v0, p2, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor$LogItem;->type:I

    if-ne v0, v3, :cond_0

    iget v0, p1, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor$LogItem;->type:I

    if-ne v0, v2, :cond_0

    .line 708
    return v1

    .line 710
    :cond_0
    iget v0, p1, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor$LogItem;->type:I

    if-ne v0, v3, :cond_1

    iget v0, p2, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor$LogItem;->type:I

    if-ne v0, v2, :cond_1

    .line 711
    return v1

    .line 713
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private extractLogItemFromCursor(Landroid/database/Cursor;)Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor$LogItem;
    .locals 4
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 781
    new-instance v0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor$LogItem;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor$LogItem;-><init>(Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor$LogItem;)V

    .line 782
    .local v0, "logItem":Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor$LogItem;
    const-string/jumbo v1, "number"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor$LogItem;->number:Ljava/lang/String;

    .line 783
    const-string/jumbo v1, "numberlabel"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor$LogItem;->numberLabel:Ljava/lang/String;

    .line 784
    const-string/jumbo v1, "name"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor$LogItem;->name:Ljava/lang/String;

    .line 785
    const-string/jumbo v1, "type"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor$LogItem;->type:I

    .line 786
    const-string/jumbo v1, "_id"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor$LogItem;->id:I

    .line 787
    const-string/jumbo v1, "presentation"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor$LogItem;->presentation:I

    .line 788
    const-string/jumbo v1, "date"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor$LogItem;->date:J

    .line 789
    const-string/jumbo v1, "voicemail_uri"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor$LogItem;->voicemailUri:Ljava/lang/String;

    .line 790
    const-string/jumbo v1, "is_read"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor$LogItem;->isRead:I

    .line 791
    return-object v0
.end method

.method private getCollapseMode(Ljava/util/Map;Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor$LogItem;Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor$LogItem;Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor$LogItem;)Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor$CollapseMode;
    .locals 7
    .param p2, "currentItem"    # Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor$LogItem;
    .param p3, "prevItem"    # Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor$LogItem;
    .param p4, "nextItem"    # Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor$LogItem;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor$LogItemMode;",
            ">;",
            "Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor$LogItem;",
            "Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor$LogItem;",
            "Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor$LogItem;",
            ")",
            "Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor$CollapseMode;"
        }
    .end annotation

    .prologue
    .local p1, "numbersAppeared":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor$LogItemMode;>;"
    const/4 v6, 0x4

    .line 482
    if-nez p3, :cond_0

    .line 483
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor$CollapseMode;->NEW:Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor$CollapseMode;

    return-object v0

    .line 487
    :cond_0
    invoke-direct {p0, p2, p3}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor;->isCollapsableConferenceCallPair(Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor$LogItem;Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor$LogItem;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 488
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor$CollapseMode;->COLLAPSE_CONFERENCE:Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor$CollapseMode;

    return-object v0

    .line 492
    :cond_1
    invoke-direct {p0, p4, p2}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor;->isCollapsableConferenceCallPair(Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor$LogItem;Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor$LogItem;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 493
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor$CollapseMode;->NEW:Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor$CollapseMode;

    return-object v0

    .line 498
    :cond_2
    invoke-direct {p0, p2, p3}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor;->isConferenceAndRegularCall(Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor$LogItem;Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor$LogItem;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 499
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor$CollapseMode;->NEW:Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor$CollapseMode;

    return-object v0

    .line 503
    :cond_3
    invoke-direct {p0, p2, p3}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor;->isCollapsableVoicemailAndMissedCallPair(Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor$LogItem;Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor$LogItem;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 504
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor$CollapseMode;->COLLAPSE_VOICEMAIL:Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor$CollapseMode;

    return-object v0

    .line 508
    :cond_4
    invoke-direct {p0, p2, p4}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor;->isCollapsableVoicemailAndMissedCallPair(Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor$LogItem;Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor$LogItem;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 509
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor$CollapseMode;->NEW:Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor$CollapseMode;

    return-object v0

    .line 513
    :cond_5
    iget-object v0, p2, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor$LogItem;->number:Ljava/lang/String;

    iget-object v1, p3, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor$LogItem;->number:Ljava/lang/String;

    .line 514
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor;->mBrandName:Ljava/lang/String;

    iget-boolean v3, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor;->mIsNumberMatchingMethodStrict:Z

    iget-object v4, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor;->mCollapseCallLogMatchingMethod:Ljava/lang/String;

    .line 515
    iget v5, p2, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor$LogItem;->presentation:I

    .line 513
    invoke-static/range {v0 .. v5}, Lcom/sonyericsson/android/socialphonebook/util/PhoneNumberHelper;->arePhoneNumbersEqual(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_6

    .line 516
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor$CollapseMode;->NEW:Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor$CollapseMode;

    return-object v0

    .line 520
    :cond_6
    iget-object v0, p2, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor$LogItem;->voicemailUri:Ljava/lang/String;

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VisualVoicemailHelper;->isVisualVoicemail(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 521
    iget-object v0, p3, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor$LogItem;->voicemailUri:Ljava/lang/String;

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VisualVoicemailHelper;->isVisualVoicemail(Ljava/lang/String;)Z

    move-result v0

    .line 520
    if-eqz v0, :cond_7

    .line 522
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor$CollapseMode;->COLLAPSE:Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor$CollapseMode;

    return-object v0

    .line 526
    :cond_7
    iget v0, p2, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor$LogItem;->type:I

    if-ne v0, v6, :cond_8

    .line 527
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor$CollapseMode;->NEW:Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor$CollapseMode;

    return-object v0

    .line 531
    :cond_8
    iget v0, p3, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor$LogItem;->type:I

    if-ne v0, v6, :cond_9

    .line 532
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor$CollapseMode;->NEW:Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor$CollapseMode;

    return-object v0

    .line 536
    :cond_9
    iget-object v0, p3, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor$LogItem;->collapseMode:Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor$CollapseMode;

    sget-object v1, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor$CollapseMode;->COLLAPSE_CONFERENCE:Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor$CollapseMode;

    if-ne v0, v1, :cond_a

    .line 537
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor$CollapseMode;->NEW:Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor$CollapseMode;

    return-object v0

    .line 541
    :cond_a
    invoke-direct {p0, p3, p2}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor;->isVideoCallAndRegularCall(Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor$LogItem;Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor$LogItem;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 542
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor$CollapseMode;->NEW:Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor$CollapseMode;

    return-object v0

    .line 546
    :cond_b
    iget-object v0, p3, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor$LogItem;->collapseMode:Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor$CollapseMode;

    sget-object v1, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor$CollapseMode;->COLLAPSE_VOICEMAIL:Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor$CollapseMode;

    if-ne v0, v1, :cond_c

    .line 547
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor$CollapseMode;->NEW:Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor$CollapseMode;

    return-object v0

    .line 551
    :cond_c
    invoke-direct {p0, p1, p2, p3}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor;->isNewlyMissedCall(Ljava/util/Map;Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor$LogItem;Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor$LogItem;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 552
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor$CollapseMode;->NEW:Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor$CollapseMode;

    return-object v0

    .line 556
    :cond_d
    invoke-direct {p0, p3, p2, p1}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor;->isNotMissedAfterNewlyMissed(Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor$LogItem;Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor$LogItem;Ljava/util/Map;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 557
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor$CollapseMode;->NEW:Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor$CollapseMode;

    return-object v0

    .line 561
    :cond_e
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor;->mExtendedCallLogHelper:Lcom/sonyericsson/android/socialphonebook/calllog/ExtendedCallLogHelper;

    iget v1, p2, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor$LogItem;->id:I

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/socialphonebook/calllog/ExtendedCallLogHelper;->isConferenceCall(I)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 562
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor$CollapseMode;->NEW:Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor$CollapseMode;

    return-object v0

    .line 565
    :cond_f
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor$CollapseMode;->COLLAPSE:Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor$CollapseMode;

    return-object v0
.end method

.method private group()V
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor;->mCursorCallLog:Landroid/database/Cursor;

    if-nez v0, :cond_0

    .line 136
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor;->mCursorVoIPCallLog:Landroid/database/Cursor;

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor;->groupByNumber(Landroid/database/Cursor;)V

    .line 134
    :goto_0
    return-void

    .line 137
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor;->mCursorVoIPCallLog:Landroid/database/Cursor;

    if-nez v0, :cond_1

    .line 138
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor;->mCursorCallLog:Landroid/database/Cursor;

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor;->groupByNumber(Landroid/database/Cursor;)V

    goto :goto_0

    .line 140
    :cond_1
    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor;->merge()V

    .line 141
    invoke-direct {p0, p0}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor;->groupByNumber(Landroid/database/Cursor;)V

    goto :goto_0
.end method

.method private groupByNumber(Landroid/database/Cursor;)V
    .locals 18
    .param p1, "aCursor"    # Landroid/database/Cursor;

    .prologue
    .line 356
    if-eqz p1, :cond_0

    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-gtz v2, :cond_1

    .line 357
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor;->mBundles:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 358
    const/4 v2, 0x0

    new-array v2, v2, [I

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor;->mIndexTable:[I

    .line 359
    return-void

    .line 362
    :cond_1
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->getCount()I

    move-result v17

    .line 363
    .local v17, "size":I
    new-instance v11, Landroid/util/SparseArray;

    invoke-direct {v11}, Landroid/util/SparseArray;-><init>()V

    .line 365
    .local v11, "logItems":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor$CollapsedLogItem;>;"
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 366
    const/16 v16, 0x0

    .line 367
    .local v16, "prevItem":Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor$LogItem;
    const/4 v8, 0x0

    .line 368
    .local v8, "currItem":Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor$LogItem;
    const/4 v14, 0x0

    .line 369
    .local v14, "nextItem":Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor$LogItem;
    const/4 v10, -0x1

    .line 383
    .local v10, "lastUsedKey":I
    invoke-static {}, Lcom/google/common/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v15

    .line 385
    .local v15, "numbersAppeared":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor$LogItemMode;>;"
    const/4 v9, 0x0

    .end local v8    # "currItem":Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor$LogItem;
    .end local v14    # "nextItem":Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor$LogItem;
    .end local v16    # "prevItem":Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor$LogItem;
    .local v9, "i":I
    :goto_0
    move/from16 v0, v17

    if-ge v9, v0, :cond_8

    .line 387
    if-nez v9, :cond_2

    .line 388
    invoke-direct/range {p0 .. p1}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor;->extractLogItemFromCursor(Landroid/database/Cursor;)Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor$LogItem;

    move-result-object v8

    .line 395
    :cond_2
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 396
    invoke-direct/range {p0 .. p1}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor;->extractLogItemFromCursor(Landroid/database/Cursor;)Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor$LogItem;

    move-result-object v14

    .line 400
    :cond_3
    iget-object v2, v8, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor$LogItem;->number:Ljava/lang/String;

    invoke-interface {v15, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 401
    const/4 v13, 0x0

    .line 402
    .local v13, "mode":Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor$LogItemMode;
    iget v2, v8, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor$LogItem;->type:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_6

    .line 403
    if-eqz v16, :cond_5

    .line 404
    iget-object v2, v8, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor$LogItem;->number:Ljava/lang/String;

    .line 405
    move-object/from16 v0, v16

    iget-object v3, v0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor$LogItem;->number:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor;->mBrandName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor;->mIsNumberMatchingMethodStrict:Z

    .line 406
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor;->mCollapseCallLogMatchingMethod:Ljava/lang/String;

    iget v7, v8, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor$LogItem;->presentation:I

    .line 404
    invoke-static/range {v2 .. v7}, Lcom/sonyericsson/android/socialphonebook/util/PhoneNumberHelper;->arePhoneNumbersEqual(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;I)Z

    move-result v2

    .line 403
    if-eqz v2, :cond_5

    .line 407
    move-object/from16 v0, v16

    iget-object v2, v0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor$LogItem;->number:Ljava/lang/String;

    invoke-interface {v15, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    .end local v13    # "mode":Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor$LogItemMode;
    check-cast v13, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor$LogItemMode;

    .line 414
    .local v13, "mode":Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor$LogItemMode;
    :goto_1
    iget-object v2, v8, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor$LogItem;->number:Ljava/lang/String;

    invoke-interface {v15, v2, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 417
    .end local v13    # "mode":Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor$LogItemMode;
    :cond_4
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v15, v8, v1, v14}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor;->getCollapseMode(Ljava/util/Map;Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor$LogItem;Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor$LogItem;Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor$LogItem;)Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor$CollapseMode;

    move-result-object v12

    .line 418
    .local v12, "mode":Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor$CollapseMode;
    iput-object v12, v8, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor$LogItem;->collapseMode:Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor$CollapseMode;

    .line 420
    invoke-static {}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor;->-getcom_sonyericsson_android_socialphonebook_calllog_CallLogMergeCursor$CollapseModeSwitchesValues()[I

    move-result-object v2

    invoke-virtual {v12}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor$CollapseMode;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 440
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Unknown collapsing mode: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 409
    .end local v12    # "mode":Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor$CollapseMode;
    .local v13, "mode":Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor$LogItemMode;
    :cond_5
    sget-object v13, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor$LogItemMode;->NEWLY_MISSED:Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor$LogItemMode;

    .local v13, "mode":Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor$LogItemMode;
    goto :goto_1

    .line 412
    .local v13, "mode":Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor$LogItemMode;
    :cond_6
    sget-object v13, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor$LogItemMode;->NORMAL:Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor$LogItemMode;

    .local v13, "mode":Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor$LogItemMode;
    goto :goto_1

    .line 422
    .end local v13    # "mode":Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor$LogItemMode;
    .restart local v12    # "mode":Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor$CollapseMode;
    :pswitch_0
    new-instance v2, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor$CollapsedLogItem;

    const/4 v3, 0x1

    new-array v3, v3, [Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor$LogItem;

    const/4 v4, 0x0

    aput-object v8, v3, v4

    invoke-static {v3}, Lcom/google/common/collect/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor$CollapsedLogItem;-><init>(Ljava/util/List;)V

    invoke-virtual {v11, v9, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 424
    move v10, v9

    .line 426
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v15, v8, v1}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor;->shouldNormalizePreviousItem(Ljava/util/Map;Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor$LogItem;Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor$LogItem;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 427
    move-object/from16 v0, v16

    iget-object v2, v0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor$LogItem;->number:Ljava/lang/String;

    sget-object v3, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor$LogItemMode;->NORMAL:Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor$LogItemMode;

    invoke-interface {v15, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 443
    :cond_7
    :goto_2
    move-object/from16 v16, v8

    .line 444
    .local v16, "prevItem":Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor$LogItem;
    move-object v8, v14

    .line 385
    .local v8, "currItem":Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor$LogItem;
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_0

    .line 436
    .end local v8    # "currItem":Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor$LogItem;
    .end local v16    # "prevItem":Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor$LogItem;
    :pswitch_1
    invoke-virtual {v11, v10}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor$CollapsedLogItem;

    invoke-virtual {v2, v8}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor$CollapsedLogItem;->add(Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor$LogItem;)V

    goto :goto_2

    .line 447
    .end local v12    # "mode":Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor$CollapseMode;
    :cond_8
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v11}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor;->packResultsToBundles(Landroid/database/Cursor;Landroid/util/SparseArray;)V

    .line 355
    return-void

    .line 420
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private isCollapsableConferenceCallPair(Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor$LogItem;Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor$LogItem;)Z
    .locals 8
    .param p1, "currItem"    # Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor$LogItem;
    .param p2, "prevItem"    # Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor$LogItem;

    .prologue
    const/4 v4, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 619
    iget-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor;->mIsConferenceCallEnabled:Z

    if-nez v0, :cond_0

    .line 620
    return v6

    .line 623
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor;->mExtendedCallLogHelper:Lcom/sonyericsson/android/socialphonebook/calllog/ExtendedCallLogHelper;

    iget v1, p1, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor$LogItem;->id:I

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/socialphonebook/calllog/ExtendedCallLogHelper;->isConferenceCall(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 624
    return v6

    .line 627
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor;->mExtendedCallLogHelper:Lcom/sonyericsson/android/socialphonebook/calllog/ExtendedCallLogHelper;

    iget v1, p2, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor$LogItem;->id:I

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/socialphonebook/calllog/ExtendedCallLogHelper;->isConferenceCall(I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 628
    return v6

    .line 631
    :cond_2
    iget-wide v0, p1, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor$LogItem;->date:J

    iget-wide v2, p2, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor$LogItem;->date:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_3

    .line 632
    return v6

    .line 635
    :cond_3
    iget v0, p1, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor$LogItem;->type:I

    if-eq v0, v4, :cond_4

    iget v0, p1, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor$LogItem;->type:I

    if-eq v0, v7, :cond_4

    .line 636
    return v6

    .line 639
    :cond_4
    iget v0, p2, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor$LogItem;->type:I

    if-eq v0, v4, :cond_5

    iget v0, p2, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor$LogItem;->type:I

    if-eq v0, v7, :cond_5

    .line 640
    return v6

    .line 643
    :cond_5
    iget-object v0, p1, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor$LogItem;->number:Ljava/lang/String;

    iget-object v1, p2, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor$LogItem;->number:Ljava/lang/String;

    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor;->mBrandName:Ljava/lang/String;

    .line 644
    iget-boolean v3, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor;->mIsNumberMatchingMethodStrict:Z

    iget-object v4, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor;->mCollapseCallLogMatchingMethod:Ljava/lang/String;

    .line 645
    iget v5, p1, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor$LogItem;->presentation:I

    .line 643
    invoke-static/range {v0 .. v5}, Lcom/sonyericsson/android/socialphonebook/util/PhoneNumberHelper;->arePhoneNumbersEqual(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 646
    return v6

    .line 649
    :cond_6
    return v7
.end method

.method private isCollapsableVoicemailAndMissedCallPair(Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor$LogItem;Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor$LogItem;)Z
    .locals 7
    .param p1, "currItem"    # Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor$LogItem;
    .param p2, "prevItem"    # Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor$LogItem;

    .prologue
    const/4 v6, 0x0

    .line 689
    iget-object v0, p1, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor$LogItem;->number:Ljava/lang/String;

    iget-object v1, p2, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor$LogItem;->number:Ljava/lang/String;

    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor;->mBrandName:Ljava/lang/String;

    .line 690
    iget-boolean v3, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor;->mIsNumberMatchingMethodStrict:Z

    iget-object v4, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor;->mCollapseCallLogMatchingMethod:Ljava/lang/String;

    .line 691
    iget v5, p1, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor$LogItem;->presentation:I

    .line 689
    invoke-static/range {v0 .. v5}, Lcom/sonyericsson/android/socialphonebook/util/PhoneNumberHelper;->arePhoneNumbersEqual(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 692
    return v6

    .line 695
    :cond_0
    iget-wide v0, p1, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor$LogItem;->date:J

    iget-wide v2, p2, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor$LogItem;->date:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 696
    return v6

    .line 699
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor;->areVoicemailAndMissed(Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor$LogItem;Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor$LogItem;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 700
    const/4 v0, 0x1

    return v0

    .line 703
    :cond_2
    return v6
.end method

.method private isConferenceAndRegularCall(Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor$LogItem;Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor$LogItem;)Z
    .locals 4
    .param p1, "currItem"    # Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor$LogItem;
    .param p2, "prevItem"    # Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor$LogItem;

    .prologue
    const/4 v0, 0x0

    .line 662
    iget-boolean v1, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor;->mIsConferenceCallEnabled:Z

    if-nez v1, :cond_0

    .line 663
    return v0

    .line 666
    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor;->mExtendedCallLogHelper:Lcom/sonyericsson/android/socialphonebook/calllog/ExtendedCallLogHelper;

    iget v2, p1, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor$LogItem;->id:I

    invoke-virtual {v1, v2}, Lcom/sonyericsson/android/socialphonebook/calllog/ExtendedCallLogHelper;->isConferenceCall(I)Z

    move-result v1

    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor;->mExtendedCallLogHelper:Lcom/sonyericsson/android/socialphonebook/calllog/ExtendedCallLogHelper;

    .line 667
    iget v3, p2, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor$LogItem;->id:I

    .line 666
    invoke-virtual {v2, v3}, Lcom/sonyericsson/android/socialphonebook/calllog/ExtendedCallLogHelper;->isConferenceCall(I)Z

    move-result v2

    if-eq v1, v2, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method private isNewlyMissedCall(Ljava/util/Map;Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor$LogItem;Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor$LogItem;)Z
    .locals 5
    .param p2, "currItem"    # Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor$LogItem;
    .param p3, "prevItem"    # Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor$LogItem;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor$LogItemMode;",
            ">;",
            "Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor$LogItem;",
            "Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor$LogItem;",
            ")Z"
        }
    .end annotation

    .prologue
    .local p1, "numbersAppeared":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor$LogItemMode;>;"
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 732
    iget v1, p2, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor$LogItem;->type:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    .line 733
    return v3

    .line 739
    :cond_0
    iget-object v1, p2, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor$LogItem;->number:Ljava/lang/String;

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    .line 740
    return v4

    .line 748
    :cond_1
    iget-object v1, p2, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor$LogItem;->number:Ljava/lang/String;

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor$LogItemMode;

    .line 749
    .local v0, "currentLogItemMode":Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor$LogItemMode;
    sget-object v1, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor$LogItemMode;->NEWLY_MISSED:Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor$LogItemMode;

    if-ne v0, v1, :cond_2

    .line 750
    return v4

    .line 754
    :cond_2
    return v3
.end method

.method private isNotMissedAfterNewlyMissed(Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor$LogItem;Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor$LogItem;Ljava/util/Map;)Z
    .locals 4
    .param p1, "prevItem"    # Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor$LogItem;
    .param p2, "currItem"    # Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor$LogItem;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor$LogItem;",
            "Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor$LogItem;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor$LogItemMode;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p3, "numbersAppeared":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor$LogItemMode;>;"
    const/4 v3, 0x3

    const/4 v2, 0x0

    .line 589
    if-nez p1, :cond_0

    .line 590
    return v2

    .line 593
    :cond_0
    iget-object v1, p1, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor$LogItem;->number:Ljava/lang/String;

    invoke-interface {p3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor$LogItemMode;

    .line 594
    .local v0, "prevItemMode":Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor$LogItemMode;
    iget v1, p1, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor$LogItem;->type:I

    if-ne v1, v3, :cond_1

    iget v1, p2, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor$LogItem;->type:I

    if-eq v1, v3, :cond_1

    .line 595
    sget-object v1, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor$LogItemMode;->NEWLY_MISSED:Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor$LogItemMode;

    if-ne v0, v1, :cond_1

    .line 596
    const/4 v1, 0x1

    return v1

    .line 599
    :cond_1
    return v2
.end method

.method private isVideoCallAndRegularCall(Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor$LogItem;Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor$LogItem;)Z
    .locals 4
    .param p1, "prevItem"    # Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor$LogItem;
    .param p2, "currentItem"    # Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor$LogItem;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 580
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor;->mExtendedCallLogHelper:Lcom/sonyericsson/android/socialphonebook/calllog/ExtendedCallLogHelper;

    iget v3, p2, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor$LogItem;->id:I

    invoke-virtual {v2, v3}, Lcom/sonyericsson/android/socialphonebook/calllog/ExtendedCallLogHelper;->isVideoCall(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 581
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor;->mExtendedCallLogHelper:Lcom/sonyericsson/android/socialphonebook/calllog/ExtendedCallLogHelper;

    iget v3, p1, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor$LogItem;->id:I

    invoke-virtual {v2, v3}, Lcom/sonyericsson/android/socialphonebook/calllog/ExtendedCallLogHelper;->isVideoCall(I)Z

    move-result v2

    .line 580
    if-nez v2, :cond_1

    .line 582
    :cond_0
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor;->mExtendedCallLogHelper:Lcom/sonyericsson/android/socialphonebook/calllog/ExtendedCallLogHelper;

    iget v3, p2, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor$LogItem;->id:I

    invoke-virtual {v2, v3}, Lcom/sonyericsson/android/socialphonebook/calllog/ExtendedCallLogHelper;->isVideoCall(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 583
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor;->mExtendedCallLogHelper:Lcom/sonyericsson/android/socialphonebook/calllog/ExtendedCallLogHelper;

    iget v3, p1, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor$LogItem;->id:I

    invoke-virtual {v2, v3}, Lcom/sonyericsson/android/socialphonebook/calllog/ExtendedCallLogHelper;->isVideoCall(I)Z

    move-result v2

    if-eqz v2, :cond_1

    move v0, v1

    .line 580
    :cond_1
    :goto_0
    return v0

    :cond_2
    move v0, v1

    .line 582
    goto :goto_0
.end method

.method private merge()V
    .locals 13

    .prologue
    const/4 v12, 0x0

    .line 796
    iget-object v7, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor;->mCursorCallLog:Landroid/database/Cursor;

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v1

    .line 797
    .local v1, "callLogSize":I
    iget-object v7, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor;->mCursorVoIPCallLog:Landroid/database/Cursor;

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v6

    .line 798
    .local v6, "voipCallLogCursorSize":I
    add-int v5, v1, v6

    .line 799
    .local v5, "size":I
    new-array v7, v5, [I

    iput-object v7, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor;->mIndexTable:[I

    .line 801
    iget-object v7, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor;->mCursorCallLog:Landroid/database/Cursor;

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 802
    iget-object v7, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor;->mCursorVoIPCallLog:Landroid/database/Cursor;

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 804
    if-nez v1, :cond_0

    const/4 v3, 0x1

    .line 805
    .local v3, "isCallLogCursorEmpty":Z
    :goto_0
    if-nez v6, :cond_1

    const/4 v4, 0x1

    .line 807
    .local v4, "isVoipCallLogCursorEmpty":Z
    :goto_1
    iget-object v7, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor;->mCursorCallLog:Landroid/database/Cursor;

    const-string/jumbo v8, "date"

    invoke-interface {v7, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 808
    .local v0, "INDEX_DATE":I
    const/4 v2, 0x0

    .end local v3    # "isCallLogCursorEmpty":Z
    .end local v4    # "isVoipCallLogCursorEmpty":Z
    .local v2, "i":I
    :goto_2
    if-ge v2, v5, :cond_5

    .line 809
    if-eqz v3, :cond_2

    .line 811
    iget-object v7, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor;->mCursorVoIPCallLog:Landroid/database/Cursor;

    invoke-direct {p0, v2, v1, v7}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor;->setAndCheckForMore(IILandroid/database/Cursor;)Z

    move-result v4

    .line 808
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 804
    .end local v0    # "INDEX_DATE":I
    .end local v2    # "i":I
    :cond_0
    const/4 v3, 0x0

    .restart local v3    # "isCallLogCursorEmpty":Z
    goto :goto_0

    .line 805
    :cond_1
    const/4 v4, 0x0

    .restart local v4    # "isVoipCallLogCursorEmpty":Z
    goto :goto_1

    .line 812
    .end local v3    # "isCallLogCursorEmpty":Z
    .end local v4    # "isVoipCallLogCursorEmpty":Z
    .restart local v0    # "INDEX_DATE":I
    .restart local v2    # "i":I
    :cond_2
    if-eqz v4, :cond_3

    .line 814
    iget-object v7, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor;->mCursorCallLog:Landroid/database/Cursor;

    invoke-direct {p0, v2, v12, v7}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor;->setAndCheckForMore(IILandroid/database/Cursor;)Z

    move-result v3

    .local v3, "isCallLogCursorEmpty":Z
    goto :goto_3

    .line 817
    .end local v3    # "isCallLogCursorEmpty":Z
    :cond_3
    iget-object v7, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor;->mCursorCallLog:Landroid/database/Cursor;

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    iget-object v7, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor;->mCursorVoIPCallLog:Landroid/database/Cursor;

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    cmp-long v7, v8, v10

    if-gez v7, :cond_4

    .line 819
    iget-object v7, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor;->mCursorVoIPCallLog:Landroid/database/Cursor;

    .line 818
    invoke-direct {p0, v2, v1, v7}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor;->setAndCheckForMore(IILandroid/database/Cursor;)Z

    move-result v4

    .local v4, "isVoipCallLogCursorEmpty":Z
    goto :goto_3

    .line 821
    .end local v4    # "isVoipCallLogCursorEmpty":Z
    :cond_4
    iget-object v7, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor;->mCursorCallLog:Landroid/database/Cursor;

    invoke-direct {p0, v2, v12, v7}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor;->setAndCheckForMore(IILandroid/database/Cursor;)Z

    move-result v3

    .restart local v3    # "isCallLogCursorEmpty":Z
    goto :goto_3

    .line 794
    .end local v3    # "isCallLogCursorEmpty":Z
    :cond_5
    return-void
.end method

.method private packResultsToBundles(Landroid/database/Cursor;Landroid/util/SparseArray;)V
    .locals 7
    .param p1, "aCursor"    # Landroid/database/Cursor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            "Landroid/util/SparseArray",
            "<",
            "Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor$CollapsedLogItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 760
    .local p2, "items":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor$CollapsedLogItem;>;"
    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    move-result v5

    .line 761
    .local v5, "size":I
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 762
    .local v0, "bundles":Ljava/util/List;, "Ljava/util/List<Landroid/os/Bundle;>;"
    new-array v3, v5, [I

    .line 763
    .local v3, "indexTable":[I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v5, :cond_1

    .line 764
    invoke-virtual {p2, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    .line 765
    .local v4, "pos":I
    invoke-virtual {p2, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor$CollapsedLogItem;

    .line 766
    .local v1, "currentItems":Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor$CollapsedLogItem;
    invoke-direct {p0, v0, v1}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor;->saveBundle(Ljava/util/List;Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor$CollapsedLogItem;)V

    .line 767
    if-ne p1, p0, :cond_0

    .line 768
    iget-object v6, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor;->mIndexTable:[I

    aget v6, v6, v4

    aput v6, v3, v2

    .line 763
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 770
    :cond_0
    aput v4, v3, v2

    goto :goto_1

    .line 773
    .end local v1    # "currentItems":Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor$CollapsedLogItem;
    .end local v4    # "pos":I
    :cond_1
    iget-object v6, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor;->mBundles:Ljava/util/List;

    if-eqz v6, :cond_2

    .line 774
    iget-object v6, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor;->mBundles:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->clear()V

    .line 776
    :cond_2
    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor;->mBundles:Ljava/util/List;

    .line 777
    iput-object v3, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor;->mIndexTable:[I

    .line 757
    return-void
.end method

.method private saveBundle(Ljava/util/List;Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor$CollapsedLogItem;)V
    .locals 3
    .param p2, "items"    # Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor$CollapsedLogItem;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/os/Bundle;",
            ">;",
            "Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor$CollapsedLogItem;",
            ")V"
        }
    .end annotation

    .prologue
    .line 146
    .local p1, "bundles":Ljava/util/List;, "Ljava/util/List<Landroid/os/Bundle;>;"
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 148
    .local v0, "bundle":Landroid/os/Bundle;
    new-instance v1, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor$CallLogHelper;

    invoke-virtual {p2}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor$CollapsedLogItem;->getLogItems()Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor$CallLogHelper;-><init>(Ljava/util/List;)V

    .line 149
    .local v1, "callLogItems":Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor$CallLogHelper;
    const-string/jumbo v2, "call_items"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 150
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 145
    return-void
.end method

.method private setAndCheckForMore(IILandroid/database/Cursor;)Z
    .locals 2
    .param p1, "i"    # I
    .param p2, "offset"    # I
    .param p3, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 836
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor;->mIndexTable:[I

    invoke-interface {p3}, Landroid/database/Cursor;->getPosition()I

    move-result v1

    add-int/2addr v1, p2

    aput v1, v0, p1

    .line 837
    invoke-interface {p3}, Landroid/database/Cursor;->isLast()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 838
    const/4 v0, 0x1

    return v0

    .line 840
    :cond_0
    invoke-interface {p3}, Landroid/database/Cursor;->moveToNext()Z

    .line 841
    const/4 v0, 0x0

    return v0
.end method

.method private shouldNormalizePreviousItem(Ljava/util/Map;Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor$LogItem;Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor$LogItem;)Z
    .locals 8
    .param p2, "currItem"    # Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor$LogItem;
    .param p3, "prevItem"    # Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor$LogItem;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor$LogItemMode;",
            ">;",
            "Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor$LogItem;",
            "Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor$LogItem;",
            ")Z"
        }
    .end annotation

    .prologue
    .local p1, "numbersAppeared":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor$LogItemMode;>;"
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 456
    if-nez p3, :cond_0

    .line 457
    return v6

    .line 461
    :cond_0
    iget v0, p3, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor$LogItem;->type:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    .line 462
    return v6

    .line 465
    :cond_1
    invoke-direct {p0, p3, p2, p1}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor;->isNotMissedAfterNewlyMissed(Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor$LogItem;Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor$LogItem;Ljava/util/Map;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 466
    return v7

    .line 474
    :cond_2
    iget-object v0, p2, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor$LogItem;->number:Ljava/lang/String;

    iget-object v1, p3, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor$LogItem;->number:Ljava/lang/String;

    .line 475
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor;->mBrandName:Ljava/lang/String;

    iget-boolean v3, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor;->mIsNumberMatchingMethodStrict:Z

    iget-object v4, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor;->mCollapseCallLogMatchingMethod:Ljava/lang/String;

    .line 476
    iget v5, p2, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor$LogItem;->presentation:I

    .line 474
    invoke-static/range {v0 .. v5}, Lcom/sonyericsson/android/socialphonebook/util/PhoneNumberHelper;->arePhoneNumbersEqual(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v6

    :goto_0
    return v0

    :cond_3
    move v0, v7

    goto :goto_0
.end method


# virtual methods
.method public close()V
    .locals 1

    .prologue
    .line 846
    invoke-super {p0}, Landroid/database/MergeCursor;->close()V

    .line 847
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor;->mBundles:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 848
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor;->mBundles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 845
    :cond_0
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor;->mIndexTable:[I

    array-length v0, v0

    return v0
.end method

.method public getExtras()Landroid/os/Bundle;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 118
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor;->getPosition()I

    move-result v0

    .line 119
    .local v0, "pos":I
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor;->mBundles:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 120
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor;->mBundles:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 123
    :cond_0
    return-object v2

    .line 121
    :cond_1
    if-ltz v0, :cond_0

    .line 122
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor;->mBundles:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 125
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor;->mBundles:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    return-object v1
.end method

.method public onMove(II)Z
    .locals 1
    .param p1, "oldPosition"    # I
    .param p2, "newPosition"    # I

    .prologue
    .line 855
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor;->mIndexTable:[I

    aget v0, v0, p2

    invoke-super {p0, p1, v0}, Landroid/database/MergeCursor;->onMove(II)Z

    move-result v0

    return v0
.end method

.method public requery()Z
    .locals 1

    .prologue
    .line 860
    invoke-super {p0}, Landroid/database/MergeCursor;->requery()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 861
    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor;->group()V

    .line 862
    const/4 v0, 0x1

    return v0

    .line 864
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
