.class public final Lcom/sonyericsson/android/socialphonebook/SlotUtils;
.super Ljava/lang/Object;
.source "SlotUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/socialphonebook/SlotUtils$SlotInfo;,
        Lcom/sonyericsson/android/socialphonebook/SlotUtils$PhbInfoWrapper;
    }
.end annotation


# static fields
.field private static final FIRST_SLOT_ID:I = 0x0

.field private static final PHONE_ACCOUNT_HANDLE_COMPONENT_NAME:Landroid/content/ComponentName;

.field private static final PHONE_SLOT_NUM:I = 0x2

.field private static final PSTN_CALL_SERVICE_CLASS_NAME:Ljava/lang/String; = "com.android.services.telephony.TelephonyConnectionService"

.field private static final TAG:Ljava/lang/String; = "SlotUtils"

.field private static final TELEPHONY_PACKAGE_NAME:Ljava/lang/String; = "com.android.phone"

.field private static sActiveUsimPhbInfoMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/sonyericsson/android/socialphonebook/SlotUtils$PhbInfoWrapper;",
            ">;"
        }
    .end annotation
.end field

.field private static sSlotInfoMap:Ljava/util/Map;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "UseSparseArrays"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/sonyericsson/android/socialphonebook/SlotUtils$SlotInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 41
    new-instance v2, Landroid/content/ComponentName;

    .line 42
    const-string/jumbo v3, "com.android.phone"

    const-string/jumbo v4, "com.android.services.telephony.TelephonyConnectionService"

    .line 41
    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v2, Lcom/sonyericsson/android/socialphonebook/SlotUtils;->PHONE_ACCOUNT_HANDLE_COMPONENT_NAME:Landroid/content/ComponentName;

    .line 236
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    sput-object v2, Lcom/sonyericsson/android/socialphonebook/SlotUtils;->sActiveUsimPhbInfoMap:Ljava/util/HashMap;

    .line 239
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    sput-object v2, Lcom/sonyericsson/android/socialphonebook/SlotUtils;->sSlotInfoMap:Ljava/util/Map;

    .line 241
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v2, 0x2

    if-ge v0, v2, :cond_0

    .line 242
    add-int/lit8 v1, v0, 0x0

    .line 243
    .local v1, "slotId":I
    sget-object v2, Lcom/sonyericsson/android/socialphonebook/SlotUtils;->sSlotInfoMap:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-instance v4, Lcom/sonyericsson/android/socialphonebook/SlotUtils$SlotInfo;

    invoke-direct {v4, v1}, Lcom/sonyericsson/android/socialphonebook/SlotUtils$SlotInfo;-><init>(I)V

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 241
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 30
    .end local v1    # "slotId":I
    :cond_0
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAllSlotIds()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 282
    new-instance v0, Ljava/util/ArrayList;

    sget-object v1, Lcom/sonyericsson/android/socialphonebook/SlotUtils;->sSlotInfoMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public static getFirstSlotId()I
    .locals 1

    .prologue
    .line 371
    const/4 v0, 0x0

    return v0
.end method

.method public static getNonSlotId()I
    .locals 1

    .prologue
    .line 380
    const/4 v0, -0x1

    return v0
.end method

