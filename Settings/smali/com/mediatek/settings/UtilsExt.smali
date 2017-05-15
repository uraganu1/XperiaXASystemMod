.class public Lcom/mediatek/settings/UtilsExt;
.super Ljava/lang/Object;
.source "UtilsExt.java"


# static fields
.field public static disableAppList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 87
    const-string/jumbo v0, "/system/etc/disableapplist.txt"

    invoke-static {v0}, Lcom/mediatek/settings/UtilsExt;->readFile(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    sput-object v0, Lcom/mediatek/settings/UtilsExt;->disableAppList:Ljava/util/ArrayList;

    .line 74
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getApnSettingsPlugin(Landroid/content/Context;)Lcom/mediatek/settings/ext/IApnSettingsExt;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 378
    const-class v1, Lcom/mediatek/settings/ext/IApnSettingsExt;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 377
    invoke-static {v1, p0}, Lcom/mediatek/common/MPlugin;->createInstance(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/settings/ext/IApnSettingsExt;

    .line 379
    .local v0, "ext":Lcom/mediatek/settings/ext/IApnSettingsExt;
    if-nez v0, :cond_0

    .line 380
    new-instance v0, Lcom/mediatek/settings/ext/DefaultApnSettingsExt;

    .end local v0    # "ext":Lcom/mediatek/settings/ext/IApnSettingsExt;
    invoke-direct {v0}, Lcom/mediatek/settings/ext/DefaultApnSettingsExt;-><init>()V

    .line 382
    .restart local v0    # "ext":Lcom/mediatek/settings/ext/IApnSettingsExt;
    :cond_0
    return-object v0
.end method

.method public static getAppListPlugin(Landroid/content/Context;)Lcom/mediatek/settings/ext/IAppListExt;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 236
    const-class v1, Lcom/mediatek/settings/ext/IAppListExt;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 235
    invoke-static {v1, p0}, Lcom/mediatek/common/MPlugin;->createInstance(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/settings/ext/IAppListExt;

    .line 237
    .local v0, "ext":Lcom/mediatek/settings/ext/IAppListExt;
    if-nez v0, :cond_0

    .line 238
    new-instance v0, Lcom/mediatek/settings/ext/DefaultAppListExt;

    .end local v0    # "ext":Lcom/mediatek/settings/ext/IAppListExt;
    invoke-direct {v0, p0}, Lcom/mediatek/settings/ext/DefaultAppListExt;-><init>(Landroid/content/Context;)V

    .line 240
    .restart local v0    # "ext":Lcom/mediatek/settings/ext/IAppListExt;
    :cond_0
    return-object v0
.end method

.method public static getAppsExtPlugin(Landroid/content/Context;)Lcom/mediatek/settings/ext/IAppsExt;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 463
    const-class v1, Lcom/mediatek/settings/ext/IAppsExt;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 462
    invoke-static {v1, p0}, Lcom/mediatek/common/MPlugin;->createInstance(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/settings/ext/IAppsExt;

    .line 464
    .local v0, "ext":Lcom/mediatek/settings/ext/IAppsExt;
    if-nez v0, :cond_0

    .line 465
    new-instance v0, Lcom/mediatek/settings/ext/DefaultAppsExt;

    .end local v0    # "ext":Lcom/mediatek/settings/ext/IAppsExt;
    invoke-direct {v0, p0}, Lcom/mediatek/settings/ext/DefaultAppsExt;-><init>(Landroid/content/Context;)V

    .line 467
    .restart local v0    # "ext":Lcom/mediatek/settings/ext/IAppsExt;
    :cond_0
    return-object v0
.end method

.method public static getAudioProfilePlugin(Landroid/content/Context;)Lcom/mediatek/settings/ext/IAudioProfileExt;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 294
    const-class v1, Lcom/mediatek/settings/ext/IAudioProfileExt;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 293
    invoke-static {v1, p0}, Lcom/mediatek/common/MPlugin;->createInstance(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/settings/ext/IAudioProfileExt;

    .line 295
    .local v0, "ext":Lcom/mediatek/settings/ext/IAudioProfileExt;
    if-nez v0, :cond_0

    .line 296
    new-instance v0, Lcom/mediatek/settings/ext/DefaultAudioProfileExt;

    .end local v0    # "ext":Lcom/mediatek/settings/ext/IAudioProfileExt;
    invoke-direct {v0, p0}, Lcom/mediatek/settings/ext/DefaultAudioProfileExt;-><init>(Landroid/content/Context;)V

    .line 298
    .restart local v0    # "ext":Lcom/mediatek/settings/ext/IAudioProfileExt;
    :cond_0
    return-object v0
.end method

.method public static getDataUsageSummaryPlugin(Landroid/content/Context;)Lcom/mediatek/settings/ext/IDataUsageSummaryExt;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 393
    const-class v1, Lcom/mediatek/settings/ext/IDataUsageSummaryExt;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 392
    invoke-static {v1, p0}, Lcom/mediatek/common/MPlugin;->createInstance(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/settings/ext/IDataUsageSummaryExt;

    .line 394
    .local v0, "ext":Lcom/mediatek/settings/ext/IDataUsageSummaryExt;
    if-nez v0, :cond_0

    .line 395
    new-instance v0, Lcom/mediatek/settings/ext/DefaultDataUsageSummaryExt;

    .end local v0    # "ext":Lcom/mediatek/settings/ext/IDataUsageSummaryExt;
    invoke-direct {v0, p0}, Lcom/mediatek/settings/ext/DefaultDataUsageSummaryExt;-><init>(Landroid/content/Context;)V

    .line 397
    .restart local v0    # "ext":Lcom/mediatek/settings/ext/IDataUsageSummaryExt;
    :cond_0
    return-object v0
.end method

.method public static getDevExtPlugin(Landroid/content/Context;)Lcom/mediatek/settings/ext/IDevExt;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 247
    const-class v1, Lcom/mediatek/settings/ext/IDevExt;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 246
    invoke-static {v1, p0}, Lcom/mediatek/common/MPlugin;->createInstance(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/settings/ext/IDevExt;

    .line 248
    .local v0, "ext":Lcom/mediatek/settings/ext/IDevExt;
    if-nez v0, :cond_0

    .line 249
    new-instance v0, Lcom/mediatek/settings/ext/DefaultDevExt;

    .end local v0    # "ext":Lcom/mediatek/settings/ext/IDevExt;
    invoke-direct {v0, p0}, Lcom/mediatek/settings/ext/DefaultDevExt;-><init>(Landroid/content/Context;)V

    .line 251
    .restart local v0    # "ext":Lcom/mediatek/settings/ext/IDevExt;
    :cond_0
    return-object v0
.end method

.method public static getMiscPlugin(Landroid/content/Context;)Lcom/mediatek/settings/ext/ISettingsMiscExt;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 145
    const-class v1, Lcom/mediatek/settings/ext/ISettingsMiscExt;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 144
    invoke-static {v1, p0}, Lcom/mediatek/common/MPlugin;->createInstance(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/settings/ext/ISettingsMiscExt;

    .line 146
    .local v0, "ext":Lcom/mediatek/settings/ext/ISettingsMiscExt;
    if-nez v0, :cond_0

    .line 147
    new-instance v0, Lcom/mediatek/settings/ext/DefaultSettingsMiscExt;

    .end local v0    # "ext":Lcom/mediatek/settings/ext/ISettingsMiscExt;
    invoke-direct {v0, p0}, Lcom/mediatek/settings/ext/DefaultSettingsMiscExt;-><init>(Landroid/content/Context;)V

    .line 149
    .restart local v0    # "ext":Lcom/mediatek/settings/ext/ISettingsMiscExt;
    :cond_0
    return-object v0
.end method

.method public static getRcsSettingsPlugin(Landroid/content/Context;)Lcom/mediatek/settings/ext/IRCSSettings;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 302
    const/4 v0, 0x0

    .line 304
    .local v0, "ext":Lcom/mediatek/settings/ext/IRCSSettings;
    const-class v1, Lcom/mediatek/settings/ext/IRCSSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 303
    invoke-static {v1, p0}, Lcom/mediatek/common/MPlugin;->createInstance(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "ext":Lcom/mediatek/settings/ext/IRCSSettings;
    check-cast v0, Lcom/mediatek/settings/ext/IRCSSettings;

    .line 305
    .local v0, "ext":Lcom/mediatek/settings/ext/IRCSSettings;
    if-nez v0, :cond_0

    .line 306
    new-instance v0, Lcom/mediatek/settings/ext/DefaultRCSSettings;

    .end local v0    # "ext":Lcom/mediatek/settings/ext/IRCSSettings;
    invoke-direct {v0}, Lcom/mediatek/settings/ext/DefaultRCSSettings;-><init>()V

    .line 308
    .restart local v0    # "ext":Lcom/mediatek/settings/ext/IRCSSettings;
    :cond_0
    return-object v0
.end method

.method public static getRcseApnPlugin(Landroid/content/Context;)Lcom/mediatek/settings/ext/IRcseOnlyApnExt;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 421
    const/4 v0, 0x0

    .line 423
    .local v0, "ext":Lcom/mediatek/settings/ext/IRcseOnlyApnExt;
    const-class v1, Lcom/mediatek/settings/ext/IRcseOnlyApnExt;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 422
    invoke-static {v1, p0}, Lcom/mediatek/common/MPlugin;->createInstance(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "ext":Lcom/mediatek/settings/ext/IRcseOnlyApnExt;
    check-cast v0, Lcom/mediatek/settings/ext/IRcseOnlyApnExt;

    .line 424
    .local v0, "ext":Lcom/mediatek/settings/ext/IRcseOnlyApnExt;
    if-nez v0, :cond_0

    .line 425
    new-instance v0, Lcom/mediatek/settings/ext/DefaultRcseOnlyApnExt;

    .end local v0    # "ext":Lcom/mediatek/settings/ext/IRcseOnlyApnExt;
    invoke-direct {v0}, Lcom/mediatek/settings/ext/DefaultRcseOnlyApnExt;-><init>()V

    .line 427
    .restart local v0    # "ext":Lcom/mediatek/settings/ext/IRcseOnlyApnExt;
    :cond_0
    return-object v0
.end method

.method public static getSMSApDialogPlugin(Landroid/content/Context;)Lcom/mediatek/settings/ext/ISmsDialogExt;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 205
    const-class v1, Lcom/mediatek/settings/ext/ISmsDialogExt;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 204
    invoke-static {v1, p0}, Lcom/mediatek/common/MPlugin;->createInstance(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/settings/ext/ISmsDialogExt;

    .line 206
    .local v0, "ext":Lcom/mediatek/settings/ext/ISmsDialogExt;
    if-nez v0, :cond_0

    .line 207
    new-instance v0, Lcom/mediatek/settings/ext/DefaultSmsDialogExt;

    .end local v0    # "ext":Lcom/mediatek/settings/ext/ISmsDialogExt;
    invoke-direct {v0, p0}, Lcom/mediatek/settings/ext/DefaultSmsDialogExt;-><init>(Landroid/content/Context;)V

    .line 209
    .restart local v0    # "ext":Lcom/mediatek/settings/ext/ISmsDialogExt;
    :cond_0
    return-object v0
.end method

.method public static getSimManagmentExtPlugin(Landroid/content/Context;)Lcom/mediatek/settings/ext/ISimManagementExt;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 363
    const-class v1, Lcom/mediatek/settings/ext/ISimManagementExt;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 362
    invoke-static {v1, p0}, Lcom/mediatek/common/MPlugin;->createInstance(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/settings/ext/ISimManagementExt;

    .line 364
    .local v0, "ext":Lcom/mediatek/settings/ext/ISimManagementExt;
    if-nez v0, :cond_0

    .line 365
    new-instance v0, Lcom/mediatek/settings/ext/DefaultSimManagementExt;

    .end local v0    # "ext":Lcom/mediatek/settings/ext/ISimManagementExt;
    invoke-direct {v0}, Lcom/mediatek/settings/ext/DefaultSimManagementExt;-><init>()V

    .line 367
    .restart local v0    # "ext":Lcom/mediatek/settings/ext/ISimManagementExt;
    :cond_0
    return-object v0
.end method

.method public static getSimRoamingExtPlugin(Landroid/content/Context;)Lcom/mediatek/settings/ext/ISimRoamingExt;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 408
    const-class v1, Lcom/mediatek/settings/ext/ISimRoamingExt;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 407
    invoke-static {v1, p0}, Lcom/mediatek/common/MPlugin;->createInstance(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/settings/ext/ISimRoamingExt;

    .line 409
    .local v0, "ext":Lcom/mediatek/settings/ext/ISimRoamingExt;
    if-nez v0, :cond_0

    .line 410
    new-instance v0, Lcom/mediatek/settings/ext/DefaultSimRoamingExt;

    .end local v0    # "ext":Lcom/mediatek/settings/ext/ISimRoamingExt;
    invoke-direct {v0}, Lcom/mediatek/settings/ext/DefaultSimRoamingExt;-><init>()V

    .line 412
    .restart local v0    # "ext":Lcom/mediatek/settings/ext/ISimRoamingExt;
    :cond_0
    return-object v0
.end method

.method public static getSmsPreferencePlugin(Landroid/content/Context;)Lcom/mediatek/settings/ext/ISmsPreferenceExt;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 220
    const-class v1, Lcom/mediatek/settings/ext/ISmsPreferenceExt;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 219
    invoke-static {v1, p0}, Lcom/mediatek/common/MPlugin;->createInstance(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/settings/ext/ISmsPreferenceExt;

    .line 221
    .local v0, "ext":Lcom/mediatek/settings/ext/ISmsPreferenceExt;
    if-nez v0, :cond_0

    .line 222
    new-instance v0, Lcom/mediatek/settings/ext/DefaultSmsPreferenceExt;

    .end local v0    # "ext":Lcom/mediatek/settings/ext/ISmsPreferenceExt;
    invoke-direct {v0}, Lcom/mediatek/settings/ext/DefaultSmsPreferenceExt;-><init>()V

    .line 224
    .restart local v0    # "ext":Lcom/mediatek/settings/ext/ISmsPreferenceExt;
    :cond_0
    return-object v0
.end method

.method public static getStatusBarPlmnPlugin(Landroid/content/Context;)Lcom/mediatek/settings/ext/IStatusBarPlmnDisplayExt;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 452
    const-class v1, Lcom/mediatek/settings/ext/IStatusBarPlmnDisplayExt;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 451
    invoke-static {v1, p0}, Lcom/mediatek/common/MPlugin;->createInstance(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/settings/ext/IStatusBarPlmnDisplayExt;

    .line 453
    .local v0, "ext":Lcom/mediatek/settings/ext/IStatusBarPlmnDisplayExt;
    if-nez v0, :cond_0

    .line 454
    new-instance v0, Lcom/mediatek/settings/ext/DefaultStatusBarPlmnDisplayExt;

    .end local v0    # "ext":Lcom/mediatek/settings/ext/IStatusBarPlmnDisplayExt;
    invoke-direct {v0, p0}, Lcom/mediatek/settings/ext/DefaultStatusBarPlmnDisplayExt;-><init>(Landroid/content/Context;)V

    .line 456
    .restart local v0    # "ext":Lcom/mediatek/settings/ext/IStatusBarPlmnDisplayExt;
    :cond_0
    return-object v0
.end method

.method public static getStatusExtPlugin(Landroid/content/Context;)Lcom/mediatek/settings/ext/IStatusExt;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 438
    const-class v1, Lcom/mediatek/settings/ext/IStatusExt;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 437
    invoke-static {v1, p0}, Lcom/mediatek/common/MPlugin;->createInstance(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/settings/ext/IStatusExt;

    .line 439
    .local v0, "ext":Lcom/mediatek/settings/ext/IStatusExt;
    if-nez v0, :cond_0

    .line 440
    new-instance v0, Lcom/mediatek/settings/ext/DefaultStatusExt;

    .end local v0    # "ext":Lcom/mediatek/settings/ext/IStatusExt;
    invoke-direct {v0}, Lcom/mediatek/settings/ext/DefaultStatusExt;-><init>()V

    .line 442
    .restart local v0    # "ext":Lcom/mediatek/settings/ext/IStatusExt;
    :cond_0
    return-object v0
.end method

.method public static getWfcSettingsPlugin(Landroid/content/Context;)Lcom/mediatek/settings/ext/IWfcSettingsExt;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 475
    const/4 v0, 0x0

    .line 477
    .local v0, "ext":Lcom/mediatek/settings/ext/IWfcSettingsExt;
    const-class v1, Lcom/mediatek/settings/ext/IWfcSettingsExt;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 476
    invoke-static {v1, p0}, Lcom/mediatek/common/MPlugin;->createInstance(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "ext":Lcom/mediatek/settings/ext/IWfcSettingsExt;
    check-cast v0, Lcom/mediatek/settings/ext/IWfcSettingsExt;

    .line 478
    .local v0, "ext":Lcom/mediatek/settings/ext/IWfcSettingsExt;
    if-nez v0, :cond_0

    .line 479
    new-instance v0, Lcom/mediatek/settings/ext/DefaultWfcSettingsExt;

    .end local v0    # "ext":Lcom/mediatek/settings/ext/IWfcSettingsExt;
    invoke-direct {v0}, Lcom/mediatek/settings/ext/DefaultWfcSettingsExt;-><init>()V

    .line 481
    .restart local v0    # "ext":Lcom/mediatek/settings/ext/IWfcSettingsExt;
    :cond_0
    return-object v0
.end method

.method public static getWifiApDialogPlugin(Landroid/content/Context;)Lcom/mediatek/settings/ext/IWifiApDialogExt;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 189
    const-class v1, Lcom/mediatek/settings/ext/IWifiApDialogExt;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 188
    invoke-static {v1, p0}, Lcom/mediatek/common/MPlugin;->createInstance(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/settings/ext/IWifiApDialogExt;

    .line 190
    .local v0, "ext":Lcom/mediatek/settings/ext/IWifiApDialogExt;
    if-nez v0, :cond_0

    .line 191
    new-instance v0, Lcom/mediatek/settings/ext/DefaultWifiApDialogExt;

    .end local v0    # "ext":Lcom/mediatek/settings/ext/IWifiApDialogExt;
    invoke-direct {v0}, Lcom/mediatek/settings/ext/DefaultWifiApDialogExt;-><init>()V

    .line 193
    .restart local v0    # "ext":Lcom/mediatek/settings/ext/IWifiApDialogExt;
    :cond_0
    return-object v0
.end method

.method public static getWifiPlugin(Landroid/content/Context;)Lcom/mediatek/settings/ext/IWifiExt;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 160
    const-class v1, Lcom/mediatek/settings/ext/IWifiExt;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 159
    invoke-static {v1, p0}, Lcom/mediatek/common/MPlugin;->createInstance(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/settings/ext/IWifiExt;

    .line 161
    .local v0, "ext":Lcom/mediatek/settings/ext/IWifiExt;
    if-nez v0, :cond_0

    .line 162
    new-instance v0, Lcom/mediatek/settings/ext/DefaultWifiExt;

    .end local v0    # "ext":Lcom/mediatek/settings/ext/IWifiExt;
    invoke-direct {v0, p0}, Lcom/mediatek/settings/ext/DefaultWifiExt;-><init>(Landroid/content/Context;)V

    .line 164
    .restart local v0    # "ext":Lcom/mediatek/settings/ext/IWifiExt;
    :cond_0
    return-object v0
.end method

.method public static isGmsBuild(Landroid/content/Context;)Z
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 546
    const/4 v2, 0x0

    .line 548
    .local v2, "isGms":Z
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 549
    const-string/jumbo v4, "com.google.android.gms"

    const/4 v5, 0x0

    .line 548
    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 550
    .local v1, "info":Landroid/content/pm/ApplicationInfo;
    if-eqz v1, :cond_0

    iget v3, v1, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_0

    .line 551
    const/4 v2, 0x1

    .line 557
    .end local v1    # "info":Landroid/content/pm/ApplicationInfo;
    :goto_0
    const-string/jumbo v3, "UtilsExt"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Is GMS Build? "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 558
    return v2

    .line 553
    .restart local v1    # "info":Landroid/content/pm/ApplicationInfo;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 555
    .end local v1    # "info":Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_0
.end method

.method public static isPackageExist(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    .line 276
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 277
    const/4 v2, 0x1

    .line 276
    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 281
    return v3

    .line 278
    :catch_0
    move-exception v0

    .line 279
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v1, 0x0

    return v1
.end method

.method public static readFile(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 12
    .param p0, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v11, 0x0

    .line 490
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 491
    .local v0, "appsList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 492
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 493
    .local v3, "file":Ljava/io/File;
    const/4 v4, 0x0

    .line 494
    .local v4, "fr":Ljava/io/FileReader;
    const/4 v1, 0x0

    .line 496
    .local v1, "br":Ljava/io/BufferedReader;
    :try_start_0
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 497
    new-instance v5, Ljava/io/FileReader;

    invoke-direct {v5, v3}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 502
    .end local v4    # "fr":Ljava/io/FileReader;
    .local v5, "fr":Ljava/io/FileReader;
    :try_start_1
    new-instance v2, Ljava/io/BufferedReader;

    invoke-direct {v2, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 504
    .end local v1    # "br":Ljava/io/BufferedReader;
    .local v2, "br":Ljava/io/BufferedReader;
    :goto_0
    :try_start_2
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v7

    .local v7, "line":Ljava/lang/String;
    if-eqz v7, :cond_3

    .line 505
    const-string/jumbo v8, "UtilsExt"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, " read line "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 506
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    .line 509
    .end local v7    # "line":Ljava/lang/String;
    :catch_0
    move-exception v6

    .local v6, "io":Ljava/io/IOException;
    move-object v1, v2

    .end local v2    # "br":Ljava/io/BufferedReader;
    .local v1, "br":Ljava/io/BufferedReader;
    move-object v4, v5

    .line 510
    .end local v1    # "br":Ljava/io/BufferedReader;
    .end local v5    # "fr":Ljava/io/FileReader;
    :goto_1
    :try_start_3
    const-string/jumbo v8, "UtilsExt"

    const-string/jumbo v9, "IOException"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 511
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 514
    if-eqz v1, :cond_0

    .line 515
    :try_start_4
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 517
    :cond_0
    if-eqz v4, :cond_1

    .line 518
    invoke-virtual {v4}, Ljava/io/FileReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 524
    :cond_1
    :goto_2
    return-object v11

    .line 499
    .end local v6    # "io":Ljava/io/IOException;
    .local v1, "br":Ljava/io/BufferedReader;
    .restart local v4    # "fr":Ljava/io/FileReader;
    :cond_2
    :try_start_5
    const-string/jumbo v8, "UtilsExt"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "file in "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " does not exist!"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 500
    return-object v11

    .line 514
    .end local v1    # "br":Ljava/io/BufferedReader;
    .end local v4    # "fr":Ljava/io/FileReader;
    .restart local v2    # "br":Ljava/io/BufferedReader;
    .restart local v5    # "fr":Ljava/io/FileReader;
    .restart local v7    # "line":Ljava/lang/String;
    :cond_3
    if-eqz v2, :cond_4

    .line 515
    :try_start_6
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    .line 517
    :cond_4
    if-eqz v5, :cond_5

    .line 518
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    .line 508
    :cond_5
    :goto_3
    return-object v0

    .line 520
    :catch_1
    move-exception v6

    .line 521
    .restart local v6    # "io":Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 520
    .end local v2    # "br":Ljava/io/BufferedReader;
    .end local v5    # "fr":Ljava/io/FileReader;
    .end local v7    # "line":Ljava/lang/String;
    :catch_2
    move-exception v6

    .line 521
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 512
    .end local v6    # "io":Ljava/io/IOException;
    :catchall_0
    move-exception v8

    .line 514
    :goto_4
    if-eqz v1, :cond_6

    .line 515
    :try_start_7
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 517
    :cond_6
    if-eqz v4, :cond_7

    .line 518
    invoke-virtual {v4}, Ljava/io/FileReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    .line 512
    :cond_7
    :goto_5
    throw v8

    .line 520
    :catch_3
    move-exception v6

    .line 521
    .restart local v6    # "io":Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 512
    .end local v6    # "io":Ljava/io/IOException;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v5    # "fr":Ljava/io/FileReader;
    :catchall_1
    move-exception v8

    move-object v4, v5

    .end local v5    # "fr":Ljava/io/FileReader;
    .local v4, "fr":Ljava/io/FileReader;
    goto :goto_4

    .end local v1    # "br":Ljava/io/BufferedReader;
    .end local v4    # "fr":Ljava/io/FileReader;
    .restart local v2    # "br":Ljava/io/BufferedReader;
    .restart local v5    # "fr":Ljava/io/FileReader;
    :catchall_2
    move-exception v8

    move-object v1, v2

    .end local v2    # "br":Ljava/io/BufferedReader;
    .local v1, "br":Ljava/io/BufferedReader;
    move-object v4, v5

    .end local v5    # "fr":Ljava/io/FileReader;
    .restart local v4    # "fr":Ljava/io/FileReader;
    goto :goto_4

    .line 509
    .local v1, "br":Ljava/io/BufferedReader;
    .local v4, "fr":Ljava/io/FileReader;
    :catch_4
    move-exception v6

    .restart local v6    # "io":Ljava/io/IOException;
    goto :goto_1

    .end local v4    # "fr":Ljava/io/FileReader;
    .end local v6    # "io":Ljava/io/IOException;
    .restart local v5    # "fr":Ljava/io/FileReader;
    :catch_5
    move-exception v6

    .restart local v6    # "io":Ljava/io/IOException;
    move-object v4, v5

    .end local v5    # "fr":Ljava/io/FileReader;
    .local v4, "fr":Ljava/io/FileReader;
    goto :goto_1
.end method

.method public static shouldDisableForAutoSanity()Z
    .locals 5

    .prologue
    .line 534
    const-string/jumbo v2, "ro.mtk.autosanity"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 535
    .local v0, "autoSanity":Z
    const-string/jumbo v2, "ro.build.type"

    const-string/jumbo v3, ""

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 536
    .local v1, "buildType":Ljava/lang/String;
    const-string/jumbo v2, "UtilsExt"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "autoSanity: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " buildType: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 537
    if-eqz v0, :cond_0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 541
    :cond_0
    const/4 v2, 0x0

    return v2

    .line 537
    :cond_1
    const-string/jumbo v2, "eng"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 538
    const-string/jumbo v2, "UtilsExt"

    const-string/jumbo v3, "ShouldDisableForAutoSanity()..."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 539
    const/4 v2, 0x1

    return v2
.end method
