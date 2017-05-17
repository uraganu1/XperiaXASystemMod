.class public Lcom/sonyericsson/android/socialphonebook/SimCardUtils;
.super Ljava/lang/Object;
.source "SimCardUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/socialphonebook/SimCardUtils$SimType;,
        Lcom/sonyericsson/android/socialphonebook/SimCardUtils$SimUri;
    }
.end annotation


# static fields
.field static final synthetic -assertionsDisabled:Z

.field private static final NO_SLOT:Ljava/lang/String;

.field private static final SIM_KEY_SIMINFO_READY:Ljava/lang/String; = "isSimInfoReady"

.field private static final SIM_KEY_WITHSLOT_FDN_ENABLED:Ljava/lang/String; = "isFdnEnabed"

.field private static final SIM_KEY_WITHSLOT_GET_SIM_INDICATOR_STATE:Ljava/lang/String; = "getSimIndicatorState"

.field private static final SIM_KEY_WITHSLOT_HAS_ICC_CARD:Ljava/lang/String; = "hasIccCard"

.field private static final SIM_KEY_WITHSLOT_IS_USIM:Ljava/lang/String; = "isSimUsimType"

.field private static final SIM_KEY_WITHSLOT_PHB_READY:Ljava/lang/String; = "isPhoneBookReady"

.field private static final SIM_KEY_WITHSLOT_PIN_REQUEST:Ljava/lang/String; = "isSimPinRequest"

.field private static final SIM_KEY_WITHSLOT_PUK_REQUEST:Ljava/lang/String; = "isSimPukRequest"

.field private static final SIM_KEY_WITHSLOT_RADIO_ON:Ljava/lang/String; = "isRadioOn"

.field private static final SIM_KEY_WITHSLOT_SET_RADIO_ON:Ljava/lang/String; = "isSetRadioOn"

.field private static final SIM_KEY_WITHSLOT_SIM_INSERTED:Ljava/lang/String; = "isSimInserted"

.field private static final SIM_KEY_WITHSLOT_SIM_TYPE:Ljava/lang/String; = "getSimTypeBySlot"

.field private static final SIM_KEY_WITHSLOT_STATE_READY:Ljava/lang/String; = "isSimStateReady"

.field private static final TAG:Ljava/lang/String; = "SimCardUtils"

.field private static sPresetSimData:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/content/ContentValues;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const-class v0, Lcom/sonyericsson/android/socialphonebook/SimCardUtils;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Lcom/sonyericsson/android/socialphonebook/SimCardUtils;->-assertionsDisabled:Z

    .line 345
    const/4 v0, 0x0

    sput-object v0, Lcom/sonyericsson/android/socialphonebook/SimCardUtils;->sPresetSimData:Ljava/util/HashMap;

    .line 365
    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/android/socialphonebook/SimCardUtils;->NO_SLOT:Ljava/lang/String;

    .line 24
    return-void

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clearPreSetSimData()V
    .locals 1

    .prologue
    .line 348
    const/4 v0, 0x0

    sput-object v0, Lcom/sonyericsson/android/socialphonebook/SimCardUtils;->sPresetSimData:Ljava/util/HashMap;

    .line 347
    return-void
.end method

.method public static getAnrCount(I)I
    .locals 2
    .param p0, "subId"    # I

    .prologue
    .line 643
    int-to-long v0, p0

    invoke-static {v0, v1}, Lcom/sonyericsson/android/socialphonebook/SlotUtils;->getUsimAnrCount(J)I

    move-result v0

    return v0
.end method

.method public static getIccCardEmailCount(I)I
    .locals 2
    .param p0, "subId"    # I

    .prologue
    .line 652
    int-to-long v0, p0

    invoke-static {v0, v1}, Lcom/sonyericsson/android/socialphonebook/SlotUtils;->getUsimEmailCount(J)I

    move-result v0

    return v0
.end method