.method public static getPhoneAccountHandle(Landroid/content/Context;I)Landroid/telecom/PhoneAccountHandle;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "slotId"    # I

    .prologue
    const/4 v8, 0x0

    .line 496
    if-nez p0, :cond_0

    .line 497
    const-string/jumbo v6, "SlotUtils"

    const-string/jumbo v7, "getPhoneAccountHandle input NULL context!!"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 498
    invoke-static {}, Ljava/lang/Thread;->dumpStack()V

    .line 499
    return-object v8

    .line 501
    :cond_0
    const/4 v4, 0x0

    .line 502
    .local v4, "result":Landroid/telecom/PhoneAccountHandle;
    invoke-static {p1}, Lcom/sonyericsson/android/socialphonebook/SlotUtils;->getSubId(I)I

    move-result v5

    .line 503
    .local v5, "subId":I
    invoke-static {p0}, Lcom/sonyericsson/android/socialphonebook/SlotUtils;->getSubscriptionPhoneAccounts(Landroid/content/Context;)Ljava/util/List;

    move-result-object v2

    .line 504
    .local v2, "phoneAccoutHandles":Ljava/util/List;, "Ljava/util/List<Landroid/telecom/PhoneAccountHandle;>;"
    if-eqz v2, :cond_2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_2

    .line 505
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "phoneAccoutHandle$iterator":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/PhoneAccountHandle;

    .line 506
    .local v0, "phoneAccoutHandle":Landroid/telecom/PhoneAccountHandle;
    invoke-static {p0}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v6

    .line 507
    invoke-static {p0}, Landroid/telecom/TelecomManager;->from(Landroid/content/Context;)Landroid/telecom/TelecomManager;

    move-result-object v7

    invoke-virtual {v7, v0}, Landroid/telecom/TelecomManager;->getPhoneAccount(Landroid/telecom/PhoneAccountHandle;)Landroid/telecom/PhoneAccount;

    move-result-object v7

    .line 506
    invoke-virtual {v6, v7}, Landroid/telephony/TelephonyManager;->getSubIdForPhoneAccount(Landroid/telecom/PhoneAccount;)I

    move-result v3

    .line 508
    .local v3, "phoneSubId":I
    if-ne v3, v5, :cond_1

    .line 509
    move-object v4, v0

    .line 515
    .end local v0    # "phoneAccoutHandle":Landroid/telecom/PhoneAccountHandle;
    .end local v1    # "phoneAccoutHandle$iterator":Ljava/util/Iterator;
    .end local v3    # "phoneSubId":I
    .end local v4    # "result":Landroid/telecom/PhoneAccountHandle;
    :cond_2
    if-nez v4, :cond_3

    .line 516
    new-instance v4, Landroid/telecom/PhoneAccountHandle;

    sget-object v6, Lcom/sonyericsson/android/socialphonebook/SlotUtils;->PHONE_ACCOUNT_HANDLE_COMPONENT_NAME:Landroid/content/ComponentName;

    .line 517
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    .line 516
    invoke-direct {v4, v6, v7}, Landroid/telecom/PhoneAccountHandle;-><init>(Landroid/content/ComponentName;Ljava/lang/String;)V

    .line 519
    :cond_3
    return-object v4
.end method

.method public static getSimPhoneBookServiceNameForSlot(J)Ljava/lang/String;
    .locals 1
    .param p0, "subId"    # J

    .prologue
    .line 350
    invoke-static {}, Lcom/sonyericsson/android/socialphonebook/SubInfoUtils;->getPhoneBookServiceName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getSingleSlotId()I
    .locals 1

    .prologue
    .line 390
    const/4 v0, 0x0

    return v0
.end method

.method public static getSlotCount()I
    .locals 1

    .prologue
    .line 341
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/SlotUtils;->sSlotInfoMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method public static getSlotIccUri(J)Landroid/net/Uri;
    .locals 6
    .param p0, "slotId"    # J

    .prologue
    const/4 v4, 0x0

    .line 253
    sget-object v1, Lcom/sonyericsson/android/socialphonebook/SlotUtils;->sSlotInfoMap:Ljava/util/Map;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/socialphonebook/SlotUtils$SlotInfo;

    .line 254
    .local v0, "slotInfo":Lcom/sonyericsson/android/socialphonebook/SlotUtils$SlotInfo;
    if-eqz v0, :cond_0

    .line 255
    invoke-virtual {v0}, Lcom/sonyericsson/android/socialphonebook/SlotUtils$SlotInfo;->getIccUri()Landroid/net/Uri;

    move-result-object v1

    return-object v1

    .line 257
    :cond_0
    const-string/jumbo v1, "SlotUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "[getSlotIccUri],slotId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    return-object v4
.end method

