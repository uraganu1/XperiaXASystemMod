.class public Lcom/sonyericsson/conversations/starstatus/StarStatusUtil;
.super Ljava/lang/Object;
.source "StarStatusUtil.java"


# static fields
.field private static synthetic -com_sonyericsson_conversations_starstatus_StarStatusApi$ImStarStatusSwitchesValues:[I


# direct methods
.method private static synthetic -getcom_sonyericsson_conversations_starstatus_StarStatusApi$ImStarStatusSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/sonyericsson/conversations/starstatus/StarStatusUtil;->-com_sonyericsson_conversations_starstatus_StarStatusApi$ImStarStatusSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sonyericsson/conversations/starstatus/StarStatusUtil;->-com_sonyericsson_conversations_starstatus_StarStatusApi$ImStarStatusSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/sonyericsson/conversations/starstatus/StarStatusApi$ImStarStatus;->values()[Lcom/sonyericsson/conversations/starstatus/StarStatusApi$ImStarStatus;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/sonyericsson/conversations/starstatus/StarStatusApi$ImStarStatus;->NOT_STARRED:Lcom/sonyericsson/conversations/starstatus/StarStatusApi$ImStarStatus;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/starstatus/StarStatusApi$ImStarStatus;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_3

    :goto_0
    :try_start_1
    sget-object v1, Lcom/sonyericsson/conversations/starstatus/StarStatusApi$ImStarStatus;->NO_STAR_STATUS:Lcom/sonyericsson/conversations/starstatus/StarStatusApi$ImStarStatus;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/starstatus/StarStatusApi$ImStarStatus;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_2

    :goto_1
    :try_start_2
    sget-object v1, Lcom/sonyericsson/conversations/starstatus/StarStatusApi$ImStarStatus;->STARRED:Lcom/sonyericsson/conversations/starstatus/StarStatusApi$ImStarStatus;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/starstatus/StarStatusApi$ImStarStatus;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_1

    :goto_2
    :try_start_3
    sget-object v1, Lcom/sonyericsson/conversations/starstatus/StarStatusApi$ImStarStatus;->UNKNOWN:Lcom/sonyericsson/conversations/starstatus/StarStatusApi$ImStarStatus;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/starstatus/StarStatusApi$ImStarStatus;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_0

    :goto_3
    sput-object v0, Lcom/sonyericsson/conversations/starstatus/StarStatusUtil;->-com_sonyericsson_conversations_starstatus_StarStatusApi$ImStarStatusSwitchesValues:[I

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

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static imStarStatus2XmsStarStatus(Lcom/sonyericsson/conversations/starstatus/StarStatusApi$ImStarStatus;)I
    .locals 3
    .param p0, "imStarStatus"    # Lcom/sonyericsson/conversations/starstatus/StarStatusApi$ImStarStatus;

    .prologue
    const/4 v2, 0x2

    .line 32
    invoke-static {}, Lcom/sonyericsson/conversations/starstatus/StarStatusUtil;->-getcom_sonyericsson_conversations_starstatus_StarStatusApi$ImStarStatusSwitchesValues()[I

    move-result-object v0

    invoke-virtual {p0}, Lcom/sonyericsson/conversations/starstatus/StarStatusApi$ImStarStatus;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 42
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "im star status "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 43
    const-string/jumbo v1, " is unknown"

    .line 42
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonymobile/conversations/util/ErrorUtil;->handleUnsupportedCase(Ljava/lang/String;)V

    .line 44
    return v2

    .line 34
    :pswitch_0
    return v2

    .line 36
    :pswitch_1
    const/4 v0, 0x0

    return v0

    .line 38
    :pswitch_2
    const/4 v0, 0x1

    return v0

    .line 40
    :pswitch_3
    const/4 v0, 0x3

    return v0

    .line 32
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static xmsStarStatus2ImStarStatus(I)Lcom/sonyericsson/conversations/starstatus/StarStatusApi$ImStarStatus;
    .locals 2
    .param p0, "xmsStarStatus"    # I

    .prologue
    .line 14
    packed-switch p0, :pswitch_data_0

    .line 24
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "Xms star status "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 25
    const-string/jumbo v1, " is unknown"

    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonymobile/conversations/util/ErrorUtil;->handleUnsupportedCase(Ljava/lang/String;)V

    .line 26
    sget-object v0, Lcom/sonyericsson/conversations/starstatus/StarStatusApi$ImStarStatus;->NO_STAR_STATUS:Lcom/sonyericsson/conversations/starstatus/StarStatusApi$ImStarStatus;

    return-object v0

    .line 16
    :pswitch_0
    sget-object v0, Lcom/sonyericsson/conversations/starstatus/StarStatusApi$ImStarStatus;->NO_STAR_STATUS:Lcom/sonyericsson/conversations/starstatus/StarStatusApi$ImStarStatus;

    return-object v0

    .line 18
    :pswitch_1
    sget-object v0, Lcom/sonyericsson/conversations/starstatus/StarStatusApi$ImStarStatus;->STARRED:Lcom/sonyericsson/conversations/starstatus/StarStatusApi$ImStarStatus;

    return-object v0

    .line 20
    :pswitch_2
    sget-object v0, Lcom/sonyericsson/conversations/starstatus/StarStatusApi$ImStarStatus;->NOT_STARRED:Lcom/sonyericsson/conversations/starstatus/StarStatusApi$ImStarStatus;

    return-object v0

    .line 22
    :pswitch_3
    sget-object v0, Lcom/sonyericsson/conversations/starstatus/StarStatusApi$ImStarStatus;->UNKNOWN:Lcom/sonyericsson/conversations/starstatus/StarStatusApi$ImStarStatus;

    return-object v0

    .line 14
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method
