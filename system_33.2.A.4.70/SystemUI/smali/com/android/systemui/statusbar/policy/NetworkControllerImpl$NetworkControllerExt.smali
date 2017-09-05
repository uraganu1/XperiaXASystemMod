.class Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$NetworkControllerExt;
.super Ljava/lang/Object;
.source "NetworkControllerImpl.java"

# interfaces
.implements Lcom/mediatek/systemui/statusbar/extcb/INetworkControllerExt;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NetworkControllerExt"
.end annotation


# instance fields
.field private final mConfig:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;

.field private mDebug:Z

.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;)V
    .locals 3
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;
    .param p2, "config"    # Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;

    .prologue
    .line 1228
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$NetworkControllerExt;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1224
    invoke-static {}, Lcom/mediatek/systemui/statusbar/extcb/FeatureOptionUtils;->isUserLoad()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$NetworkControllerExt;->mDebug:Z

    .line 1229
    iput-object p2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$NetworkControllerExt;->mConfig:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;

    .line 1230
    invoke-static {p1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->-get1(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/systemui/statusbar/extcb/PluginFactory;->getStatusBarPlugin(Landroid/content/Context;)Lcom/mediatek/systemui/ext/IStatusBarPlugin;

    move-result-object v0

    .line 1231
    iget-boolean v1, p2, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;->hspaDataDistinguishable:Z

    .line 1230
    invoke-interface {v0, v1}, Lcom/mediatek/systemui/ext/IStatusBarPlugin;->customizeHspaDistinguishable(Z)Z

    move-result v0

    iput-boolean v0, p2, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;->hspaDataDistinguishable:Z

    .line 1233
    iget-boolean v0, p2, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;->showAtLeast3G:Z

    iget-boolean v1, p2, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;->show4gForLte:Z

    .line 1234
    iget-boolean v2, p2, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;->hspaDataDistinguishable:Z

    .line 1233
    invoke-static {v0, v1, v2}, Lcom/mediatek/systemui/statusbar/extcb/DataType;->mapDataTypeSets(ZZZ)V

    .line 1235
    iget-boolean v0, p2, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;->showAtLeast3G:Z

    iget-boolean v1, p2, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;->show4gForLte:Z

    .line 1236
    iget-boolean v2, p2, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;->hspaDataDistinguishable:Z

    .line 1235
    invoke-static {v0, v1, v2}, Lcom/mediatek/systemui/statusbar/extcb/NetworkType;->mapNetworkTypeSets(ZZZ)V

    .line 1228
    return-void

    .line 1224
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private final getDataNetworkType(I)I
    .locals 9
    .param p1, "subId"    # I

    .prologue
    .line 1388
    const/4 v2, 0x0

    .line 1389
    .local v2, "dataNetType":I
    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$NetworkControllerExt;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    invoke-static {v6, p1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->-wrap0(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;I)Lcom/android/systemui/statusbar/policy/MobileSignalController;

    move-result-object v0

    .line 1390
    .local v0, "controller":Lcom/android/systemui/statusbar/policy/MobileSignalController;
    if-eqz v0, :cond_6

    .line 1391
    iget-boolean v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$NetworkControllerExt;->mDebug:Z

    if-eqz v6, :cond_0

    .line 1392
    const-string/jumbo v6, "StatusBar.NetworkControllerExt"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "getDataNetworkType(), DataState = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 1393
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getControllserDataState()I

    move-result v8

    .line 1392
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 1394
    const-string/jumbo v8, ", ServiceState = "

    .line 1392
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 1394
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getControllserServiceState()Landroid/telephony/ServiceState;

    move-result-object v8

    .line 1392
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1397
    :cond_0
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getControllserDataNetType()I

    move-result v3

    .line 1398
    .local v3, "networkTypeData":I
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getControllserServiceState()Landroid/telephony/ServiceState;

    move-result-object v5

    .line 1399
    .local v5, "serviceState":Landroid/telephony/ServiceState;
    if-eqz v5, :cond_7

    .line 1400
    iget-boolean v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$NetworkControllerExt;->mDebug:Z

    if-eqz v6, :cond_1

    .line 1401
    const-string/jumbo v6, "StatusBar.NetworkControllerExt"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "getDataNetworkType: DataNetType = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 1402
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getControllserDataNetType()I

    move-result v8

    .line 1401
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 1402
    const-string/jumbo v8, " / "

    .line 1401
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 1403
    invoke-virtual {v5}, Landroid/telephony/ServiceState;->getDataNetworkType()I

    move-result v8

    .line 1401
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1406
    :cond_1
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getControllserDataState()I

    move-result v6

    const/4 v7, -0x1

    if-eq v6, v7, :cond_2

    .line 1407
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getControllserDataState()I

    move-result v6

    if-nez v6, :cond_3

    .line 1409
    :cond_2
    invoke-virtual {v5}, Landroid/telephony/ServiceState;->getDataNetworkType()I

    move-result v3

    .line 1412
    :cond_3
    invoke-virtual {v5}, Landroid/telephony/ServiceState;->getVoiceNetworkType()I

    move-result v1

    .line 1413
    .local v1, "cs":I
    move v4, v3

    .line 1414
    .local v4, "ps":I
    iget-boolean v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$NetworkControllerExt;->mDebug:Z

    if-eqz v6, :cond_4

    .line 1415
    const-string/jumbo v6, "StatusBar.NetworkControllerExt"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "getNWTypeByPriority(), CS = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ", PS = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1417
    :cond_4
    invoke-direct {p0, v1, v4}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$NetworkControllerExt;->getNWTypeByPriority(II)I

    move-result v2

    .line 1423
    .end local v1    # "cs":I
    .end local v4    # "ps":I
    :goto_0
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getControllerSubInfo()Landroid/telephony/SubscriptionInfo;

    move-result-object v6

    invoke-static {v6}, Lcom/mediatek/systemui/statusbar/extcb/SvLteController;->isMediatekSVLteDcSupport(Landroid/telephony/SubscriptionInfo;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 1424
    iget-object v6, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mSvLteController:Lcom/mediatek/systemui/statusbar/extcb/SvLteController;

    invoke-virtual {v6, v2}, Lcom/mediatek/systemui/statusbar/extcb/SvLteController;->getDataNetTypeWithLTEService(I)I

    move-result v2

    .line 1428
    :cond_5
    const-string/jumbo v6, "StatusBar.NetworkControllerExt"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "getDataNetworkType: DataNetType="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 1429
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getControllserDataNetType()I

    move-result v8

    .line 1428
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 1429
    const-string/jumbo v8, " / "

    .line 1428
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1432
    .end local v3    # "networkTypeData":I
    .end local v5    # "serviceState":Landroid/telephony/ServiceState;
    :cond_6
    return v2

    .line 1419
    .restart local v3    # "networkTypeData":I
    .restart local v5    # "serviceState":Landroid/telephony/ServiceState;
    :cond_7
    move v2, v3

    goto :goto_0
.end method

.method private final getNWTypeByPriority(II)I
    .locals 2
    .param p1, "cs"    # I
    .param p2, "ps"    # I

    .prologue
    .line 1436
    invoke-static {p1}, Landroid/telephony/TelephonyManager;->getNetworkClass(I)I

    move-result v0

    invoke-static {p2}, Landroid/telephony/TelephonyManager;->getNetworkClass(I)I

    move-result v1

    if-le v0, v1, :cond_0

    .line 1437
    return p1

    .line 1439
    :cond_0
    return p2
.end method

.method private final isBehaviorSet(Lcom/mediatek/systemui/statusbar/extcb/BehaviorSet;)Z
    .locals 1
    .param p1, "behaviorSet"    # Lcom/mediatek/systemui/statusbar/extcb/BehaviorSet;

    .prologue
    .line 1444
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$NetworkControllerExt;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->-get1(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/systemui/statusbar/extcb/PluginFactory;->getStatusBarPlugin(Landroid/content/Context;)Lcom/mediatek/systemui/ext/IStatusBarPlugin;

    move-result-object v0

    invoke-interface {v0}, Lcom/mediatek/systemui/ext/IStatusBarPlugin;->customizeBehaviorSet()Lcom/mediatek/systemui/statusbar/extcb/BehaviorSet;

    move-result-object v0

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getDataActivity(I)I
    .locals 3
    .param p1, "subId"    # I

    .prologue
    .line 1317
    const/4 v0, 0x0

    .line 1318
    .local v0, "activity":I
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$NetworkControllerExt;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    invoke-static {v2, p1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->-wrap0(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;I)Lcom/android/systemui/statusbar/policy/MobileSignalController;

    move-result-object v1

    .line 1319
    .local v1, "controller":Lcom/android/systemui/statusbar/policy/MobileSignalController;
    if-eqz v1, :cond_0

    iget-object v2, v1, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v2, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-boolean v2, v2, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->dataConnected:Z

    if-eqz v2, :cond_0

    .line 1320
    iget-object v2, v1, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v2, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-boolean v2, v2, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->activityIn:Z

    if-eqz v2, :cond_1

    .line 1321
    iget-object v2, v1, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v2, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-boolean v2, v2, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->activityOut:Z

    .line 1320
    if-eqz v2, :cond_1

    .line 1322
    const/4 v0, 0x3

    .line 1329
    :cond_0
    :goto_0
    return v0

    .line 1323
    :cond_1
    iget-object v2, v1, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v2, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-boolean v2, v2, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->activityIn:Z

    if-eqz v2, :cond_2

    .line 1324
    const/4 v0, 0x2

    goto :goto_0

    .line 1325
    :cond_2
    iget-object v2, v1, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v2, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-boolean v2, v2, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->activityOut:Z

    if-eqz v2, :cond_0

    .line 1326
    const/4 v0, 0x2

    goto :goto_0
.end method

.method public getDataType(I)Lcom/mediatek/systemui/statusbar/extcb/DataType;
    .locals 3
    .param p1, "subId"    # I

    .prologue
    .line 1309
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$NetworkControllerExt;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    invoke-static {v2, p1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->-wrap0(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;I)Lcom/android/systemui/statusbar/policy/MobileSignalController;

    move-result-object v0

    .line 1310
    .local v0, "controller":Lcom/android/systemui/statusbar/policy/MobileSignalController;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getControllserDataNetType()I

    move-result v1

    .line 1312
    .local v1, "dataNetType":I
    :goto_0
    invoke-static {v1}, Lcom/mediatek/systemui/statusbar/extcb/DataType;->get(I)Lcom/mediatek/systemui/statusbar/extcb/DataType;

    move-result-object v2

    return-object v2

    .line 1311
    .end local v1    # "dataNetType":I
    :cond_0
    const/4 v1, 0x0

    .restart local v1    # "dataNetType":I
    goto :goto_0
.end method

.method public getDefaultRoamingIcon(Lcom/mediatek/systemui/statusbar/extcb/IconIdWrapper;)V
    .locals 1
    .param p1, "icon"    # Lcom/mediatek/systemui/statusbar/extcb/IconIdWrapper;

    .prologue
    .line 1267
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$NetworkControllerExt;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->-get1(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/mediatek/systemui/statusbar/extcb/IconIdWrapper;->setResources(Landroid/content/res/Resources;)V

    .line 1268
    const v0, 0x7f0201ab

    invoke-virtual {p1, v0}, Lcom/mediatek/systemui/statusbar/extcb/IconIdWrapper;->setIconId(I)V

    .line 1266
    return-void
.end method

.method public getDefaultSignalNullIcon(Lcom/mediatek/systemui/statusbar/extcb/IconIdWrapper;)V
    .locals 1
    .param p1, "icon"    # Lcom/mediatek/systemui/statusbar/extcb/IconIdWrapper;

    .prologue
    .line 1261
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$NetworkControllerExt;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->-get1(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/mediatek/systemui/statusbar/extcb/IconIdWrapper;->setResources(Landroid/content/res/Resources;)V

    .line 1262
    const v0, 0x7f0201dd

    invoke-virtual {p1, v0}, Lcom/mediatek/systemui/statusbar/extcb/IconIdWrapper;->setIconId(I)V

    .line 1260
    return-void
.end method

.method public getNetworkType(I)Lcom/mediatek/systemui/statusbar/extcb/NetworkType;
    .locals 2
    .param p1, "subId"    # I

    .prologue
    .line 1303
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$NetworkControllerExt;->getDataNetworkType(I)I

    move-result v0

    .line 1304
    .local v0, "dataNetType":I
    invoke-static {v0}, Lcom/mediatek/systemui/statusbar/extcb/NetworkType;->get(I)Lcom/mediatek/systemui/statusbar/extcb/NetworkType;

    move-result-object v1

    return-object v1
.end method

.method public getResources()Landroid/content/res/Resources;
    .locals 1

    .prologue
    .line 1256
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$NetworkControllerExt;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->-get1(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    return-object v0
.end method

.method public getSignalStrengthLevel(I)I
    .locals 3
    .param p1, "subId"    # I

    .prologue
    .line 1295
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$NetworkControllerExt;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    invoke-static {v2, p1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->-wrap0(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;I)Lcom/android/systemui/statusbar/policy/MobileSignalController;

    move-result-object v0

    .line 1296
    .local v0, "controller":Lcom/android/systemui/statusbar/policy/MobileSignalController;
    if-eqz v0, :cond_0

    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v2, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget v1, v2, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->level:I

    .line 1298
    .local v1, "level":I
    :goto_0
    return v1

    .line 1297
    .end local v1    # "level":I
    :cond_0
    const/4 v1, 0x0

    .restart local v1    # "level":I
    goto :goto_0
.end method

.method public getSvLteController(I)Lcom/mediatek/systemui/statusbar/extcb/SvLteController;
    .locals 3
    .param p1, "subId"    # I

    .prologue
    const/4 v1, 0x0

    .line 1339
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$NetworkControllerExt;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    invoke-static {v2, p1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->-wrap0(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;I)Lcom/android/systemui/statusbar/policy/MobileSignalController;

    move-result-object v0

    .line 1340
    .local v0, "controller":Lcom/android/systemui/statusbar/policy/MobileSignalController;
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mSvLteController:Lcom/mediatek/systemui/statusbar/extcb/SvLteController;

    :cond_0
    return-object v1
.end method

.method public hasMobileDataFeature()Z
    .locals 1

    .prologue
    .line 1251
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$NetworkControllerExt;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->-get2(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)Z

    move-result v0

    return v0
.end method

.method public hasService(I)Z
    .locals 3
    .param p1, "subId"    # I

    .prologue
    .line 1273
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$NetworkControllerExt;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    invoke-static {v2, p1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->-wrap0(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;I)Lcom/android/systemui/statusbar/policy/MobileSignalController;

    move-result-object v0

    .line 1274
    .local v0, "controller":Lcom/android/systemui/statusbar/policy/MobileSignalController;
    if-eqz v0, :cond_0

    .line 1275
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getControllserHasService()Z

    move-result v1

    .line 1276
    :goto_0
    return v1

    .line 1275
    :cond_0
    const/4 v1, 0x0

    .local v1, "hasService":Z
    goto :goto_0
.end method

.method public isDataConnected(I)Z
    .locals 2
    .param p1, "subId"    # I

    .prologue
    .line 1281
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$NetworkControllerExt;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    invoke-static {v1, p1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->-wrap0(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;I)Lcom/android/systemui/statusbar/policy/MobileSignalController;

    move-result-object v0

    .line 1282
    .local v0, "controller":Lcom/android/systemui/statusbar/policy/MobileSignalController;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getState()Lcom/android/systemui/statusbar/policy/SignalController$State;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-boolean v1, v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->dataConnected:Z

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isEmergencyOnly(I)Z
    .locals 3
    .param p1, "subId"    # I

    .prologue
    .line 1345
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$NetworkControllerExt;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    invoke-static {v2, p1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->-wrap0(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;I)Lcom/android/systemui/statusbar/policy/MobileSignalController;

    move-result-object v0

    .line 1346
    .local v0, "controller":Lcom/android/systemui/statusbar/policy/MobileSignalController;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->isEmergencyOnly()Z

    move-result v1

    .line 1347
    :goto_0
    return v1

    .line 1346
    :cond_0
    const/4 v1, 0x0

    .local v1, "isOnlyEmergency":Z
    goto :goto_0
.end method

.method public isHspaDataDistinguishable()Z
    .locals 1

    .prologue
    .line 1246
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$NetworkControllerExt;->mConfig:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;->hspaDataDistinguishable:Z

    return v0
.end method

.method public isLteTddSingleDataMode(I)Z
    .locals 1
    .param p1, "subId"    # I

    .prologue
    .line 1334
    const/4 v0, 0x0

    return v0
.end method

.method public isOffline(I)Z
    .locals 4
    .param p1, "subId"    # I

    .prologue
    .line 1352
    const/4 v1, 0x0

    .line 1353
    .local v1, "isOffline":Z
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$NetworkControllerExt;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    invoke-static {v2, p1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->-wrap0(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;I)Lcom/android/systemui/statusbar/policy/MobileSignalController;

    move-result-object v0

    .line 1354
    .local v0, "controller":Lcom/android/systemui/statusbar/policy/MobileSignalController;
    if-eqz v0, :cond_1

    .line 1355
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getControllerSubInfo()Landroid/telephony/SubscriptionInfo;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/systemui/statusbar/extcb/SvLteController;->isMediatekSVLteDcSupport(Landroid/telephony/SubscriptionInfo;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1357
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getControllerSubInfo()Landroid/telephony/SubscriptionInfo;

    move-result-object v2

    .line 1356
    invoke-static {v2}, Lcom/mediatek/systemui/statusbar/extcb/SvLteController;->isMediatekSRLteDcSupport(Landroid/telephony/SubscriptionInfo;)Z

    move-result v2

    .line 1355
    if-eqz v2, :cond_2

    .line 1358
    :cond_0
    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mSvLteController:Lcom/mediatek/systemui/statusbar/extcb/SvLteController;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$NetworkControllerExt;->getNetworkType(I)Lcom/mediatek/systemui/statusbar/extcb/NetworkType;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/mediatek/systemui/statusbar/extcb/SvLteController;->isOffline(Lcom/mediatek/systemui/statusbar/extcb/NetworkType;)Z

    move-result v1

    .line 1363
    .end local v1    # "isOffline":Z
    :cond_1
    :goto_0
    return v1

    .line 1360
    .restart local v1    # "isOffline":Z
    :cond_2
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->isEmergencyOnly()Z

    move-result v1

    .local v1, "isOffline":Z
    goto :goto_0
.end method

.method public isRoaming(I)Z
    .locals 3
    .param p1, "subId"    # I

    .prologue
    .line 1287
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$NetworkControllerExt;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    invoke-static {v2, p1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->-wrap0(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;I)Lcom/android/systemui/statusbar/policy/MobileSignalController;

    move-result-object v0

    .line 1288
    .local v0, "controller":Lcom/android/systemui/statusbar/policy/MobileSignalController;
    if-eqz v0, :cond_0

    .line 1289
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getControllserIsRoaming()Z

    move-result v1

    .line 1290
    :goto_0
    return v1

    .line 1289
    :cond_0
    const/4 v1, 0x0

    .local v1, "isRoaming":Z
    goto :goto_0
.end method

.method public isRoamingGGMode()Z
    .locals 6

    .prologue
    .line 1368
    const/4 v2, 0x0

    .line 1369
    .local v2, "isRoamingGGMode":Z
    sget-object v3, Lcom/mediatek/systemui/statusbar/extcb/BehaviorSet;->OP09_BS:Lcom/mediatek/systemui/statusbar/extcb/BehaviorSet;

    invoke-direct {p0, v3}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$NetworkControllerExt;->isBehaviorSet(Lcom/mediatek/systemui/statusbar/extcb/BehaviorSet;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1370
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$NetworkControllerExt;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    invoke-static {v3}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->-get1(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)Landroid/content/Context;

    move-result-object v3

    .line 1371
    const/4 v4, 0x0

    .line 1370
    invoke-static {v3, v4}, Lcom/mediatek/systemui/statusbar/util/SIMHelper;->getSubInfoBySlot(Landroid/content/Context;I)Landroid/telephony/SubscriptionInfo;

    move-result-object v1

    .line 1372
    .local v1, "info":Landroid/telephony/SubscriptionInfo;
    if-eqz v1, :cond_1

    .line 1373
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$NetworkControllerExt;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v4

    invoke-static {v3, v4}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->-wrap0(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;I)Lcom/android/systemui/statusbar/policy/MobileSignalController;

    move-result-object v0

    .line 1375
    .local v0, "controller":Lcom/android/systemui/statusbar/policy/MobileSignalController;
    if-eqz v0, :cond_0

    .line 1376
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getControllserIsCdma()Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_0
    const/4 v2, 0x0

    .line 1379
    .end local v0    # "controller":Lcom/android/systemui/statusbar/policy/MobileSignalController;
    .end local v1    # "info":Landroid/telephony/SubscriptionInfo;
    :cond_1
    :goto_0
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$NetworkControllerExt;->mDebug:Z

    if-eqz v3, :cond_2

    .line 1380
    const-string/jumbo v3, "StatusBar.NetworkControllerExt"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "isRoamingGGMode, slotId = 0, isRoamingGGMode = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1383
    :cond_2
    return v2

    .line 1376
    .restart local v0    # "controller":Lcom/android/systemui/statusbar/policy/MobileSignalController;
    .restart local v1    # "info":Landroid/telephony/SubscriptionInfo;
    :cond_3
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public isShowAtLeast3G()Z
    .locals 1

    .prologue
    .line 1241
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$NetworkControllerExt;->mConfig:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;->showAtLeast3G:Z

    return v0
.end method
