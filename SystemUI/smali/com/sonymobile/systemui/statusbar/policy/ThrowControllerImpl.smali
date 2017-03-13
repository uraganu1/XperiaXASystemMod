.class public Lcom/sonymobile/systemui/statusbar/policy/ThrowControllerImpl;
.super Ljava/lang/Object;
.source "ThrowControllerImpl.java"

# interfaces
.implements Lcom/sonymobile/systemui/statusbar/policy/ThrowController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/systemui/statusbar/policy/ThrowControllerImpl$1;,
        Lcom/sonymobile/systemui/statusbar/policy/ThrowControllerImpl$2;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCurrentState:Z

.field private mPlayAnywhereCallback:Lcom/sonymobile/playanywhere/IPlayAnywhereCallback;

.field private mPlayAnywhereServiceConnection:Landroid/content/ServiceConnection;

.field private mSettingsChangeCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonymobile/systemui/statusbar/policy/ThrowController$ThrowSettingsChangeCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mSinkController:Lcom/sonymobile/playanywhere/IPlayAnywhereSinkController;


# direct methods
.method static synthetic -get0()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/sonymobile/systemui/statusbar/policy/ThrowControllerImpl;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1(Lcom/sonymobile/systemui/statusbar/policy/ThrowControllerImpl;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/sonymobile/systemui/statusbar/policy/ThrowControllerImpl;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get2(Lcom/sonymobile/systemui/statusbar/policy/ThrowControllerImpl;)Lcom/sonymobile/playanywhere/IPlayAnywhereCallback;
    .locals 1

    iget-object v0, p0, Lcom/sonymobile/systemui/statusbar/policy/ThrowControllerImpl;->mPlayAnywhereCallback:Lcom/sonymobile/playanywhere/IPlayAnywhereCallback;

    return-object v0
.end method

.method static synthetic -get3(Lcom/sonymobile/systemui/statusbar/policy/ThrowControllerImpl;)Lcom/sonymobile/playanywhere/IPlayAnywhereSinkController;
    .locals 1

    iget-object v0, p0, Lcom/sonymobile/systemui/statusbar/policy/ThrowControllerImpl;->mSinkController:Lcom/sonymobile/playanywhere/IPlayAnywhereSinkController;

    return-object v0
.end method

.method static synthetic -set0(Lcom/sonymobile/systemui/statusbar/policy/ThrowControllerImpl;Lcom/sonymobile/playanywhere/IPlayAnywhereSinkController;)Lcom/sonymobile/playanywhere/IPlayAnywhereSinkController;
    .locals 0

    iput-object p1, p0, Lcom/sonymobile/systemui/statusbar/policy/ThrowControllerImpl;->mSinkController:Lcom/sonymobile/playanywhere/IPlayAnywhereSinkController;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/sonymobile/systemui/statusbar/policy/ThrowControllerImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/sonymobile/systemui/statusbar/policy/ThrowControllerImpl;->bindService()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/sonymobile/systemui/statusbar/policy/ThrowControllerImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/sonymobile/systemui/statusbar/policy/ThrowControllerImpl;->throwSettingsChanged()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/sonymobile/systemui/statusbar/policy/ThrowControllerImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/sonymobile/systemui/statusbar/policy/ThrowControllerImpl;->unbindService()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 61
    const-class v0, Lcom/sonymobile/systemui/statusbar/policy/ThrowControllerImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/systemui/statusbar/policy/ThrowControllerImpl;->TAG:Ljava/lang/String;

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonymobile/systemui/statusbar/policy/ThrowControllerImpl;->mCurrentState:Z

    .line 59
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 58
    iput-object v0, p0, Lcom/sonymobile/systemui/statusbar/policy/ThrowControllerImpl;->mSettingsChangeCallbacks:Ljava/util/ArrayList;

    .line 69
    new-instance v0, Lcom/sonymobile/systemui/statusbar/policy/ThrowControllerImpl$1;

    invoke-direct {v0, p0}, Lcom/sonymobile/systemui/statusbar/policy/ThrowControllerImpl$1;-><init>(Lcom/sonymobile/systemui/statusbar/policy/ThrowControllerImpl;)V

    iput-object v0, p0, Lcom/sonymobile/systemui/statusbar/policy/ThrowControllerImpl;->mPlayAnywhereServiceConnection:Landroid/content/ServiceConnection;

    .line 92
    new-instance v0, Lcom/sonymobile/systemui/statusbar/policy/ThrowControllerImpl$2;

    invoke-direct {v0, p0}, Lcom/sonymobile/systemui/statusbar/policy/ThrowControllerImpl$2;-><init>(Lcom/sonymobile/systemui/statusbar/policy/ThrowControllerImpl;)V

    iput-object v0, p0, Lcom/sonymobile/systemui/statusbar/policy/ThrowControllerImpl;->mPlayAnywhereCallback:Lcom/sonymobile/playanywhere/IPlayAnywhereCallback;

    .line 66
    iput-object p1, p0, Lcom/sonymobile/systemui/statusbar/policy/ThrowControllerImpl;->mContext:Landroid/content/Context;

    .line 65
    return-void
.end method

.method private bindService()V
    .locals 6

    .prologue
    .line 113
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/sonymobile/systemui/statusbar/policy/ThrowControllerImpl;->mCurrentState:Z

    .line 115
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "com.sonymobile.playanywhere.IPlayAnywhereSinkController"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 116
    .local v1, "intent":Landroid/content/Intent;
    new-instance v0, Landroid/content/ComponentName;

    const-string/jumbo v2, "com.sonymobile.playanywhere"

    .line 117
    const-string/jumbo v3, "com.sonymobile.playanywhere.service.CrossProcessService"

    .line 116
    invoke-direct {v0, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    .local v0, "componentName":Landroid/content/ComponentName;
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 119
    iget-object v2, p0, Lcom/sonymobile/systemui/statusbar/policy/ThrowControllerImpl;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/sonymobile/systemui/statusbar/policy/ThrowControllerImpl;->mPlayAnywhereServiceConnection:Landroid/content/ServiceConnection;

    .line 120
    sget-object v4, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    const/4 v5, 0x1

    .line 119
    invoke-virtual {v2, v1, v3, v5, v4}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    .line 111
    return-void
.end method

.method private handleThrowState(I)Z
    .locals 1
    .param p1, "state"    # I

    .prologue
    .line 201
    iget-boolean v0, p0, Lcom/sonymobile/systemui/statusbar/policy/ThrowControllerImpl;->mCurrentState:Z

    .line 202
    .local v0, "throwState":Z
    packed-switch p1, :pswitch_data_0

    .line 212
    .end local v0    # "throwState":Z
    :goto_0
    return v0

    .line 204
    .restart local v0    # "throwState":Z
    :pswitch_0
    const/4 v0, 0x0

    .line 205
    .local v0, "throwState":Z
    goto :goto_0

    .line 208
    .local v0, "throwState":Z
    :pswitch_1
    const/4 v0, 0x1

    .line 209
    .local v0, "throwState":Z
    goto :goto_0

    .line 202
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private throwSettingsChanged()V
    .locals 5

    .prologue
    .line 178
    iget-boolean v3, p0, Lcom/sonymobile/systemui/statusbar/policy/ThrowControllerImpl;->mCurrentState:Z

    .line 179
    .local v3, "oldState":Z
    invoke-virtual {p0}, Lcom/sonymobile/systemui/statusbar/policy/ThrowControllerImpl;->isThrowEnabled()Z

    move-result v2

    .line 180
    .local v2, "currentState":Z
    if-eq v3, v2, :cond_0

    .line 181
    iget-object v4, p0, Lcom/sonymobile/systemui/statusbar/policy/ThrowControllerImpl;->mSettingsChangeCallbacks:Ljava/util/ArrayList;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "cb$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/systemui/statusbar/policy/ThrowController$ThrowSettingsChangeCallback;

    .line 182
    .local v0, "cb":Lcom/sonymobile/systemui/statusbar/policy/ThrowController$ThrowSettingsChangeCallback;
    invoke-interface {v0, v2}, Lcom/sonymobile/systemui/statusbar/policy/ThrowController$ThrowSettingsChangeCallback;->onThrowSettingsChanged(Z)V

    goto :goto_0

    .line 177
    .end local v0    # "cb":Lcom/sonymobile/systemui/statusbar/policy/ThrowController$ThrowSettingsChangeCallback;
    .end local v1    # "cb$iterator":Ljava/util/Iterator;
    :cond_0
    return-void
.end method

.method private throwSettingsChanged(Lcom/sonymobile/systemui/statusbar/policy/ThrowController$ThrowSettingsChangeCallback;)V
    .locals 1
    .param p1, "cb"    # Lcom/sonymobile/systemui/statusbar/policy/ThrowController$ThrowSettingsChangeCallback;

    .prologue
    .line 188
    invoke-virtual {p0}, Lcom/sonymobile/systemui/statusbar/policy/ThrowControllerImpl;->isThrowEnabled()Z

    move-result v0

    invoke-interface {p1, v0}, Lcom/sonymobile/systemui/statusbar/policy/ThrowController$ThrowSettingsChangeCallback;->onThrowSettingsChanged(Z)V

    .line 187
    return-void
.end method

.method private unbindService()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 124
    iget-object v1, p0, Lcom/sonymobile/systemui/statusbar/policy/ThrowControllerImpl;->mSinkController:Lcom/sonymobile/playanywhere/IPlayAnywhereSinkController;

    if-eqz v1, :cond_0

    .line 126
    :try_start_0
    iget-object v1, p0, Lcom/sonymobile/systemui/statusbar/policy/ThrowControllerImpl;->mSinkController:Lcom/sonymobile/playanywhere/IPlayAnywhereSinkController;

    iget-object v2, p0, Lcom/sonymobile/systemui/statusbar/policy/ThrowControllerImpl;->mPlayAnywhereCallback:Lcom/sonymobile/playanywhere/IPlayAnywhereCallback;

    .line 127
    iget-object v3, p0, Lcom/sonymobile/systemui/statusbar/policy/ThrowControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 126
    invoke-interface {v1, v2, v3}, Lcom/sonymobile/playanywhere/IPlayAnywhereSinkController;->unregisterCallback(Lcom/sonymobile/playanywhere/IPlayAnywhereCallback;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 131
    :goto_0
    iput-object v4, p0, Lcom/sonymobile/systemui/statusbar/policy/ThrowControllerImpl;->mSinkController:Lcom/sonymobile/playanywhere/IPlayAnywhereSinkController;

    .line 133
    :cond_0
    iget-object v1, p0, Lcom/sonymobile/systemui/statusbar/policy/ThrowControllerImpl;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sonymobile/systemui/statusbar/policy/ThrowControllerImpl;->mPlayAnywhereServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 123
    return-void

    .line 128
    :catch_0
    move-exception v0

    .line 129
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/sonymobile/systemui/statusbar/policy/ThrowControllerImpl;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public addSettingsChangedCallback(Lcom/sonymobile/systemui/statusbar/policy/ThrowController$ThrowSettingsChangeCallback;)V
    .locals 1
    .param p1, "cb"    # Lcom/sonymobile/systemui/statusbar/policy/ThrowController$ThrowSettingsChangeCallback;

    .prologue
    .line 166
    iget-object v0, p0, Lcom/sonymobile/systemui/statusbar/policy/ThrowControllerImpl;->mSettingsChangeCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 167
    iget-object v0, p0, Lcom/sonymobile/systemui/statusbar/policy/ThrowControllerImpl;->mSettingsChangeCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 168
    invoke-direct {p0}, Lcom/sonymobile/systemui/statusbar/policy/ThrowControllerImpl;->unbindService()V

    .line 170
    :cond_0
    invoke-direct {p0}, Lcom/sonymobile/systemui/statusbar/policy/ThrowControllerImpl;->bindService()V

    .line 173
    :cond_1
    iget-object v0, p0, Lcom/sonymobile/systemui/statusbar/policy/ThrowControllerImpl;->mSettingsChangeCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 174
    invoke-direct {p0, p1}, Lcom/sonymobile/systemui/statusbar/policy/ThrowControllerImpl;->throwSettingsChanged(Lcom/sonymobile/systemui/statusbar/policy/ThrowController$ThrowSettingsChangeCallback;)V

    .line 164
    return-void
.end method

.method public isThrowEnabled()Z
    .locals 5

    .prologue
    .line 140
    iget-object v3, p0, Lcom/sonymobile/systemui/statusbar/policy/ThrowControllerImpl;->mSinkController:Lcom/sonymobile/playanywhere/IPlayAnywhereSinkController;

    if-eqz v3, :cond_0

    .line 142
    :try_start_0
    iget-object v3, p0, Lcom/sonymobile/systemui/statusbar/policy/ThrowControllerImpl;->mSinkController:Lcom/sonymobile/playanywhere/IPlayAnywhereSinkController;

    invoke-interface {v3}, Lcom/sonymobile/playanywhere/IPlayAnywhereSinkController;->getDeviceConnection()Landroid/os/Bundle;

    move-result-object v0

    .line 143
    .local v0, "bundle":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 144
    const-string/jumbo v3, "KEY_DEVICE_LIST_CONNECTED_SINK_DEVICE_STATUS"

    const/4 v4, -0x1

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 145
    .local v2, "state":I
    invoke-direct {p0, v2}, Lcom/sonymobile/systemui/statusbar/policy/ThrowControllerImpl;->handleThrowState(I)Z

    move-result v3

    iput-boolean v3, p0, Lcom/sonymobile/systemui/statusbar/policy/ThrowControllerImpl;->mCurrentState:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 151
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v2    # "state":I
    :cond_0
    :goto_0
    iget-boolean v3, p0, Lcom/sonymobile/systemui/statusbar/policy/ThrowControllerImpl;->mCurrentState:Z

    return v3

    .line 147
    :catch_0
    move-exception v1

    .line 148
    .local v1, "e":Landroid/os/RemoteException;
    sget-object v3, Lcom/sonymobile/systemui/statusbar/policy/ThrowControllerImpl;->TAG:Ljava/lang/String;

    invoke-virtual {v1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public removeSettingsChangedCallback(Lcom/sonymobile/systemui/statusbar/policy/ThrowController$ThrowSettingsChangeCallback;)V
    .locals 1
    .param p1, "cb"    # Lcom/sonymobile/systemui/statusbar/policy/ThrowController$ThrowSettingsChangeCallback;

    .prologue
    .line 192
    iget-object v0, p0, Lcom/sonymobile/systemui/statusbar/policy/ThrowControllerImpl;->mSettingsChangeCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 195
    iget-object v0, p0, Lcom/sonymobile/systemui/statusbar/policy/ThrowControllerImpl;->mSettingsChangeCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 196
    invoke-direct {p0}, Lcom/sonymobile/systemui/statusbar/policy/ThrowControllerImpl;->unbindService()V

    .line 191
    :cond_0
    return-void
.end method

.method public setThrowEnabled(Z)Z
    .locals 3
    .param p1, "enabled"    # Z

    .prologue
    .line 155
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.sonymobile.playanywhere.DEVICE_SELECTOR"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 156
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 157
    iget-object v1, p0, Lcom/sonymobile/systemui/statusbar/policy/ThrowControllerImpl;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 158
    const/4 v1, 0x1

    return v1
.end method