.method public static getIccCardType(I)Ljava/lang/String;
    .locals 6
    .param p0, "subId"    # I

    .prologue
    const/4 v5, 0x0

    .line 286
    const-string/jumbo v3, "phoneEx"

    .line 285
    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/mediatek/internal/telephony/ITelephonyEx$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/internal/telephony/ITelephonyEx;

    move-result-object v1

    .line 287
    .local v1, "iTel":Lcom/mediatek/internal/telephony/ITelephonyEx;
    if-nez v1, :cond_0

    .line 288
    const-string/jumbo v3, "SimCardUtils"

    const-string/jumbo v4, "[getIccCardType]iTel == null"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    return-object v5

    .line 292
    :cond_0
    const/4 v2, 0x0

    .line 294
    .local v2, "iccCardType":Ljava/lang/String;
    :try_start_0
    invoke-interface {v1, p0}, Lcom/mediatek/internal/telephony/ITelephonyEx;->getIccCardType(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 300
    .end local v2    # "iccCardType":Ljava/lang/String;
    :goto_0
    const-string/jumbo v3, "SimCardUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "[getIccCardType]subId:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 301
    const-string/jumbo v5, ",iccCardType:"

    .line 300
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    return-object v2

    .line 295
    .restart local v2    # "iccCardType":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 296
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v3, "SimCardUtils"

    const-string/jumbo v4, "[getIccCardType]catch exception:"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method private static getPresetObject(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 4
    .param p0, "key1"    # Ljava/lang/String;
    .param p1, "key2"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 352
    sget-object v2, Lcom/sonyericsson/android/socialphonebook/SimCardUtils;->sPresetSimData:Ljava/util/HashMap;

    if-eqz v2, :cond_0

    .line 353
    sget-object v2, Lcom/sonyericsson/android/socialphonebook/SimCardUtils;->sPresetSimData:Ljava/util/HashMap;

    invoke-virtual {v2, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ContentValues;

    .line 354
    .local v1, "values":Landroid/content/ContentValues;
    if-eqz v1, :cond_0

    .line 355
    invoke-virtual {v1, p1}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 356
    .local v0, "v":Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 357
    return-object v0

    .line 362
    .end local v0    # "v":Ljava/lang/Object;
    .end local v1    # "values":Landroid/content/ContentValues;
    :cond_0
    return-object v3
.end method

.method public static getSimIndicatorState(I)I
    .locals 7
    .param p0, "slotId"    # I

    .prologue
    .line 542
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "getSimIndicatorState"

    invoke-static {v4, v5}, Lcom/sonyericsson/android/socialphonebook/SimCardUtils;->getPresetObject(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 543
    .local v3, "v":Ljava/lang/Integer;
    if-eqz v3, :cond_0

    .line 544
    const-string/jumbo v4, "SimCardUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "[getSimIndicatorState]slotId:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 545
    const-string/jumbo v6, ",v:"

    .line 544
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 546
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    return v4

    .line 549
    :cond_0
    const-string/jumbo v4, "phone"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 550
    .local v0, "iTel":Lcom/android/internal/telephony/ITelephony;
    const-string/jumbo v4, "phoneEx"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/mediatek/internal/telephony/ITelephonyEx$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/internal/telephony/ITelephonyEx;

    move-result-object v1

    .line 551
    .local v1, "iTelEx":Lcom/mediatek/internal/telephony/ITelephonyEx;
    if-nez v0, :cond_1

    .line 552
    const-string/jumbo v4, "SimCardUtils"

    const-string/jumbo v5, "[getSimIndicatorState]iTel is null."

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 553
    const/4 v4, -0x1

    return v4

    .line 556
    :cond_1
    const/4 v2, -0x1

    .line 571
    .local v2, "simIndicatorState":I
    const-string/jumbo v4, "SimCardUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "[getSimIndicatorState]slotId:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 572
    const-string/jumbo v6, "|simIndicatorState:"

    .line 571
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 574
    return v2
.end method

.method public static getSimTagBySlot(I)Ljava/lang/String;
    .locals 6
    .param p0, "subId"    # I

    .prologue
    const/4 v5, 0x0

    .line 612
    int-to-long v2, p0

    invoke-static {v2, v3}, Lcom/sonyericsson/android/socialphonebook/SlotUtils;->isSlotValid(J)Z

    move-result v2

    if-nez v2, :cond_0

    .line 613
    const-string/jumbo v2, "SimCardUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "[getSimTagBySlot]subId:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "is invalid!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 614
    return-object v5

    .line 616
    :cond_0
    const-string/jumbo v2, "phoneEx"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/internal/telephony/ITelephonyEx$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/internal/telephony/ITelephonyEx;

    move-result-object v1

    .line 618
    .local v1, "iTel":Lcom/mediatek/internal/telephony/ITelephonyEx;
    :try_start_0
    invoke-interface {v1, p0}, Lcom/mediatek/internal/telephony/ITelephonyEx;->getIccCardType(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 619
    :catch_0
    move-exception v0

    .line 620
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "SimCardUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "catched exception. subId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 621
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 624
    return-object v5
.end method

.method public static getSimTypeBySubId(I)I
    .locals 8
    .param p0, "subId"    # I

    .prologue
    .line 248
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "getSimTypeBySlot"

    invoke-static {v5, v6}, Lcom/sonyericsson/android/socialphonebook/SimCardUtils;->getPresetObject(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 249
    .local v4, "v":Ljava/lang/Integer;
    if-eqz v4, :cond_0

    .line 250
    const-string/jumbo v5, "SimCardUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "[getSimTypeBySubId]subId:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 251
    const-string/jumbo v7, ",v:"

    .line 250
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v5

    return v5

    .line 254
    :cond_0
    const/4 v3, -0x1

    .line 257
    .local v3, "simType":I
    const-string/jumbo v5, "phoneEx"

    .line 256
    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/mediatek/internal/telephony/ITelephonyEx$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/internal/telephony/ITelephonyEx;

    move-result-object v1

    .line 258
    .local v1, "iTel":Lcom/mediatek/internal/telephony/ITelephonyEx;
    if-nez v1, :cond_1

    .line 259
    const-string/jumbo v5, "SimCardUtils"

    const-string/jumbo v6, "[getSimTypeBySubId]iTel == null"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    return v3

    .line 264
    :cond_1
    :try_start_0
    invoke-interface {v1, p0}, Lcom/mediatek/internal/telephony/ITelephonyEx;->getIccCardType(I)Ljava/lang/String;

    move-result-object v2

    .line 265
    .local v2, "iccCardType":Ljava/lang/String;
    const-string/jumbo v5, "USIM"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 266
    const-string/jumbo v5, "CSIM"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    .line 265
    if-eqz v5, :cond_4

    .line 267
    :cond_2
    const/4 v3, 0x1

    .line 278
    .end local v2    # "iccCardType":Ljava/lang/String;
    :cond_3
    :goto_0
    const-string/jumbo v5, "SimCardUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "[getSimTypeBySubId]subId:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 279
    const-string/jumbo v7, ",simType:"

    .line 278
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    return v3

    .line 268
    .restart local v2    # "iccCardType":Ljava/lang/String;
    :cond_4
    :try_start_1
    const-string/jumbo v5, "UIM"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 269
    const/4 v3, 0x2

    goto :goto_0

    .line 270
    :cond_5
    const-string/jumbo v5, "SIM"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v5

    if-eqz v5, :cond_3

    .line 271
    const/4 v3, 0x0

    goto :goto_0

    .line 273
    .end local v2    # "iccCardType":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 274
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v5, "SimCardUtils"

    const-string/jumbo v6, "[getSimTypeBySubId]catch exception:"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public static getSubIdBySlotId(I)I
    .locals 2
    .param p0, "slotId"    # I

    .prologue
    .line 192
    const/4 v1, -0x1

    if-ne p0, v1, :cond_0

    .line 194
    const/4 p0, 0x0

    .line 196
    :cond_0
    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v0

    .line 197
    .local v0, "subId":[I
    if-eqz v0, :cond_1

    const/4 v1, 0x0

    aget v1, v0, v1

    :goto_0
    return v1

    :cond_1
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubId()I

    move-result v1

    goto :goto_0
.end method

.method public static handlePinMmi(Ljava/lang/String;I)Z
    .locals 6
    .param p0, "input"    # Ljava/lang/String;
    .param p1, "subId"    # I

    .prologue
    .line 586
    const-string/jumbo v3, "phone"

    invoke-static {v3}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    .line 587
    .local v2, "phone":Lcom/android/internal/telephony/ITelephony;
    if-nez v2, :cond_0

    .line 588
    const-string/jumbo v3, "SimCardUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "[handlePinMmi] fail to get phone for subId "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 589
    const/4 v3, 0x0

    return v3

    .line 593
    :cond_0
    :try_start_0
    invoke-interface {v2, p1, p0}, Lcom/android/internal/telephony/ITelephony;->handlePinMmiForSubscriber(ILjava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 599
    :goto_0
    const-string/jumbo v3, "SimCardUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "[handlePinMmi]subId:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "|input:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 600
    const-string/jumbo v5, "|isHandled:"

    .line 599
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 602
    return v1

    .line 594
    :catch_0
    move-exception v0

    .line 595
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v3, "SimCardUtils"

    const-string/jumbo v4, "[handlePinMmi]exception : "

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 596
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 597
    const/4 v1, 0x0

    .local v1, "isHandled":Z
    goto :goto_0
.end method

.method public static hasIccCard(I)Z
    .locals 7
    .param p0, "slotId"    # I

    .prologue
    .line 477
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "hasIccCard"

    invoke-static {v4, v5}, Lcom/sonyericsson/android/socialphonebook/SimCardUtils;->getPresetObject(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    .line 478
    .local v3, "v":Ljava/lang/Boolean;
    if-eqz v3, :cond_0

    .line 479
    const-string/jumbo v4, "SimCardUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "[hasIccCard]slotId:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 480
    const-string/jumbo v6, ",v:"

    .line 479
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 481
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    return v4

    .line 484
    :cond_0
    const-string/jumbo v4, "phone"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    .line 485
    .local v2, "iTel":Lcom/android/internal/telephony/ITelephony;
    if-nez v2, :cond_1

    .line 486
    const-string/jumbo v4, "SimCardUtils"

    const-string/jumbo v5, "[hasIccCard]iTel is null."

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 487
    const/4 v4, 0x0

    return v4

    .line 490
    :cond_1
    const/4 v1, 0x0

    .line 492
    .local v1, "hasIccCard":Z
    :try_start_0
    invoke-interface {v2, p0}, Lcom/android/internal/telephony/ITelephony;->hasIccCardUsingSlotId(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 499
    .end local v1    # "hasIccCard":Z
    :goto_0
    const-string/jumbo v4, "SimCardUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "[hasIccCard]slotId:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 500
    const-string/jumbo v6, "|hasIccCard:"

    .line 499
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 502
    return v1

    .line 493
    .restart local v1    # "hasIccCard":Z
    :catch_0
    move-exception v0

    .line 494
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v4, "SimCardUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "[hasIccCard] failed to check icc card state for slot "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 495
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 496
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isDualSimModeOn(II)Z
    .locals 4
    .param p0, "slotId"    # I
    .param p1, "mode"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 636
    sget-boolean v2, Lcom/sonyericsson/android/socialphonebook/SimCardUtils;->-assertionsDisabled:Z

    if-nez v2, :cond_0

    int-to-long v2, p0

    invoke-static {v2, v3}, Lcom/sonyericsson/android/socialphonebook/SlotUtils;->isSlotValid(J)Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 637
    :cond_0
    sget-boolean v2, Lcom/sonyericsson/android/socialphonebook/SimCardUtils;->-assertionsDisabled:Z

    if-nez v2, :cond_2

    if-ltz p1, :cond_1

    invoke-static {}, Lcom/sonyericsson/android/socialphonebook/SlotUtils;->getSlotCount()I

    move-result v2

    shl-int v2, v0, v2

    if-ge p1, v2, :cond_1

    move v2, v0

    :goto_0
    if-nez v2, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1
    move v2, v1

    goto :goto_0

    .line 638
    :cond_2
    invoke-static {}, Lcom/sonyericsson/android/socialphonebook/SlotUtils;->getFirstSlotId()I

    move-result v2

    sub-int v2, p0, v2

    shl-int v2, v0, v2

    and-int/2addr v2, p1

    if-eqz v2, :cond_3

    :goto_1
    return v0

    :cond_3
    move v0, v1

    goto :goto_1
.end method

.method public static isFdnEnabed(I)Z
    .locals 7
    .param p0, "slotId"    # I

    .prologue
    .line 134
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "isFdnEnabed"

    invoke-static {v4, v5}, Lcom/sonyericsson/android/socialphonebook/SimCardUtils;->getPresetObject(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    .line 135
    .local v3, "v":Ljava/lang/Boolean;
    if-eqz v3, :cond_0

    .line 136
    const-string/jumbo v4, "SimCardUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "[isFdnEnabed]slotId:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 137
    const-string/jumbo v6, ",v:"

    .line 136
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    return v4

    .line 142
    :cond_0
    const-string/jumbo v4, "phoneEx"

    .line 141
    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/mediatek/internal/telephony/ITelephonyEx$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/internal/telephony/ITelephonyEx;

    move-result-object v1

    .line 143
    .local v1, "iTel":Lcom/mediatek/internal/telephony/ITelephonyEx;
    const/4 v2, 0x0

    .line 145
    .local v2, "isFdnEnabled":Z
    if-eqz v1, :cond_1

    .line 146
    :try_start_0
    invoke-static {}, Lcom/sonyericsson/android/socialphonebook/SlotUtils;->isGeminiEnabled()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 147
    invoke-interface {v1, p0}, Lcom/mediatek/internal/telephony/ITelephonyEx;->isFdnEnabled(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 158
    .end local v2    # "isFdnEnabled":Z
    :cond_1
    :goto_0
    const-string/jumbo v4, "SimCardUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "[isFdnEnabed]slotId:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 159
    const-string/jumbo v6, ",isFdnEnabled:"

    .line 158
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    return v2

    .line 149
    .restart local v2    # "isFdnEnabled":Z
    :cond_2
    const/4 v4, 0x0

    :try_start_1
    invoke-interface {v1, v4}, Lcom/mediatek/internal/telephony/ITelephonyEx;->isFdnEnabled(I)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v2

    .local v2, "isFdnEnabled":Z
    goto :goto_0

    .line 152
    .local v2, "isFdnEnabled":Z
    :catch_0
    move-exception v0

    .line 153
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v4, "SimCardUtils"

    const-string/jumbo v5, "[isFdnEnabed]catch exception:"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 155
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static isPhoneBookReady(I)Z
    .locals 8
    .param p0, "slotId"    # I

    .prologue
    .line 207
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "isPhoneBookReady"

    invoke-static {v5, v6}, Lcom/sonyericsson/android/socialphonebook/SimCardUtils;->getPresetObject(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    .line 208
    .local v4, "v":Ljava/lang/Boolean;
    if-eqz v4, :cond_0

    .line 209
    const-string/jumbo v5, "SimCardUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "[isPhoneBookReady]subId:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 210
    const-string/jumbo v7, ",v:"

    .line 209
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    return v5

    .line 215
    :cond_0
    const-string/jumbo v5, "phoneEx"

    .line 214
    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/mediatek/internal/telephony/ITelephonyEx$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/internal/telephony/ITelephonyEx;

    move-result-object v3

    .line 217
    .local v3, "telephonyEx":Lcom/mediatek/internal/telephony/ITelephonyEx;
    if-nez v3, :cond_1

    .line 218
    const-string/jumbo v5, "SimCardUtils"

    const-string/jumbo v6, "[isPhoneBookReady]phoneEx == null"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    const/4 v5, 0x0

    return v5

    .line 221
    :cond_1
    const/4 v5, -0x1

    if-ne p0, v5, :cond_2

    .line 223
    const/4 p0, 0x0

    .line 225
    :cond_2
    invoke-static {p0}, Lcom/sonyericsson/android/socialphonebook/SimCardUtils;->getSubIdBySlotId(I)I

    move-result v2

    .line 227
    .local v2, "subId":I
    const/4 v1, 0x0

    .line 229
    .local v1, "isPbReady":Z
    :try_start_0
    invoke-interface {v3, v2}, Lcom/mediatek/internal/telephony/ITelephonyEx;->isPhbReady(I)Z

    move-result v1

    .line 230
    .local v1, "isPbReady":Z
    const-string/jumbo v5, "SimCardUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "[isPhoneBookReady]isPbReady:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "||slotId:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 236
    .end local v1    # "isPbReady":Z
    :goto_0
    const-string/jumbo v5, "SimCardUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "[isPhoneBookReady]subId:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 237
    const-string/jumbo v7, ", isPbReady:"

    .line 236
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    return v1

    .line 231
    :catch_0
    move-exception v0

    .line 232
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v5, "SimCardUtils"

    const-string/jumbo v6, "[isPhoneBookReady]catch exception:"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public static isPhoneBookReady(Landroid/content/Context;I)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "subId"    # I

    .prologue
    .line 663
    const/4 v1, 0x0

    .line 664
    .local v1, "hitError":Z
    const/4 v0, -0x1

    .line 665
    .local v0, "errorToastId":I
    invoke-static {p1}, Lcom/sonyericsson/android/socialphonebook/SimCardUtils;->isPhoneBookReady(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 666
    const/4 v1, 0x1

    .line 668
    :cond_0
    if-nez p0, :cond_1

    .line 669
    const-string/jumbo v2, "SimCardUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "[checkPHBState] context is null,subId:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 671
    :cond_1
    if-eqz v1, :cond_2

    if-eqz p0, :cond_2

    .line 672
    const-string/jumbo v2, "SimCardUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "[checkPHBState] hitError="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 674
    :cond_2
    if-eqz v1, :cond_3

    const/4 v2, 0x0

    :goto_0
    return v2

    :cond_3
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public static isRadioOn(ILandroid/content/Context;)Z
    .locals 7
    .param p0, "subId"    # I
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 442
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "isRadioOn"

    invoke-static {v4, v5}, Lcom/sonyericsson/android/socialphonebook/SimCardUtils;->getPresetObject(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    .line 443
    .local v3, "v":Ljava/lang/Boolean;
    if-eqz v3, :cond_0

    .line 444
    const-string/jumbo v4, "SimCardUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "[isRadioOn]slotId:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 445
    const-string/jumbo v6, ",v:"

    .line 444
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 446
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    return v4

    .line 449
    :cond_0
    const-string/jumbo v4, "phone"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 450
    .local v1, "iTel":Lcom/android/internal/telephony/ITelephony;
    if-nez v1, :cond_1

    .line 451
    const-string/jumbo v4, "SimCardUtils"

    const-string/jumbo v5, "[isRadioOn]iTel is null!"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 452
    const/4 v4, 0x0

    return v4

    .line 455
    :cond_1
    const/4 v2, 0x0

    .line 457
    .local v2, "isRadioOn":Z
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, p0, v4}, Lcom/android/internal/telephony/ITelephony;->isRadioOnForSubscriber(ILjava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 464
    .end local v2    # "isRadioOn":Z
    :goto_0
    const-string/jumbo v4, "SimCardUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "[isRadioOn]subId:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 465
    const-string/jumbo v6, "|isRadioOn:"

    .line 464
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 467
    return v2

    .line 458
    .restart local v2    # "isRadioOn":Z
    :catch_0
    move-exception v0

    .line 459
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v4, "SimCardUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "[isRadioOn] failed to get radio state for sub "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 460
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 461
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static isSetRadioOn(Landroid/content/ContentResolver;I)Z
    .locals 8
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "subId"    # I

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 165
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "isSetRadioOn"

    invoke-static {v4, v5}, Lcom/sonyericsson/android/socialphonebook/SimCardUtils;->getPresetObject(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    .line 166
    .local v3, "v":Ljava/lang/Boolean;
    if-eqz v3, :cond_0

    .line 167
    const-string/jumbo v4, "SimCardUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "[isSetRadioOn]subId:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 168
    const-string/jumbo v6, ",v:"

    .line 167
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    return v4

    .line 172
    :cond_0
    const/4 v2, 0x0

    .line 173
    .local v2, "isRadioOn":Z
    invoke-static {}, Lcom/sonyericsson/android/socialphonebook/SlotUtils;->isGeminiEnabled()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 176
    invoke-static {}, Lcom/sonyericsson/android/socialphonebook/SlotUtils;->getSlotCount()I

    move-result v4

    shl-int v4, v7, v4

    add-int/lit8 v1, v4, -0x1

    .line 177
    .local v1, "flagAllSimOn":I
    const-string/jumbo v4, "msim_mode_setting"

    invoke-static {p0, v4, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 178
    .local v0, "dualSimSet":I
    const-string/jumbo v4, "airplane_mode_on"

    invoke-static {p0, v4, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-nez v4, :cond_2

    .line 179
    invoke-static {}, Lcom/sonyericsson/android/socialphonebook/SlotUtils;->getFirstSlotId()I

    move-result v4

    sub-int v4, p1, v4

    shl-int v4, v7, v4

    and-int/2addr v4, v0

    if-eqz v4, :cond_1

    const/4 v2, 0x1

    .line 185
    .end local v0    # "dualSimSet":I
    .end local v1    # "flagAllSimOn":I
    :goto_0
    const-string/jumbo v4, "SimCardUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "[isSetRadioOn]subId:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 186
    const-string/jumbo v6, ",isRadioOn:"

    .line 185
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    return v2

    .line 179
    .restart local v0    # "dualSimSet":I
    .restart local v1    # "flagAllSimOn":I
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 178
    :cond_2
    const/4 v2, 0x0

    goto :goto_0

    .line 182
    .end local v0    # "dualSimSet":I
    .end local v1    # "flagAllSimOn":I
    :cond_3
    const-string/jumbo v4, "airplane_mode_on"

    .line 181
    invoke-static {p0, v4, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-nez v4, :cond_4

    const/4 v2, 0x1

    goto :goto_0

    :cond_4
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static isSimInserted(I)Z
    .locals 7
    .param p0, "slotId"    # I

    .prologue
    .line 103
    const/4 v4, -0x1

    if-ne p0, v4, :cond_0

    .line 105
    const/4 p0, 0x0

    .line 107
    :cond_0
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "isSimInserted"

    invoke-static {v4, v5}, Lcom/sonyericsson/android/socialphonebook/SimCardUtils;->getPresetObject(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    .line 108
    .local v3, "v":Ljava/lang/Boolean;
    if-eqz v3, :cond_1

    .line 109
    const-string/jumbo v4, "SimCardUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "[isSimInserted]slotId:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 110
    const-string/jumbo v6, ",v:"

    .line 109
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    return v4

    .line 115
    :cond_1
    const-string/jumbo v4, "phone"

    .line 114
    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 116
    .local v1, "iTel":Lcom/android/internal/telephony/ITelephony;
    const/4 v2, 0x0

    .line 118
    .local v2, "isSimInsert":Z
    if-eqz v1, :cond_2

    .line 119
    :try_start_0
    invoke-interface {v1, p0}, Lcom/android/internal/telephony/ITelephony;->hasIccCardUsingSlotId(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 127
    .end local v2    # "isSimInsert":Z
    :cond_2
    :goto_0
    const-string/jumbo v4, "SimCardUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "[isSimInserted]slotId:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 128
    const-string/jumbo v6, ",isPukRequest:"

    .line 127
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    return v2

    .line 121
    .restart local v2    # "isSimInsert":Z
    :catch_0
    move-exception v0

    .line 122
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v4, "SimCardUtils"

    const-string/jumbo v5, "[isSimInserted]catch exception:"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 124
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static isSimPinRequest(J)Z
    .locals 6
    .param p0, "slotId"    # J

    .prologue
    .line 71
    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "isSimPinRequest"

    invoke-static {v2, v3}, Lcom/sonyericsson/android/socialphonebook/SimCardUtils;->getPresetObject(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    .line 72
    .local v1, "v":Ljava/lang/Boolean;
    if-eqz v1, :cond_0

    .line 73
    const-string/jumbo v2, "SimCardUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "[isSimPinRequest]slotId:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 74
    const-string/jumbo v4, ",v:"

    .line 73
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    return v2

    .line 78
    :cond_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    .line 79
    long-to-int v3, p0

    .line 78
    invoke-virtual {v2, v3}, Landroid/telephony/TelephonyManager;->getSimState(I)I

    move-result v2

    const/4 v3, 0x2

    if-ne v3, v2, :cond_1

    const/4 v0, 0x1

    .line 80
    .local v0, "isPinRequest":Z
    :goto_0
    const-string/jumbo v2, "SimCardUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "[isSimPinRequest]slotId:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 81
    const-string/jumbo v4, ",isPukRequest:"

    .line 80
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    return v0

    .line 78
    .end local v0    # "isPinRequest":Z
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "isPinRequest":Z
    goto :goto_0
.end method

.method public static isSimReady(I)Z
    .locals 4
    .param p0, "subId"    # I

    .prologue
    .line 529
    invoke-static {p0}, Lcom/sonyericsson/android/socialphonebook/SimCardUtils;->isPhoneBookReady(I)Z

    move-result v0

    .line 530
    .local v0, "isPhoneBookReady":Z
    const-string/jumbo v1, "SimCardUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "[isSimReady] isPhoneBookReady="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 531
    return v0
.end method

.method public static isSimStateIdle(I)Z
    .locals 5
    .param p0, "subId"    # I

    .prologue
    const/4 v1, 0x0

    .line 515
    const-string/jumbo v2, "SimCardUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "[isSimStateIdle] subId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 516
    invoke-static {p0}, Lcom/sonyericsson/android/socialphonebook/SubInfoUtils;->checkSubscriber(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 517
    return v1

    .line 520
    :cond_0
    int-to-long v2, p0

    invoke-static {v2, v3}, Lcom/sonyericsson/android/socialphonebook/SIMServiceUtils;->isServiceRunning(J)Z

    move-result v0

    .line 521
    .local v0, "isSimServiceRunning":Z
    const-string/jumbo v2, "SimCardUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "[isSimStateIdle], isSimServiceRunning = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 522
    invoke-static {p0}, Lcom/sonyericsson/android/socialphonebook/SimCardUtils;->isPhoneBookReady(I)Z

    move-result v2

    if-eqz v2, :cond_1

    if-eqz v0, :cond_2

    :cond_1
    :goto_0
    return v1

    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static isSimStateReady(J)Z
    .locals 6
    .param p0, "slotId"    # J

    .prologue
    .line 87
    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "isSimStateReady"

    invoke-static {v2, v3}, Lcom/sonyericsson/android/socialphonebook/SimCardUtils;->getPresetObject(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    .line 88
    .local v1, "v":Ljava/lang/Boolean;
    if-eqz v1, :cond_0

    .line 89
    const-string/jumbo v2, "SimCardUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "[isSimStateReady]slotId:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 90
    const-string/jumbo v4, ",v:"

    .line 89
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    return v2

    .line 94
    :cond_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    .line 95
    long-to-int v3, p0

    .line 94
    invoke-virtual {v2, v3}, Landroid/telephony/TelephonyManager;->getSimState(I)I

    move-result v2

    const/4 v3, 0x5

    if-ne v3, v2, :cond_1

    const/4 v0, 0x1

    .line 96
    .local v0, "isSimStateReady":Z
    :goto_0
    const-string/jumbo v2, "SimCardUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "[isSimStateReady]slotId:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 97
    const-string/jumbo v4, ",isPukRequest:"

    .line 96
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    return v0

    .line 94
    .end local v0    # "isSimStateReady":Z
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "isSimStateReady":Z
    goto :goto_0
.end method

.method public static isSimUsimType(I)Z
    .locals 7
    .param p0, "subId"    # I

    .prologue
    .line 311
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "isSimUsimType"

    invoke-static {v4, v5}, Lcom/sonyericsson/android/socialphonebook/SimCardUtils;->getPresetObject(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    .line 312
    .local v3, "v":Ljava/lang/Boolean;
    if-eqz v3, :cond_0

    .line 313
    const-string/jumbo v4, "SimCardUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "[isSimUsimType]subId:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 314
    const-string/jumbo v6, ",v:"

    .line 313
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    return v4

    .line 318
    :cond_0
    const/4 v2, 0x0

    .line 320
    .local v2, "isUsim":Z
    const-string/jumbo v4, "phoneEx"

    .line 319
    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/mediatek/internal/telephony/ITelephonyEx$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/internal/telephony/ITelephonyEx;

    move-result-object v1

    .line 321
    .local v1, "iTel":Lcom/mediatek/internal/telephony/ITelephonyEx;
    if-nez v1, :cond_1

    .line 322
    const-string/jumbo v4, "SimCardUtils"

    const-string/jumbo v5, "[isSimUsimType]iTel == null"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    return v2

    .line 327
    :cond_1
    :try_start_0
    const-string/jumbo v4, "USIM"

    invoke-interface {v1, p0}, Lcom/mediatek/internal/telephony/ITelephonyEx;->getIccCardType(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 328
    const-string/jumbo v4, "CSIM"

    invoke-interface {v1, p0}, Lcom/mediatek/internal/telephony/ITelephonyEx;->getIccCardType(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    .line 327
    if-eqz v4, :cond_3

    .line 329
    :cond_2
    const/4 v2, 0x1

    .line 336
    :cond_3
    :goto_0
    const-string/jumbo v4, "SimCardUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "[isSimUsimType]subId:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 337
    const-string/jumbo v6, ",isUsim:"

    .line 336
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    return v2

    .line 331
    :catch_0
    move-exception v0

    .line 332
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v4, "SimCardUtils"

    const-string/jumbo v5, "[isSimUsimType]catch exception:"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public static preSetSimData(ILjava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Boolean;)V
    .locals 5
    .param p0, "slot"    # I
    .param p1, "fdnEnabled"    # Ljava/lang/Boolean;
    .param p2, "isUsim"    # Ljava/lang/Boolean;
    .param p3, "phbReady"    # Ljava/lang/Boolean;
    .param p4, "pinRequest"    # Ljava/lang/Boolean;
    .param p5, "pukRequest"    # Ljava/lang/Boolean;
    .param p6, "isRadioOn"    # Ljava/lang/Boolean;
    .param p7, "isSimInserted"    # Ljava/lang/Boolean;
    .param p8, "simType"    # Ljava/lang/Integer;
    .param p9, "simStateReady"    # Ljava/lang/Boolean;
    .param p10, "simInfoReady"    # Ljava/lang/Boolean;

    .prologue
    .line 384
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 385
    .local v1, "value1":Landroid/content/ContentValues;
    if-eqz p1, :cond_0

    .line 386
    const-string/jumbo v3, "isFdnEnabed"

    invoke-virtual {v1, v3, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 388
    :cond_0
    if-eqz p2, :cond_1

    .line 389
    const-string/jumbo v3, "isSimUsimType"

    invoke-virtual {v1, v3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 391
    :cond_1
    if-eqz p3, :cond_2

    .line 392
    const-string/jumbo v3, "isPhoneBookReady"

    invoke-virtual {v1, v3, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 394
    :cond_2
    if-eqz p4, :cond_3

    .line 395
    const-string/jumbo v3, "isSimPinRequest"

    invoke-virtual {v1, v3, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 397
    :cond_3
    if-eqz p5, :cond_4

    .line 398
    const-string/jumbo v3, "isSimPukRequest"

    invoke-virtual {v1, v3, p5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 400
    :cond_4
    if-eqz p6, :cond_5

    .line 401
    const-string/jumbo v3, "isSetRadioOn"

    invoke-virtual {v1, v3, p6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 403
    :cond_5
    if-eqz p7, :cond_6

    .line 404
    const-string/jumbo v3, "isSimInserted"

    invoke-virtual {v1, v3, p7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 406
    :cond_6
    if-eqz p8, :cond_7

    .line 407
    const-string/jumbo v3, "getSimTypeBySlot"

    invoke-virtual {v1, v3, p8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 409
    :cond_7
    if-eqz p9, :cond_8

    .line 410
    const-string/jumbo v3, "isSimStateReady"

    invoke-virtual {v1, v3, p9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 412
    :cond_8
    sget-object v3, Lcom/sonyericsson/android/socialphonebook/SimCardUtils;->sPresetSimData:Ljava/util/HashMap;

    if-nez v3, :cond_9

    .line 413
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    sput-object v3, Lcom/sonyericsson/android/socialphonebook/SimCardUtils;->sPresetSimData:Ljava/util/HashMap;

    .line 415
    :cond_9
    if-eqz v1, :cond_b

    invoke-virtual {v1}, Landroid/content/ContentValues;->size()I

    move-result v3

    if-lez v3, :cond_b

    .line 416
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 417
    .local v0, "key1":Ljava/lang/String;
    sget-object v3, Lcom/sonyericsson/android/socialphonebook/SimCardUtils;->sPresetSimData:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 418
    sget-object v3, Lcom/sonyericsson/android/socialphonebook/SimCardUtils;->sPresetSimData:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 420
    :cond_a
    sget-object v3, Lcom/sonyericsson/android/socialphonebook/SimCardUtils;->sPresetSimData:Ljava/util/HashMap;

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 423
    .end local v0    # "key1":Ljava/lang/String;
    :cond_b
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 424
    .local v2, "value2":Landroid/content/ContentValues;
    if-eqz p10, :cond_c

    .line 425
    const-string/jumbo v3, "isSimInfoReady"

    invoke-virtual {v2, v3, p10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 427
    :cond_c
    if-eqz v2, :cond_e

    invoke-virtual {v2}, Landroid/content/ContentValues;->size()I

    move-result v3

    if-lez v3, :cond_e

    .line 428
    sget-object v3, Lcom/sonyericsson/android/socialphonebook/SimCardUtils;->sPresetSimData:Ljava/util/HashMap;

    sget-object v4, Lcom/sonyericsson/android/socialphonebook/SimCardUtils;->NO_SLOT:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 429
    sget-object v3, Lcom/sonyericsson/android/socialphonebook/SimCardUtils;->sPresetSimData:Ljava/util/HashMap;

    sget-object v4, Lcom/sonyericsson/android/socialphonebook/SimCardUtils;->NO_SLOT:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 431
    :cond_d
    sget-object v3, Lcom/sonyericsson/android/socialphonebook/SimCardUtils;->sPresetSimData:Ljava/util/HashMap;

    sget-object v4, Lcom/sonyericsson/android/socialphonebook/SimCardUtils;->NO_SLOT:Ljava/lang/String;

    invoke-virtual {v3, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 383
    :cond_e
    return-void
.end method
