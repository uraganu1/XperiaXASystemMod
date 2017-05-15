.class public Lcom/mediatek/settings/sim/RadioPowerController;
.super Ljava/lang/Object;
.source "RadioPowerController.java"


# static fields
.field private static sInstance:Lcom/mediatek/settings/sim/RadioPowerController;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mExt:Lcom/mediatek/settings/ext/ISimManagementExt;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const/4 v0, 0x0

    sput-object v0, Lcom/mediatek/settings/sim/RadioPowerController;->sInstance:Lcom/mediatek/settings/sim/RadioPowerController;

    .line 21
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/mediatek/settings/sim/RadioPowerController;->mContext:Landroid/content/Context;

    .line 35
    iget-object v0, p0, Lcom/mediatek/settings/sim/RadioPowerController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/mediatek/settings/UtilsExt;->getSimManagmentExtPlugin(Landroid/content/Context;)Lcom/mediatek/settings/ext/ISimManagementExt;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/settings/sim/RadioPowerController;->mExt:Lcom/mediatek/settings/ext/ISimManagementExt;

    .line 33
    return-void
.end method

.method private static declared-synchronized createInstance(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const-class v1, Lcom/mediatek/settings/sim/RadioPowerController;

    monitor-enter v1

    .line 39
    :try_start_0
    sget-object v0, Lcom/mediatek/settings/sim/RadioPowerController;->sInstance:Lcom/mediatek/settings/sim/RadioPowerController;

    if-nez v0, :cond_0

    .line 40
    new-instance v0, Lcom/mediatek/settings/sim/RadioPowerController;

    invoke-direct {v0, p0}, Lcom/mediatek/settings/sim/RadioPowerController;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/mediatek/settings/sim/RadioPowerController;->sInstance:Lcom/mediatek/settings/sim/RadioPowerController;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    .line 38
    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/mediatek/settings/sim/RadioPowerController;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 45
    sget-object v0, Lcom/mediatek/settings/sim/RadioPowerController;->sInstance:Lcom/mediatek/settings/sim/RadioPowerController;

    if-nez v0, :cond_0

    .line 46
    invoke-static {p0}, Lcom/mediatek/settings/sim/RadioPowerController;->createInstance(Landroid/content/Context;)V

    .line 48
    :cond_0
    sget-object v0, Lcom/mediatek/settings/sim/RadioPowerController;->sInstance:Lcom/mediatek/settings/sim/RadioPowerController;

    return-object v0
.end method

.method public static getSimCount()I
    .locals 4

    .prologue
    .line 147
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getSimCount()I

    move-result v0

    .line 148
    .local v0, "count":I
    const/4 v2, 0x0

    .line 149
    .local v2, "simCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 150
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/telephony/TelephonyManager;->hasIccCard(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 151
    add-int/lit8 v2, v2, 0x1

    .line 149
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 154
    :cond_1
    return v2
.end method

.method private updateRadioMsimDb(IZ)V
    .locals 8
    .param p1, "subId"    # I
    .param p2, "turnOn"    # Z

    .prologue
    .line 106
    iget-object v5, p0, Lcom/mediatek/settings/sim/RadioPowerController;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 107
    const-string/jumbo v6, "msim_mode_setting"

    const/4 v7, -0x1

    .line 106
    invoke-static {v5, v6, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 108
    .local v3, "priviousSimMode":I
    const-string/jumbo v5, "RadioPowerController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "updateRadioMsimDb, The current dual sim mode is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 109
    const-string/jumbo v7, ", with subId = "

    .line 108
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    const/4 v1, 0x0

    .line 112
    .local v1, "isPriviousRadioOn":Z
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getSlotId(I)I

    move-result v4

    .line 113
    .local v4, "slot":I
    const/4 v5, 0x1

    shl-int v2, v5, v4

    .line 114
    .local v2, "modeSlot":I
    and-int v5, v3, v2

    if-lez v5, :cond_0

    .line 115
    not-int v5, v2

    and-int v0, v3, v5

    .line 116
    .local v0, "currentSimMode":I
    const/4 v1, 0x1

    .line 122
    :goto_0
    const-string/jumbo v5, "RadioPowerController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "currentSimMode="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " isPriviousRadioOn ="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 123
    const-string/jumbo v7, ", turnOn: "

    .line 122
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    if-eq p2, v1, :cond_1

    .line 125
    iget-object v5, p0, Lcom/mediatek/settings/sim/RadioPowerController;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 126
    const-string/jumbo v6, "msim_mode_setting"

    .line 125
    invoke-static {v5, v6, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 105
    :goto_1
    return-void

    .line 118
    .end local v0    # "currentSimMode":I
    :cond_0
    or-int v0, v3, v2

    .line 119
    .restart local v0    # "currentSimMode":I
    const/4 v1, 0x0

    goto :goto_0

    .line 128
    :cond_1
    const-string/jumbo v5, "RadioPowerController"

    const-string/jumbo v6, "quickly click don\'t allow."

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method


# virtual methods
.method public disableAllSIM(Z)Z
    .locals 5
    .param p1, "turnOn"    # Z

    .prologue
    const/4 v4, 0x1

    .line 133
    invoke-static {}, Lcom/mediatek/settings/sim/RadioPowerController;->getSimCount()I

    move-result v1

    const/4 v2, 0x2

    if-ge v1, v2, :cond_0

    if-eqz p1, :cond_2

    .line 136
    :cond_0
    iget-object v1, p0, Lcom/mediatek/settings/sim/RadioPowerController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 137
    const-string/jumbo v2, "msim_mode_setting"

    const/4 v3, -0x1

    .line 136
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 138
    .local v0, "priviousSimMode":I
    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    if-eqz p1, :cond_3

    .line 141
    :cond_1
    const/4 v1, 0x0

    return v1

    .line 134
    .end local v0    # "priviousSimMode":I
    :cond_2
    return v4

    .line 139
    .restart local v0    # "priviousSimMode":I
    :cond_3
    return v4
.end method

.method public needRadioSwitch(IZ)Z
    .locals 8
    .param p1, "subId"    # I
    .param p2, "turnOn"    # Z

    .prologue
    .line 52
    const/4 v2, 0x0

    .line 54
    .local v2, "needSwitch":Z
    const-string/jumbo v5, "phoneEx"

    .line 53
    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/mediatek/internal/telephony/ITelephonyEx$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/internal/telephony/ITelephonyEx;

    move-result-object v4

    .line 55
    .local v4, "telephonyEx":Lcom/mediatek/internal/telephony/ITelephonyEx;
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 56
    const/4 v0, 0x0

    .line 58
    .local v0, "bundle":Landroid/os/Bundle;
    if-eqz v4, :cond_1

    .line 59
    :try_start_0
    invoke-interface {v4, p1}, Lcom/mediatek/internal/telephony/ITelephonyEx;->getServiceState(I)Landroid/os/Bundle;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 67
    .end local v0    # "bundle":Landroid/os/Bundle;
    :goto_0
    if-eqz v0, :cond_0

    .line 68
    invoke-static {v0}, Landroid/telephony/ServiceState;->newFromBundle(Landroid/os/Bundle;)Landroid/telephony/ServiceState;

    move-result-object v3

    .line 69
    .local v3, "serviceState":Landroid/telephony/ServiceState;
    const-string/jumbo v5, "RadioPowerController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "needRadioSwitch: subId: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", state: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getState()I

    move-result v5

    const/4 v6, 0x3

    if-eq v5, v6, :cond_2

    const/4 v5, 0x1

    :goto_1
    if-eq v5, p2, :cond_0

    .line 71
    const/4 v2, 0x1

    .line 75
    .end local v3    # "serviceState":Landroid/telephony/ServiceState;
    :cond_0
    const-string/jumbo v5, "RadioPowerController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "needRadioSwitch("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", turnOn: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    return v2

    .line 61
    .restart local v0    # "bundle":Landroid/os/Bundle;
    :cond_1
    :try_start_1
    const-string/jumbo v5, "RadioPowerController"

    const-string/jumbo v6, "mTelephonyEx is null, returen false"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 63
    :catch_0
    move-exception v1

    .line 64
    .local v1, "e":Landroid/os/RemoteException;
    const-string/jumbo v5, "RadioPowerController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "getServiceState() error, subId: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_0

    .line 70
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v1    # "e":Landroid/os/RemoteException;
    .restart local v3    # "serviceState":Landroid/telephony/ServiceState;
    :cond_2
    const/4 v5, 0x0

    goto :goto_1
.end method

.method public setRadionOn(IZ)Z
    .locals 6
    .param p1, "subId"    # I
    .param p2, "turnOn"    # Z

    .prologue
    .line 80
    const-string/jumbo v3, "RadioPowerController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setRadionOn, turnOn: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", subId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    const/4 v1, 0x0

    .line 82
    .local v1, "isSuccessful":Z
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 83
    return v1

    .line 86
    :cond_0
    const-string/jumbo v3, "phone"

    .line 85
    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    .line 88
    .local v2, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v2, :cond_2

    .line 89
    :try_start_0
    invoke-interface {v2, p1, p2}, Lcom/android/internal/telephony/ITelephony;->setRadioForSubscriber(IZ)Z

    move-result v1

    .line 90
    .local v1, "isSuccessful":Z
    if-eqz v1, :cond_1

    .line 91
    invoke-direct {p0, p1, p2}, Lcom/mediatek/settings/sim/RadioPowerController;->updateRadioMsimDb(IZ)V

    .line 93
    iget-object v3, p0, Lcom/mediatek/settings/sim/RadioPowerController;->mExt:Lcom/mediatek/settings/ext/ISimManagementExt;

    invoke-interface {v3, p1, p2}, Lcom/mediatek/settings/ext/ISimManagementExt;->setRadioPowerState(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 101
    .end local v1    # "isSuccessful":Z
    :cond_1
    :goto_0
    const-string/jumbo v3, "RadioPowerController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setRadionOn, isSuccessful: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    return v1

    .line 96
    .local v1, "isSuccessful":Z
    :cond_2
    :try_start_1
    const-string/jumbo v3, "RadioPowerController"

    const-string/jumbo v4, "telephony is null"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 98
    .end local v1    # "isSuccessful":Z
    :catch_0
    move-exception v0

    .line 99
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method