.method public static getSlotIdByIccSerialNumber(Landroid/content/Context;Ljava/lang/String;)I
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "serialNum"    # Ljava/lang/String;

    .prologue
    const/4 v6, -0x1

    .line 478
    if-nez p0, :cond_0

    .line 479
    const-string/jumbo v4, "SlotUtils"

    const-string/jumbo v5, "getSlotIdByIccSerialNumber input NULL context!!"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 480
    invoke-static {}, Ljava/lang/Thread;->dumpStack()V

    .line 481
    return v6

    .line 483
    :cond_0
    invoke-static {p0}, Lcom/sonyericsson/android/socialphonebook/SlotUtils;->getSubscriptionPhoneAccounts(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    .line 484
    .local v0, "accountHandles":Ljava/util/List;, "Ljava/util/List<Landroid/telecom/PhoneAccountHandle;>;"
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "handle$iterator":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/PhoneAccountHandle;

    .line 485
    .local v1, "handle":Landroid/telecom/PhoneAccountHandle;
    invoke-static {p0}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v4

    .line 486
    invoke-static {p0}, Landroid/telecom/TelecomManager;->from(Landroid/content/Context;)Landroid/telecom/TelecomManager;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/telecom/TelecomManager;->getPhoneAccount(Landroid/telecom/PhoneAccountHandle;)Landroid/telecom/PhoneAccount;

    move-result-object v5

    .line 485
    invoke-virtual {v4, v5}, Landroid/telephony/TelephonyManager;->getSubIdForPhoneAccount(Landroid/telecom/PhoneAccount;)I

    move-result v3

    .line 487
    .local v3, "subId":I
    invoke-static {v3}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 488
    if-eqz p1, :cond_1

    invoke-virtual {v1}, Landroid/telecom/PhoneAccountHandle;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    .line 487
    if-eqz v4, :cond_1

    .line 489
    invoke-static {v3}, Landroid/telephony/SubscriptionManager;->getSlotId(I)I

    move-result v4

    return v4

    .line 492
    .end local v1    # "handle":Landroid/telecom/PhoneAccountHandle;
    .end local v3    # "subId":I
    :cond_2
    return v6
.end method

.method public static getSlotSdnUri(J)Landroid/net/Uri;
    .locals 6
    .param p0, "slotId"    # J

    .prologue
    const/4 v4, 0x0

    .line 268
    sget-object v1, Lcom/sonyericsson/android/socialphonebook/SlotUtils;->sSlotInfoMap:Ljava/util/Map;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/socialphonebook/SlotUtils$SlotInfo;

    .line 269
    .local v0, "slotInfo":Lcom/sonyericsson/android/socialphonebook/SlotUtils$SlotInfo;
    if-eqz v0, :cond_0

    .line 270
    invoke-virtual {v0}, Lcom/sonyericsson/android/socialphonebook/SlotUtils$SlotInfo;->getSdnUri()Landroid/net/Uri;

    move-result-object v1

    return-object v1

    .line 272
    :cond_0
    const-string/jumbo v1, "SlotUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "[getSlotSdnUri],slotId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    return-object v4
.end method

.method public static getSubId(I)I
    .locals 3
    .param p0, "slotId"    # I

    .prologue
    const/4 v2, 0x0

    .line 523
    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v0

    .line 524
    .local v0, "subIds":[I
    if-eqz v0, :cond_0

    array-length v1, v0

    if-lez v1, :cond_0

    .line 525
    aget v1, v0, v2

    return v1

    .line 527
    :cond_0
    const/4 v1, -0x1

    return v1
.end method

.method public static getSubscriptionPhoneAccounts(Landroid/content/Context;)Ljava/util/List;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/telecom/PhoneAccountHandle;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 456
    if-nez p0, :cond_0

    .line 457
    const-string/jumbo v6, "SlotUtils"

    const-string/jumbo v7, "getSubscriptionPhoneAccounts input NULL context!!"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 458
    invoke-static {}, Ljava/lang/Thread;->dumpStack()V

    .line 459
    return-object v8

    .line 462
    :cond_0
    const-string/jumbo v6, "telecom"

    .line 461
    invoke-virtual {p0, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telecom/TelecomManager;

    .line 464
    .local v5, "telecomManager":Landroid/telecom/TelecomManager;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 465
    .local v4, "subscriptionAccountHandles":Ljava/util/List;, "Ljava/util/List<Landroid/telecom/PhoneAccountHandle;>;"
    invoke-virtual {v5}, Landroid/telecom/TelecomManager;->getCallCapablePhoneAccounts()Ljava/util/List;

    move-result-object v3

    .line 466
    .local v3, "accountHandles":Ljava/util/List;, "Ljava/util/List<Landroid/telecom/PhoneAccountHandle;>;"
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "accountHandle$iterator":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/PhoneAccountHandle;

    .line 467
    .local v1, "accountHandle":Landroid/telecom/PhoneAccountHandle;
    invoke-virtual {v5, v1}, Landroid/telecom/TelecomManager;->getPhoneAccount(Landroid/telecom/PhoneAccountHandle;)Landroid/telecom/PhoneAccount;

    move-result-object v0

    .line 468
    .local v0, "account":Landroid/telecom/PhoneAccount;
    if-eqz v0, :cond_1

    .line 469
    const/4 v6, 0x4

    invoke-virtual {v0, v6}, Landroid/telecom/PhoneAccount;->hasCapabilities(I)Z

    move-result v6

    .line 468
    if-eqz v6, :cond_1

    .line 470
    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 473
    .end local v0    # "account":Landroid/telecom/PhoneAccount;
    .end local v1    # "accountHandle":Landroid/telecom/PhoneAccountHandle;
    :cond_2
    return-object v4
.end method

.method public static getUsimAnrCount(J)I
    .locals 4
    .param p0, "subId"    # J

    .prologue
    .line 418
    sget-object v1, Lcom/sonyericsson/android/socialphonebook/SlotUtils;->sActiveUsimPhbInfoMap:Ljava/util/HashMap;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/socialphonebook/SlotUtils$PhbInfoWrapper;

    .line 419
    .local v0, "usimPhbInfo":Lcom/sonyericsson/android/socialphonebook/SlotUtils$PhbInfoWrapper;
    if-eqz v0, :cond_0

    .line 420
    invoke-virtual {v0}, Lcom/sonyericsson/android/socialphonebook/SlotUtils$PhbInfoWrapper;->getUsimAnrCount()I

    move-result v1

    return v1

    .line 422
    :cond_0
    const/4 v1, -0x1

    return v1
.end method

.method public static getUsimEmailCount(J)I
    .locals 4
    .param p0, "subId"    # J

    .prologue
    .line 426
    sget-object v1, Lcom/sonyericsson/android/socialphonebook/SlotUtils;->sActiveUsimPhbInfoMap:Ljava/util/HashMap;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/socialphonebook/SlotUtils$PhbInfoWrapper;

    .line 427
    .local v0, "usimPhbInfo":Lcom/sonyericsson/android/socialphonebook/SlotUtils$PhbInfoWrapper;
    if-eqz v0, :cond_0

    .line 428
    invoke-virtual {v0}, Lcom/sonyericsson/android/socialphonebook/SlotUtils$PhbInfoWrapper;->getUsimEmailCount()I

    move-result v1

    return v1

    .line 430
    :cond_0
    const/4 v1, -0x1

    return v1
.end method

.method public static getUsimGroupMaxCount(J)I
    .locals 4
    .param p0, "subId"    # J

    .prologue
    .line 410
    sget-object v1, Lcom/sonyericsson/android/socialphonebook/SlotUtils;->sActiveUsimPhbInfoMap:Ljava/util/HashMap;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/socialphonebook/SlotUtils$PhbInfoWrapper;

    .line 411
    .local v0, "usimPhbInfo":Lcom/sonyericsson/android/socialphonebook/SlotUtils$PhbInfoWrapper;
    if-eqz v0, :cond_0

    .line 412
    invoke-virtual {v0}, Lcom/sonyericsson/android/socialphonebook/SlotUtils$PhbInfoWrapper;->getUsimGroupMaxCount()I

    move-result v1

    return v1

    .line 414
    :cond_0
    const/4 v1, -0x1

    return v1
.end method

.method public static getUsimGroupMaxNameLength(J)I
    .locals 4
    .param p0, "subId"    # J

    .prologue
    .line 402
    sget-object v1, Lcom/sonyericsson/android/socialphonebook/SlotUtils;->sActiveUsimPhbInfoMap:Ljava/util/HashMap;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/socialphonebook/SlotUtils$PhbInfoWrapper;

    .line 403
    .local v0, "usimPhbInfo":Lcom/sonyericsson/android/socialphonebook/SlotUtils$PhbInfoWrapper;
    if-eqz v0, :cond_0

    .line 404
    invoke-virtual {v0}, Lcom/sonyericsson/android/socialphonebook/SlotUtils$PhbInfoWrapper;->getUsimGroupMaxNameLength()I

    move-result v1

    return v1

    .line 406
    :cond_0
    const/4 v1, -0x1

    return v1
.end method

.method public static getVoiceMailNumberForSlot(I)Ljava/lang/String;
    .locals 5
    .param p0, "slotId"    # I

    .prologue
    const/4 v4, 0x0

    .line 291
    int-to-long v2, p0

    invoke-static {v2, v3}, Lcom/sonyericsson/android/socialphonebook/SlotUtils;->isSlotValid(J)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 292
    sget-object v1, Lcom/sonyericsson/android/socialphonebook/SlotUtils;->sSlotInfoMap:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/socialphonebook/SlotUtils$SlotInfo;

    .line 293
    .local v0, "slotInfo":Lcom/sonyericsson/android/socialphonebook/SlotUtils$SlotInfo;
    if-eqz v0, :cond_0

    .line 294
    invoke-virtual {v0}, Lcom/sonyericsson/android/socialphonebook/SlotUtils$SlotInfo;->getVoiceMailNumber()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 296
    :cond_0
    const-string/jumbo v1, "SlotUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "[getVoiceMailNumberForSlot],slotId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    return-object v4

    .line 301
    .end local v0    # "slotInfo":Lcom/sonyericsson/android/socialphonebook/SlotUtils$SlotInfo;
    :cond_1
    const-string/jumbo v1, "SlotUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "[getVoiceMailNumberForSlot] slot "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " is not valid!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    return-object v4
.end method

.method public static isGeminiEnabled()Z
    .locals 1

    .prologue
    .line 398
    invoke-static {}, Lcom/sonyericsson/android/socialphonebook/FeatureOptionStub;->getMtkGeminiSupport()Z

    move-result v0

    return v0
.end method

.method public static isSlotValid(J)Z
    .locals 4
    .param p0, "slotId"    # J

    .prologue
    .line 359
    sget-object v1, Lcom/sonyericsson/android/socialphonebook/SlotUtils;->sSlotInfoMap:Ljava/util/Map;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    .line 360
    .local v0, "isValid":Z
    if-nez v0, :cond_0

    .line 361
    const-string/jumbo v1, "SlotUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "[isSlotValid]slot "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " is invalid!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    :cond_0
    return v0
.end method

.method public static listenAllSlots(Landroid/content/Context;Landroid/telephony/PhoneStateListener;I)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "listener"    # Landroid/telephony/PhoneStateListener;
    .param p2, "events"    # I

    .prologue
    .line 326
    invoke-static {}, Lcom/sonyericsson/android/socialphonebook/SlotUtils;->isGeminiEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 327
    invoke-static {}, Lcom/sonyericsson/android/socialphonebook/SlotUtils;->getAllSlotIds()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "slotId$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 328
    .local v0, "slotId":I
    invoke-static {}, Lcom/mediatek/telephony/TelephonyManagerEx;->getDefault()Lcom/mediatek/telephony/TelephonyManagerEx;

    move-result-object v3

    invoke-virtual {v3, p1, p2, v0}, Lcom/mediatek/telephony/TelephonyManagerEx;->listen(Landroid/telephony/PhoneStateListener;II)V

    goto :goto_0

    .line 331
    .end local v0    # "slotId":I
    .end local v1    # "slotId$iterator":Ljava/util/Iterator;
    :cond_0
    const-string/jumbo v3, "phone"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 332
    .local v2, "telephonyManager":Landroid/telephony/TelephonyManager;
    invoke-virtual {v2, p1, p2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 325
    .end local v2    # "telephonyManager":Landroid/telephony/TelephonyManager;
    :cond_1
    return-void
.end method

.method public static refreshPhbInfoBySlot(I)V
    .locals 2
    .param p0, "slotId"    # I

    .prologue
    .line 441
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/SlotUtils;->sSlotInfoMap:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/socialphonebook/SlotUtils$SlotInfo;

    iget-object v0, v0, Lcom/sonyericsson/android/socialphonebook/SlotUtils$SlotInfo;->mPhbInfo:Lcom/sonyericsson/android/socialphonebook/SlotUtils$PhbInfoWrapper;

    invoke-virtual {v0}, Lcom/sonyericsson/android/socialphonebook/SlotUtils$PhbInfoWrapper;->refreshPhbInfo()V

    .line 440
    return-void
.end method

.method public static resetPhbInfoBySlot(I)V
    .locals 2
    .param p0, "slotId"    # I

    .prologue
    .line 452
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/SlotUtils;->sSlotInfoMap:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/socialphonebook/SlotUtils$SlotInfo;

    iget-object v0, v0, Lcom/sonyericsson/android/socialphonebook/SlotUtils$SlotInfo;->mPhbInfo:Lcom/sonyericsson/android/socialphonebook/SlotUtils$PhbInfoWrapper;

    invoke-virtual {v0}, Lcom/sonyericsson/android/socialphonebook/SlotUtils$PhbInfoWrapper;->resetPhbInfo()V

    .line 451
    return-void
.end method

.method public static updateVoiceMailNumber()V
    .locals 3

    .prologue
    .line 309
    sget-object v2, Lcom/sonyericsson/android/socialphonebook/SlotUtils;->sSlotInfoMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "slot$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/socialphonebook/SlotUtils$SlotInfo;

    .line 310
    .local v0, "slot":Lcom/sonyericsson/android/socialphonebook/SlotUtils$SlotInfo;
    invoke-virtual {v0}, Lcom/sonyericsson/android/socialphonebook/SlotUtils$SlotInfo;->updateVoiceMailNumber()V

    goto :goto_0

    .line 308
    .end local v0    # "slot":Lcom/sonyericsson/android/socialphonebook/SlotUtils$SlotInfo;
    :cond_0
    return-void
.end method
