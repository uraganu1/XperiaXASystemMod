.class public Lcom/mediatek/keyguard/Plugin/KeyguardPluginFactory;
.super Ljava/lang/Object;
.source "KeyguardPluginFactory.java"


# static fields
.field private static mCarrierTextExt:Lcom/mediatek/keyguard/ext/ICarrierTextExt;

.field private static mEmergencyButtonExt:Lcom/mediatek/keyguard/ext/IEmergencyButtonExt;

.field private static mKeyguardUtilExt:Lcom/mediatek/keyguard/ext/IKeyguardUtilExt;

.field private static mOperatorSIMString:Lcom/mediatek/keyguard/ext/IOperatorSIMString;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 21
    sput-object v0, Lcom/mediatek/keyguard/Plugin/KeyguardPluginFactory;->mEmergencyButtonExt:Lcom/mediatek/keyguard/ext/IEmergencyButtonExt;

    .line 22
    sput-object v0, Lcom/mediatek/keyguard/Plugin/KeyguardPluginFactory;->mCarrierTextExt:Lcom/mediatek/keyguard/ext/ICarrierTextExt;

    .line 23
    sput-object v0, Lcom/mediatek/keyguard/Plugin/KeyguardPluginFactory;->mKeyguardUtilExt:Lcom/mediatek/keyguard/ext/IKeyguardUtilExt;

    .line 24
    sput-object v0, Lcom/mediatek/keyguard/Plugin/KeyguardPluginFactory;->mOperatorSIMString:Lcom/mediatek/keyguard/ext/IOperatorSIMString;

    .line 19
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized getCarrierTextExt(Landroid/content/Context;)Lcom/mediatek/keyguard/ext/ICarrierTextExt;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const-class v1, Lcom/mediatek/keyguard/Plugin/KeyguardPluginFactory;

    monitor-enter v1

    .line 43
    :try_start_0
    sget-object v0, Lcom/mediatek/keyguard/Plugin/KeyguardPluginFactory;->mCarrierTextExt:Lcom/mediatek/keyguard/ext/ICarrierTextExt;

    if-nez v0, :cond_0

    .line 45
    const-class v0, Lcom/mediatek/keyguard/ext/ICarrierTextExt;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 44
    invoke-static {v0, p0}, Lcom/mediatek/common/MPlugin;->createInstance(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/keyguard/ext/ICarrierTextExt;

    sput-object v0, Lcom/mediatek/keyguard/Plugin/KeyguardPluginFactory;->mCarrierTextExt:Lcom/mediatek/keyguard/ext/ICarrierTextExt;

    .line 46
    const-string/jumbo v0, "KeyguardPluginFactory"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getCarrierTextExt carrierTextExt= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/mediatek/keyguard/Plugin/KeyguardPluginFactory;->mCarrierTextExt:Lcom/mediatek/keyguard/ext/ICarrierTextExt;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    sget-object v0, Lcom/mediatek/keyguard/Plugin/KeyguardPluginFactory;->mCarrierTextExt:Lcom/mediatek/keyguard/ext/ICarrierTextExt;

    if-nez v0, :cond_0

    .line 49
    new-instance v0, Lcom/mediatek/keyguard/ext/DefaultCarrierTextExt;

    invoke-direct {v0}, Lcom/mediatek/keyguard/ext/DefaultCarrierTextExt;-><init>()V

    sput-object v0, Lcom/mediatek/keyguard/Plugin/KeyguardPluginFactory;->mCarrierTextExt:Lcom/mediatek/keyguard/ext/ICarrierTextExt;

    .line 50
    const-string/jumbo v0, "KeyguardPluginFactory"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getCarrierTextExt get DefaultCarrierTextExt = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/mediatek/keyguard/Plugin/KeyguardPluginFactory;->mCarrierTextExt:Lcom/mediatek/keyguard/ext/ICarrierTextExt;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    :cond_0
    sget-object v0, Lcom/mediatek/keyguard/Plugin/KeyguardPluginFactory;->mCarrierTextExt:Lcom/mediatek/keyguard/ext/ICarrierTextExt;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized getEmergencyButtonExt(Landroid/content/Context;)Lcom/mediatek/keyguard/ext/IEmergencyButtonExt;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const-class v1, Lcom/mediatek/keyguard/Plugin/KeyguardPluginFactory;

    monitor-enter v1

    .line 27
    :try_start_0
    sget-object v0, Lcom/mediatek/keyguard/Plugin/KeyguardPluginFactory;->mEmergencyButtonExt:Lcom/mediatek/keyguard/ext/IEmergencyButtonExt;

    if-nez v0, :cond_0

    .line 29
    const-class v0, Lcom/mediatek/keyguard/ext/IEmergencyButtonExt;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 28
    invoke-static {v0, p0}, Lcom/mediatek/common/MPlugin;->createInstance(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/keyguard/ext/IEmergencyButtonExt;

    sput-object v0, Lcom/mediatek/keyguard/Plugin/KeyguardPluginFactory;->mEmergencyButtonExt:Lcom/mediatek/keyguard/ext/IEmergencyButtonExt;

    .line 30
    const-string/jumbo v0, "KeyguardPluginFactory"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getEmergencyButtonExt emergencyButtonExt= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/mediatek/keyguard/Plugin/KeyguardPluginFactory;->mEmergencyButtonExt:Lcom/mediatek/keyguard/ext/IEmergencyButtonExt;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    sget-object v0, Lcom/mediatek/keyguard/Plugin/KeyguardPluginFactory;->mEmergencyButtonExt:Lcom/mediatek/keyguard/ext/IEmergencyButtonExt;

    if-nez v0, :cond_0

    .line 33
    new-instance v0, Lcom/mediatek/keyguard/ext/DefaultEmergencyButtonExt;

    invoke-direct {v0}, Lcom/mediatek/keyguard/ext/DefaultEmergencyButtonExt;-><init>()V

    sput-object v0, Lcom/mediatek/keyguard/Plugin/KeyguardPluginFactory;->mEmergencyButtonExt:Lcom/mediatek/keyguard/ext/IEmergencyButtonExt;

    .line 34
    const-string/jumbo v0, "KeyguardPluginFactory"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getEmergencyButtonExt get DefaultEmergencyButtonExt = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 35
    sget-object v3, Lcom/mediatek/keyguard/Plugin/KeyguardPluginFactory;->mEmergencyButtonExt:Lcom/mediatek/keyguard/ext/IEmergencyButtonExt;

    .line 34
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    :cond_0
    sget-object v0, Lcom/mediatek/keyguard/Plugin/KeyguardPluginFactory;->mEmergencyButtonExt:Lcom/mediatek/keyguard/ext/IEmergencyButtonExt;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized getKeyguardUtilExt(Landroid/content/Context;)Lcom/mediatek/keyguard/ext/IKeyguardUtilExt;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const-class v1, Lcom/mediatek/keyguard/Plugin/KeyguardPluginFactory;

    monitor-enter v1

    .line 58
    :try_start_0
    sget-object v0, Lcom/mediatek/keyguard/Plugin/KeyguardPluginFactory;->mKeyguardUtilExt:Lcom/mediatek/keyguard/ext/IKeyguardUtilExt;

    if-nez v0, :cond_0

    .line 60
    const-class v0, Lcom/mediatek/keyguard/ext/IKeyguardUtilExt;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 59
    invoke-static {v0, p0}, Lcom/mediatek/common/MPlugin;->createInstance(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/keyguard/ext/IKeyguardUtilExt;

    sput-object v0, Lcom/mediatek/keyguard/Plugin/KeyguardPluginFactory;->mKeyguardUtilExt:Lcom/mediatek/keyguard/ext/IKeyguardUtilExt;

    .line 61
    const-string/jumbo v0, "KeyguardPluginFactory"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getKeyguardUtilExt keyguardUtilExt= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/mediatek/keyguard/Plugin/KeyguardPluginFactory;->mKeyguardUtilExt:Lcom/mediatek/keyguard/ext/IKeyguardUtilExt;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    sget-object v0, Lcom/mediatek/keyguard/Plugin/KeyguardPluginFactory;->mKeyguardUtilExt:Lcom/mediatek/keyguard/ext/IKeyguardUtilExt;

    if-nez v0, :cond_0

    .line 64
    new-instance v0, Lcom/mediatek/keyguard/ext/DefaultKeyguardUtilExt;

    invoke-direct {v0}, Lcom/mediatek/keyguard/ext/DefaultKeyguardUtilExt;-><init>()V

    sput-object v0, Lcom/mediatek/keyguard/Plugin/KeyguardPluginFactory;->mKeyguardUtilExt:Lcom/mediatek/keyguard/ext/IKeyguardUtilExt;

    .line 65
    const-string/jumbo v0, "KeyguardPluginFactory"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getKeyguardUtilExt get DefaultKeyguardUtilExt = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/mediatek/keyguard/Plugin/KeyguardPluginFactory;->mKeyguardUtilExt:Lcom/mediatek/keyguard/ext/IKeyguardUtilExt;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    :cond_0
    sget-object v0, Lcom/mediatek/keyguard/Plugin/KeyguardPluginFactory;->mKeyguardUtilExt:Lcom/mediatek/keyguard/ext/IKeyguardUtilExt;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized getOperatorSIMString(Landroid/content/Context;)Lcom/mediatek/keyguard/ext/IOperatorSIMString;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const-class v1, Lcom/mediatek/keyguard/Plugin/KeyguardPluginFactory;

    monitor-enter v1

    .line 72
    :try_start_0
    sget-object v0, Lcom/mediatek/keyguard/Plugin/KeyguardPluginFactory;->mOperatorSIMString:Lcom/mediatek/keyguard/ext/IOperatorSIMString;

    if-nez v0, :cond_0

    .line 74
    const-class v0, Lcom/mediatek/keyguard/ext/IOperatorSIMString;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 73
    invoke-static {v0, p0}, Lcom/mediatek/common/MPlugin;->createInstance(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/keyguard/ext/IOperatorSIMString;

    sput-object v0, Lcom/mediatek/keyguard/Plugin/KeyguardPluginFactory;->mOperatorSIMString:Lcom/mediatek/keyguard/ext/IOperatorSIMString;

    .line 75
    const-string/jumbo v0, "KeyguardPluginFactory"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getOperatorSIMString operatorSIMString= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/mediatek/keyguard/Plugin/KeyguardPluginFactory;->mOperatorSIMString:Lcom/mediatek/keyguard/ext/IOperatorSIMString;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    sget-object v0, Lcom/mediatek/keyguard/Plugin/KeyguardPluginFactory;->mOperatorSIMString:Lcom/mediatek/keyguard/ext/IOperatorSIMString;

    if-nez v0, :cond_0

    .line 78
    new-instance v0, Lcom/mediatek/keyguard/ext/DefaultOperatorSIMString;

    invoke-direct {v0}, Lcom/mediatek/keyguard/ext/DefaultOperatorSIMString;-><init>()V

    sput-object v0, Lcom/mediatek/keyguard/Plugin/KeyguardPluginFactory;->mOperatorSIMString:Lcom/mediatek/keyguard/ext/IOperatorSIMString;

    .line 79
    const-string/jumbo v0, "KeyguardPluginFactory"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getOperatorSIMString get DefaultOperatorSIMString = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 80
    sget-object v3, Lcom/mediatek/keyguard/Plugin/KeyguardPluginFactory;->mOperatorSIMString:Lcom/mediatek/keyguard/ext/IOperatorSIMString;

    .line 79
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    :cond_0
    sget-object v0, Lcom/mediatek/keyguard/Plugin/KeyguardPluginFactory;->mOperatorSIMString:Lcom/mediatek/keyguard/ext/IOperatorSIMString;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
