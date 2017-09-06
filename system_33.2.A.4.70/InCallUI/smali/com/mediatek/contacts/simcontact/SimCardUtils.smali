.class public Lcom/mediatek/contacts/simcontact/SimCardUtils;
.super Ljava/lang/Object;
.source "SimCardUtils.java"


# static fields
.field private static final NO_SLOT:Ljava/lang/String;

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
    .line 574
    const/4 v0, 0x0

    sput-object v0, Lcom/mediatek/contacts/simcontact/SimCardUtils;->sPresetSimData:Ljava/util/HashMap;

    .line 590
    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mediatek/contacts/simcontact/SimCardUtils;->NO_SLOT:Ljava/lang/String;

    .line 60
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getIccCardType(I)Ljava/lang/String;
    .locals 6
    .param p0, "subId"    # I

    .prologue
    const/4 v5, 0x0

    .line 264
    const-string/jumbo v3, "phoneEx"

    .line 263
    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/mediatek/internal/telephony/ITelephonyEx$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/internal/telephony/ITelephonyEx;

    move-result-object v1

    .line 265
    .local v1, "iTel":Lcom/mediatek/internal/telephony/ITelephonyEx;
    if-nez v1, :cond_0

    .line 266
    const-string/jumbo v3, "SimCardUtils"

    const-string/jumbo v4, "[getIccCardType]iTel == null"

    invoke-static {v3, v4}, Lcom/mediatek/contacts/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    return-object v5

    .line 270
    :cond_0
    const/4 v2, 0x0

    .line 272
    .local v2, "iccCardType":Ljava/lang/String;
    :try_start_0
    invoke-interface {v1, p0}, Lcom/mediatek/internal/telephony/ITelephonyEx;->getIccCardType(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 278
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

    const-string/jumbo v5, ",iccCardType:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/contacts/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    return-object v2

    .line 273
    .restart local v2    # "iccCardType":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 274
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v3, "SimCardUtils"

    const-string/jumbo v4, "[getIccCardType]catch exception:"

    invoke-static {v3, v4}, Lcom/mediatek/contacts/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method private static getPresetObject(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 4
    .param p0, "key1"    # Ljava/lang/String;
    .param p1, "key2"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 577
    sget-object v2, Lcom/mediatek/contacts/simcontact/SimCardUtils;->sPresetSimData:Ljava/util/HashMap;

    if-eqz v2, :cond_0

    .line 578
    sget-object v2, Lcom/mediatek/contacts/simcontact/SimCardUtils;->sPresetSimData:Ljava/util/HashMap;

    invoke-virtual {v2, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ContentValues;

    .line 579
    .local v1, "values":Landroid/content/ContentValues;
    if-eqz v1, :cond_0

    .line 580
    invoke-virtual {v1, p1}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 581
    .local v0, "v":Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 582
    return-object v0

    .line 587
    .end local v0    # "v":Ljava/lang/Object;
    .end local v1    # "values":Landroid/content/ContentValues;
    :cond_0
    return-object v3
.end method

.method public static getSimTypeBySubId(I)I
    .locals 8
    .param p0, "subId"    # I

    .prologue
    .line 227
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "getSimTypeBySlot"

    invoke-static {v5, v6}, Lcom/mediatek/contacts/simcontact/SimCardUtils;->getPresetObject(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 228
    .local v4, "v":Ljava/lang/Integer;
    if-eqz v4, :cond_0

    .line 229
    const-string/jumbo v5, "SimCardUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "[getSimTypeBySubId]subId:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ",v:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/contacts/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v5

    return v5

    .line 232
    :cond_0
    const/4 v3, -0x1

    .line 235
    .local v3, "simType":I
    const-string/jumbo v5, "phoneEx"

    .line 234
    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/mediatek/internal/telephony/ITelephonyEx$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/internal/telephony/ITelephonyEx;

    move-result-object v1

    .line 236
    .local v1, "iTel":Lcom/mediatek/internal/telephony/ITelephonyEx;
    if-nez v1, :cond_1

    .line 237
    const-string/jumbo v5, "SimCardUtils"

    const-string/jumbo v6, "[getSimTypeBySubId]iTel == null"

    invoke-static {v5, v6}, Lcom/mediatek/contacts/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    return v3

    .line 242
    :cond_1
    :try_start_0
    invoke-interface {v1, p0}, Lcom/mediatek/internal/telephony/ITelephonyEx;->getIccCardType(I)Ljava/lang/String;

    move-result-object v2

    .line 243
    .local v2, "iccCardType":Ljava/lang/String;
    const-string/jumbo v5, "USIM"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    if-eqz v5, :cond_3

    .line 244
    const/4 v3, 0x1

    .line 257
    .end local v2    # "iccCardType":Ljava/lang/String;
    :cond_2
    :goto_0
    const-string/jumbo v5, "SimCardUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "[getSimTypeBySubId]subId:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ",simType:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/contacts/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    return v3

    .line 245
    .restart local v2    # "iccCardType":Ljava/lang/String;
    :cond_3
    :try_start_1
    const-string/jumbo v5, "RUIM"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 246
    const/4 v3, 0x2

    goto :goto_0

    .line 247
    :cond_4
    const-string/jumbo v5, "SIM"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 248
    const/4 v3, 0x0

    goto :goto_0

    .line 249
    :cond_5
    const-string/jumbo v5, "CSIM"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v5

    if-eqz v5, :cond_2

    .line 250
    const/4 v3, 0x3

    goto :goto_0

    .line 252
    .end local v2    # "iccCardType":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 253
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v5, "SimCardUtils"

    const-string/jumbo v6, "[getSimTypeBySubId]catch exception:"

    invoke-static {v5, v6}, Lcom/mediatek/contacts/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public static isSimUsimType(I)Z
    .locals 7
    .param p0, "subId"    # I

    .prologue
    .line 290
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "isSimUsimType"

    invoke-static {v4, v5}, Lcom/mediatek/contacts/simcontact/SimCardUtils;->getPresetObject(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    .line 291
    .local v3, "v":Ljava/lang/Boolean;
    if-eqz v3, :cond_0

    .line 292
    const-string/jumbo v4, "SimCardUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "[isSimUsimType]subId:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ",v:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/contacts/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    return v4

    .line 296
    :cond_0
    const/4 v2, 0x0

    .line 298
    .local v2, "isUsim":Z
    const-string/jumbo v4, "phoneEx"

    .line 297
    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/mediatek/internal/telephony/ITelephonyEx$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/internal/telephony/ITelephonyEx;

    move-result-object v1

    .line 299
    .local v1, "iTel":Lcom/mediatek/internal/telephony/ITelephonyEx;
    if-nez v1, :cond_1

    .line 300
    const-string/jumbo v4, "SimCardUtils"

    const-string/jumbo v5, "[isSimUsimType]iTel == null"

    invoke-static {v4, v5}, Lcom/mediatek/contacts/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 301
    return v2

    .line 305
    :cond_1
    :try_start_0
    const-string/jumbo v4, "USIM"

    invoke-interface {v1, p0}, Lcom/mediatek/internal/telephony/ITelephonyEx;->getIccCardType(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 306
    const-string/jumbo v4, "CSIM"

    invoke-interface {v1, p0}, Lcom/mediatek/internal/telephony/ITelephonyEx;->getIccCardType(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    .line 305
    if-eqz v4, :cond_3

    .line 307
    :cond_2
    const/4 v2, 0x1

    .line 314
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

    const-string/jumbo v6, ",isUsim:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/contacts/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 316
    return v2

    .line 309
    :catch_0
    move-exception v0

    .line 310
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v4, "SimCardUtils"

    const-string/jumbo v5, "[isSimUsimType]catch exception:"

    invoke-static {v4, v5}, Lcom/mediatek/contacts/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 311
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
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 609
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 610
    .local v1, "value1":Landroid/content/ContentValues;
    if-eqz p1, :cond_0

    .line 611
    const-string/jumbo v3, "isFdnEnabed"

    invoke-virtual {v1, v3, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 613
    :cond_0
    if-eqz p2, :cond_1

    .line 614
    const-string/jumbo v3, "isSimUsimType"

    invoke-virtual {v1, v3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 616
    :cond_1
    if-eqz p3, :cond_2

    .line 617
    const-string/jumbo v3, "isPhoneBookReady"

    invoke-virtual {v1, v3, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 619
    :cond_2
    if-eqz p4, :cond_3

    .line 620
    const-string/jumbo v3, "isSimPinRequest"

    invoke-virtual {v1, v3, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 622
    :cond_3
    if-eqz p5, :cond_4

    .line 623
    const-string/jumbo v3, "isSimPukRequest"

    invoke-virtual {v1, v3, p5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 625
    :cond_4
    if-eqz p6, :cond_5

    .line 626
    const-string/jumbo v3, "isSetRadioOn"

    invoke-virtual {v1, v3, p6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 628
    :cond_5
    if-eqz p7, :cond_6

    .line 629
    const-string/jumbo v3, "isSimInserted"

    invoke-virtual {v1, v3, p7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 631
    :cond_6
    if-eqz p8, :cond_7

    .line 632
    const-string/jumbo v3, "getSimTypeBySlot"

    invoke-virtual {v1, v3, p8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 634
    :cond_7
    if-eqz p9, :cond_8

    .line 635
    const-string/jumbo v3, "isSimStateReady"

    invoke-virtual {v1, v3, p9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 637
    :cond_8
    sget-object v3, Lcom/mediatek/contacts/simcontact/SimCardUtils;->sPresetSimData:Ljava/util/HashMap;

    if-nez v3, :cond_9

    .line 638
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    sput-object v3, Lcom/mediatek/contacts/simcontact/SimCardUtils;->sPresetSimData:Ljava/util/HashMap;

    .line 640
    :cond_9
    if-eqz v1, :cond_b

    invoke-virtual {v1}, Landroid/content/ContentValues;->size()I

    move-result v3

    if-lez v3, :cond_b

    .line 641
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 642
    .local v0, "key1":Ljava/lang/String;
    sget-object v3, Lcom/mediatek/contacts/simcontact/SimCardUtils;->sPresetSimData:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 643
    sget-object v3, Lcom/mediatek/contacts/simcontact/SimCardUtils;->sPresetSimData:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 645
    :cond_a
    sget-object v3, Lcom/mediatek/contacts/simcontact/SimCardUtils;->sPresetSimData:Ljava/util/HashMap;

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 648
    .end local v0    # "key1":Ljava/lang/String;
    :cond_b
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 649
    .local v2, "value2":Landroid/content/ContentValues;
    if-eqz p10, :cond_c

    .line 650
    const-string/jumbo v3, "isSimInfoReady"

    invoke-virtual {v2, v3, p10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 652
    :cond_c
    if-eqz v2, :cond_e

    invoke-virtual {v2}, Landroid/content/ContentValues;->size()I

    move-result v3

    if-lez v3, :cond_e

    .line 653
    sget-object v3, Lcom/mediatek/contacts/simcontact/SimCardUtils;->sPresetSimData:Ljava/util/HashMap;

    sget-object v4, Lcom/mediatek/contacts/simcontact/SimCardUtils;->NO_SLOT:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 654
    sget-object v3, Lcom/mediatek/contacts/simcontact/SimCardUtils;->sPresetSimData:Ljava/util/HashMap;

    sget-object v4, Lcom/mediatek/contacts/simcontact/SimCardUtils;->NO_SLOT:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 656
    :cond_d
    sget-object v3, Lcom/mediatek/contacts/simcontact/SimCardUtils;->sPresetSimData:Ljava/util/HashMap;

    sget-object v4, Lcom/mediatek/contacts/simcontact/SimCardUtils;->NO_SLOT:Ljava/lang/String;

    invoke-virtual {v3, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 608
    :cond_e
    return-void
.end method
