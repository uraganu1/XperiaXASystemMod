.class public Lcom/sonyericsson/android/socialphonebook/util/SimUtil;
.super Ljava/lang/Object;
.source "SimUtil.java"


# static fields
.field private static final SIM_TYPE_SIM_TAG:Ljava/lang/String; = "SIM"

.field private static final SIM_TYPE_USIM_TAG:Ljava/lang/String; = "USIM"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static convertToMSimConstantsSub(I)I
    .locals 1
    .param p0, "slotId"    # I

    .prologue
    .line 186
    packed-switch p0, :pswitch_data_0

    .line 192
    const/4 v0, -0x1

    return v0

    .line 188
    :pswitch_0
    const/4 v0, 0x0

    return v0

    .line 190
    :pswitch_1
    const/4 v0, 0x1

    return v0

    .line 186
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static getCallState(Landroid/content/Context;I)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "slotId"    # I

    .prologue
    .line 139
    invoke-static {p1}, Lcom/sonyericsson/android/socialphonebook/util/SimUtil;->getSubId(I)I

    move-result v0

    .line 140
    .local v0, "subId":I
    invoke-static {p0}, Lcom/sonyericsson/android/socialphonebook/util/SimUtil;->getTelephonyManager(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v1

    .line 141
    .local v1, "tm":Landroid/telephony/TelephonyManager;
    if-eqz v1, :cond_1

    .line 142
    const/4 v2, -0x1

    if-ne p1, v2, :cond_0

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v2

    :goto_0
    return v2

    :cond_0
    invoke-virtual {v1, v0}, Landroid/telephony/TelephonyManager;->getCallState(I)I

    move-result v2

    goto :goto_0

    .line 145
    :cond_1
    const/4 v2, 0x0

    return v2
.end method

.method public static getDeviceId(Landroid/content/Context;I)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "slotId"    # I

    .prologue
    const/4 v1, 0x0

    .line 42
    invoke-static {p0}, Lcom/sonyericsson/android/socialphonebook/util/SimUtil;->getTelephonyManager(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    .line 43
    .local v0, "tm":Landroid/telephony/TelephonyManager;
    if-eqz v0, :cond_1

    .line 44
    const/4 v1, -0x1

    if-ne p1, v1, :cond_0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0, p1}, Landroid/telephony/TelephonyManager;->getDeviceId(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 47
    :cond_1
    return-object v1
.end method

.method public static getIccType(I)I
    .locals 6
    .param p0, "slotId"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v4, -0x1

    const/4 v3, 0x0

    .line 107
    invoke-static {}, Lcom/mediatek/telephony/TelephonyManagerEx;->getDefault()Lcom/mediatek/telephony/TelephonyManagerEx;

    move-result-object v0

    .line 108
    .local v0, "tMx":Lcom/mediatek/telephony/TelephonyManagerEx;
    if-eqz v0, :cond_3

    .line 109
    if-ne p0, v4, :cond_1

    .line 110
    invoke-static {v3}, Lcom/sonyericsson/android/socialphonebook/util/SimUtil;->getSubId(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/mediatek/telephony/TelephonyManagerEx;->getIccCardType(I)Ljava/lang/String;

    move-result-object v1

    .line 111
    .local v1, "type":Ljava/lang/String;
    const-string/jumbo v2, "SIM"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 112
    return v3

    .line 113
    :cond_0
    const-string/jumbo v2, "USIM"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 114
    return v5

    .line 117
    .end local v1    # "type":Ljava/lang/String;
    :cond_1
    invoke-static {p0}, Lcom/sonyericsson/android/socialphonebook/util/SimUtil;->getSubId(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/mediatek/telephony/TelephonyManagerEx;->getIccCardType(I)Ljava/lang/String;

    move-result-object v1

    .line 118
    .restart local v1    # "type":Ljava/lang/String;
    const-string/jumbo v2, "SIM"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 119
    return v3

    .line 120
    :cond_2
    const-string/jumbo v2, "USIM"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 121
    return v5

    .line 125
    .end local v1    # "type":Ljava/lang/String;
    :cond_3
    return v4
.end method

.method public static getLine1Number(Landroid/content/Context;I)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "slotId"    # I

    .prologue
    const/4 v2, 0x0

    .line 78
    invoke-static {p1}, Lcom/sonyericsson/android/socialphonebook/util/SimUtil;->getSubId(I)I

    move-result v0

    .line 79
    .local v0, "subId":I
    invoke-static {p0}, Lcom/sonyericsson/android/socialphonebook/util/SimUtil;->getTelephonyManager(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v1

    .line 80
    .local v1, "tm":Landroid/telephony/TelephonyManager;
    if-eqz v1, :cond_1

    .line 81
    const/4 v2, -0x1

    if-ne p1, v2, :cond_0

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v2

    :goto_0
    return-object v2

    :cond_0
    invoke-virtual {v1, v0}, Landroid/telephony/TelephonyManager;->getLine1NumberForSubscriber(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 84
    :cond_1
    return-object v2
.end method

.method public static getNetworkIcon(I)I
    .locals 1
    .param p0, "slotId"    # I

    .prologue
    .line 197
    packed-switch p0, :pswitch_data_0

    .line 203
    const/4 v0, -0x1

    return v0

    .line 199
    :pswitch_0
    const v0, 0x7f020067

    return v0

    .line 201
    :pswitch_1
    const v0, 0x7f020068

    return v0

    .line 197
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static getPhoneType(Landroid/content/Context;I)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "slotId"    # I

    .prologue
    .line 129
    invoke-static {p1}, Lcom/sonyericsson/android/socialphonebook/util/SimUtil;->getSubId(I)I

    move-result v0

    .line 130
    .local v0, "subId":I
    invoke-static {p0}, Lcom/sonyericsson/android/socialphonebook/util/SimUtil;->getTelephonyManager(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v1

    .line 131
    .local v1, "tm":Landroid/telephony/TelephonyManager;
    if-eqz v1, :cond_1

    .line 132
    const/4 v2, -0x1

    if-ne p1, v2, :cond_0

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v2

    :goto_0
    return v2

    :cond_0
    invoke-virtual {v1, v0}, Landroid/telephony/TelephonyManager;->getCurrentPhoneType(I)I

    move-result v2

    goto :goto_0

    .line 135
    :cond_1
    const/4 v2, 0x0

    return v2
.end method

.method public static getSimSerialNumber(Landroid/content/Context;I)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "slotId"    # I

    .prologue
    const/4 v2, 0x0

    .line 51
    invoke-static {p1}, Lcom/sonyericsson/android/socialphonebook/util/SimUtil;->getSubId(I)I

    move-result v0

    .line 52
    .local v0, "subId":I
    invoke-static {p0}, Lcom/sonyericsson/android/socialphonebook/util/SimUtil;->getTelephonyManager(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v1

    .line 53
    .local v1, "tm":Landroid/telephony/TelephonyManager;
    if-eqz v1, :cond_1

    .line 54
    const/4 v2, -0x1

    if-ne p1, v2, :cond_0

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimSerialNumber()Ljava/lang/String;

    move-result-object v2

    :goto_0
    return-object v2

    :cond_0
    invoke-virtual {v1, v0}, Landroid/telephony/TelephonyManager;->getSimSerialNumber(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 57
    :cond_1
    return-object v2
.end method

.method public static getSimState(Landroid/content/Context;I)I
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "slotId"    # I

    .prologue
    .line 88
    invoke-static {p0}, Lcom/sonyericsson/android/socialphonebook/util/SimUtil;->getTelephonyManager(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    .line 89
    .local v0, "tm":Landroid/telephony/TelephonyManager;
    if-eqz v0, :cond_1

    .line 90
    const/4 v1, -0x1

    if-ne p1, v1, :cond_0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v1

    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0, p1}, Landroid/telephony/TelephonyManager;->getSimState(I)I

    move-result v1

    goto :goto_0

    .line 93
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method public static getSlotId(I)I
    .locals 1
    .param p0, "subId"    # I

    .prologue
    .line 38
    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->getSlotId(I)I

    move-result v0

    return v0
.end method

.method private static getSlotId(Ljava/lang/String;)I
    .locals 3
    .param p0, "providerSub"    # Ljava/lang/String;

    .prologue
    .line 215
    const/high16 v1, -0x80000000

    .line 218
    .local v1, "slotId":I
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Lcom/sonyericsson/android/socialphonebook/util/SimUtil;->getSlotId(I)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 223
    :goto_0
    return v1

    .line 219
    :catch_0
    move-exception v0

    .local v0, "ex":Ljava/lang/NumberFormatException;
    goto :goto_0
.end method

.method public static getSubId(I)I
    .locals 3
    .param p0, "slotId"    # I

    .prologue
    const/4 v2, 0x0

    .line 30
    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v0

    .line 31
    .local v0, "subIds":[I
    if-eqz v0, :cond_0

    array-length v1, v0

    if-lez v1, :cond_0

    .line 32
    aget v1, v0, v2

    return v1

    .line 34
    :cond_0
    const/4 v1, -0x1

    return v1
.end method

.method public static getSubscriberId(Landroid/content/Context;I)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "slotId"    # I

    .prologue
    const/4 v2, 0x0

    .line 61
    invoke-static {p1}, Lcom/sonyericsson/android/socialphonebook/util/SimUtil;->getSubId(I)I

    move-result v0

    .line 62
    .local v0, "subId":I
    invoke-static {p0}, Lcom/sonyericsson/android/socialphonebook/util/SimUtil;->getTelephonyManager(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v1

    .line 63
    .local v1, "tm":Landroid/telephony/TelephonyManager;
    if-eqz v1, :cond_1

    .line 64
    const/4 v2, -0x1

    if-ne p1, v2, :cond_0

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v2

    :goto_0
    return-object v2

    :cond_0
    invoke-virtual {v1, v0}, Landroid/telephony/TelephonyManager;->getSubscriberId(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 67
    :cond_1
    return-object v2
.end method

.method private static getTelephonyManager(Landroid/content/Context;)Landroid/telephony/TelephonyManager;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 208
    if-eqz p0, :cond_0

    .line 209
    const-string/jumbo v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    return-object v0

    .line 211
    :cond_0
    return-object v0
.end method

.method public static getVoiceMailNumber(Landroid/content/Context;I)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "slotId"    # I

    .prologue
    const/4 v2, 0x0

    .line 167
    invoke-static {p1}, Lcom/sonyericsson/android/socialphonebook/util/SimUtil;->getSubId(I)I

    move-result v0

    .line 168
    .local v0, "subId":I
    invoke-static {p0}, Lcom/sonyericsson/android/socialphonebook/util/SimUtil;->getTelephonyManager(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v1

    .line 170
    .local v1, "tm":Landroid/telephony/TelephonyManager;
    if-eqz v1, :cond_0

    .line 171
    invoke-virtual {v1, v0}, Landroid/telephony/TelephonyManager;->getVoiceMailNumber(I)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 173
    :cond_0
    return-object v2
.end method

.method public static isSimAbsent(Landroid/content/Context;I)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "slotId"    # I

    .prologue
    .line 157
    invoke-static {p0, p1}, Lcom/sonyericsson/android/socialphonebook/util/SimUtil;->getSimState(Landroid/content/Context;I)I

    move-result v0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
