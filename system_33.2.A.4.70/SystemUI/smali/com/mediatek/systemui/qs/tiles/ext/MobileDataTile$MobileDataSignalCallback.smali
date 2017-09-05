.class final Lcom/mediatek/systemui/qs/tiles/ext/MobileDataTile$MobileDataSignalCallback;
.super Lcom/android/systemui/statusbar/policy/SignalCallbackAdapter;
.source "MobileDataTile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/systemui/qs/tiles/ext/MobileDataTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MobileDataSignalCallback"
.end annotation


# instance fields
.field final mInfo:Lcom/mediatek/systemui/qs/tiles/ext/MobileDataTile$CallbackInfo;

.field final synthetic this$0:Lcom/mediatek/systemui/qs/tiles/ext/MobileDataTile;


# direct methods
.method private constructor <init>(Lcom/mediatek/systemui/qs/tiles/ext/MobileDataTile;)V
    .locals 2
    .param p1, "this$0"    # Lcom/mediatek/systemui/qs/tiles/ext/MobileDataTile;

    .prologue
    .line 199
    iput-object p1, p0, Lcom/mediatek/systemui/qs/tiles/ext/MobileDataTile$MobileDataSignalCallback;->this$0:Lcom/mediatek/systemui/qs/tiles/ext/MobileDataTile;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/SignalCallbackAdapter;-><init>()V

    .line 200
    new-instance v0, Lcom/mediatek/systemui/qs/tiles/ext/MobileDataTile$CallbackInfo;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/mediatek/systemui/qs/tiles/ext/MobileDataTile$CallbackInfo;-><init>(Lcom/mediatek/systemui/qs/tiles/ext/MobileDataTile$CallbackInfo;)V

    iput-object v0, p0, Lcom/mediatek/systemui/qs/tiles/ext/MobileDataTile$MobileDataSignalCallback;->mInfo:Lcom/mediatek/systemui/qs/tiles/ext/MobileDataTile$CallbackInfo;

    .line 199
    return-void
.end method

.method synthetic constructor <init>(Lcom/mediatek/systemui/qs/tiles/ext/MobileDataTile;Lcom/mediatek/systemui/qs/tiles/ext/MobileDataTile$MobileDataSignalCallback;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mediatek/systemui/qs/tiles/ext/MobileDataTile;

    .prologue
    invoke-direct {p0, p1}, Lcom/mediatek/systemui/qs/tiles/ext/MobileDataTile$MobileDataSignalCallback;-><init>(Lcom/mediatek/systemui/qs/tiles/ext/MobileDataTile;)V

    return-void
.end method


# virtual methods
.method public setIsAirplaneMode(Lcom/android/systemui/statusbar/policy/NetworkController$IconState;)V
    .locals 3
    .param p1, "icon"    # Lcom/android/systemui/statusbar/policy/NetworkController$IconState;

    .prologue
    const/4 v2, 0x0

    .line 248
    iget-object v0, p0, Lcom/mediatek/systemui/qs/tiles/ext/MobileDataTile$MobileDataSignalCallback;->mInfo:Lcom/mediatek/systemui/qs/tiles/ext/MobileDataTile$CallbackInfo;

    iget-boolean v1, p1, Lcom/android/systemui/statusbar/policy/NetworkController$IconState;->visible:Z

    iput-boolean v1, v0, Lcom/mediatek/systemui/qs/tiles/ext/MobileDataTile$CallbackInfo;->airplaneModeEnabled:Z

    .line 249
    iget-object v0, p0, Lcom/mediatek/systemui/qs/tiles/ext/MobileDataTile$MobileDataSignalCallback;->mInfo:Lcom/mediatek/systemui/qs/tiles/ext/MobileDataTile$CallbackInfo;

    iget-boolean v0, v0, Lcom/mediatek/systemui/qs/tiles/ext/MobileDataTile$CallbackInfo;->airplaneModeEnabled:Z

    if-eqz v0, :cond_0

    .line 250
    iget-object v0, p0, Lcom/mediatek/systemui/qs/tiles/ext/MobileDataTile$MobileDataSignalCallback;->mInfo:Lcom/mediatek/systemui/qs/tiles/ext/MobileDataTile$CallbackInfo;

    iput v2, v0, Lcom/mediatek/systemui/qs/tiles/ext/MobileDataTile$CallbackInfo;->mobileSignalIconId:I

    .line 251
    iget-object v0, p0, Lcom/mediatek/systemui/qs/tiles/ext/MobileDataTile$MobileDataSignalCallback;->mInfo:Lcom/mediatek/systemui/qs/tiles/ext/MobileDataTile$CallbackInfo;

    iput v2, v0, Lcom/mediatek/systemui/qs/tiles/ext/MobileDataTile$CallbackInfo;->dataTypeIconId:I

    .line 252
    iget-object v0, p0, Lcom/mediatek/systemui/qs/tiles/ext/MobileDataTile$MobileDataSignalCallback;->mInfo:Lcom/mediatek/systemui/qs/tiles/ext/MobileDataTile$CallbackInfo;

    iput-boolean v2, v0, Lcom/mediatek/systemui/qs/tiles/ext/MobileDataTile$CallbackInfo;->enabled:Z

    .line 254
    :cond_0
    iget-object v0, p0, Lcom/mediatek/systemui/qs/tiles/ext/MobileDataTile$MobileDataSignalCallback;->this$0:Lcom/mediatek/systemui/qs/tiles/ext/MobileDataTile;

    iget-object v1, p0, Lcom/mediatek/systemui/qs/tiles/ext/MobileDataTile$MobileDataSignalCallback;->mInfo:Lcom/mediatek/systemui/qs/tiles/ext/MobileDataTile$CallbackInfo;

    invoke-static {v0, v1}, Lcom/mediatek/systemui/qs/tiles/ext/MobileDataTile;->-wrap0(Lcom/mediatek/systemui/qs/tiles/ext/MobileDataTile;Ljava/lang/Object;)V

    .line 247
    return-void
.end method

.method public setMobileDataEnabled(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .prologue
    .line 259
    iget-object v0, p0, Lcom/mediatek/systemui/qs/tiles/ext/MobileDataTile$MobileDataSignalCallback;->this$0:Lcom/mediatek/systemui/qs/tiles/ext/MobileDataTile;

    iget-object v1, p0, Lcom/mediatek/systemui/qs/tiles/ext/MobileDataTile$MobileDataSignalCallback;->mInfo:Lcom/mediatek/systemui/qs/tiles/ext/MobileDataTile$CallbackInfo;

    invoke-static {v0, v1}, Lcom/mediatek/systemui/qs/tiles/ext/MobileDataTile;->-wrap0(Lcom/mediatek/systemui/qs/tiles/ext/MobileDataTile;Ljava/lang/Object;)V

    .line 258
    return-void
.end method

.method public setMobileDataIndicators(Lcom/android/systemui/statusbar/policy/NetworkController$IconState;Lcom/android/systemui/statusbar/policy/NetworkController$IconState;IIIZZLjava/lang/String;Ljava/lang/String;ZI)V
    .locals 3
    .param p1, "statusIcon"    # Lcom/android/systemui/statusbar/policy/NetworkController$IconState;
    .param p2, "qsIcon"    # Lcom/android/systemui/statusbar/policy/NetworkController$IconState;
    .param p3, "statusType"    # I
    .param p4, "networkIcon"    # I
    .param p5, "qsType"    # I
    .param p6, "activityIn"    # Z
    .param p7, "activityOut"    # Z
    .param p8, "typeContentDescription"    # Ljava/lang/String;
    .param p9, "description"    # Ljava/lang/String;
    .param p10, "isWide"    # Z
    .param p11, "subId"    # I

    .prologue
    .line 214
    if-nez p2, :cond_0

    .line 216
    return-void

    .line 218
    :cond_0
    iget-object v0, p0, Lcom/mediatek/systemui/qs/tiles/ext/MobileDataTile$MobileDataSignalCallback;->mInfo:Lcom/mediatek/systemui/qs/tiles/ext/MobileDataTile$CallbackInfo;

    iget-boolean v1, p2, Lcom/android/systemui/statusbar/policy/NetworkController$IconState;->visible:Z

    iput-boolean v1, v0, Lcom/mediatek/systemui/qs/tiles/ext/MobileDataTile$CallbackInfo;->enabled:Z

    .line 219
    iget-object v0, p0, Lcom/mediatek/systemui/qs/tiles/ext/MobileDataTile$MobileDataSignalCallback;->mInfo:Lcom/mediatek/systemui/qs/tiles/ext/MobileDataTile$CallbackInfo;

    iget v1, p2, Lcom/android/systemui/statusbar/policy/NetworkController$IconState;->icon:I

    iput v1, v0, Lcom/mediatek/systemui/qs/tiles/ext/MobileDataTile$CallbackInfo;->mobileSignalIconId:I

    .line 220
    iget-object v0, p0, Lcom/mediatek/systemui/qs/tiles/ext/MobileDataTile$MobileDataSignalCallback;->mInfo:Lcom/mediatek/systemui/qs/tiles/ext/MobileDataTile$CallbackInfo;

    iput p5, v0, Lcom/mediatek/systemui/qs/tiles/ext/MobileDataTile$CallbackInfo;->dataTypeIconId:I

    .line 221
    iget-object v0, p0, Lcom/mediatek/systemui/qs/tiles/ext/MobileDataTile$MobileDataSignalCallback;->mInfo:Lcom/mediatek/systemui/qs/tiles/ext/MobileDataTile$CallbackInfo;

    iput-boolean p6, v0, Lcom/mediatek/systemui/qs/tiles/ext/MobileDataTile$CallbackInfo;->activityIn:Z

    .line 222
    iget-object v0, p0, Lcom/mediatek/systemui/qs/tiles/ext/MobileDataTile$MobileDataSignalCallback;->mInfo:Lcom/mediatek/systemui/qs/tiles/ext/MobileDataTile$CallbackInfo;

    iput-boolean p7, v0, Lcom/mediatek/systemui/qs/tiles/ext/MobileDataTile$CallbackInfo;->activityOut:Z

    .line 223
    iget-object v0, p0, Lcom/mediatek/systemui/qs/tiles/ext/MobileDataTile$MobileDataSignalCallback;->mInfo:Lcom/mediatek/systemui/qs/tiles/ext/MobileDataTile$CallbackInfo;

    iput-object p9, v0, Lcom/mediatek/systemui/qs/tiles/ext/MobileDataTile$CallbackInfo;->enabledDesc:Ljava/lang/String;

    .line 225
    iget-object v0, p0, Lcom/mediatek/systemui/qs/tiles/ext/MobileDataTile$MobileDataSignalCallback;->this$0:Lcom/mediatek/systemui/qs/tiles/ext/MobileDataTile;

    invoke-static {v0}, Lcom/mediatek/systemui/qs/tiles/ext/MobileDataTile;->-get0(Lcom/mediatek/systemui/qs/tiles/ext/MobileDataTile;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setMobileDataIndicators mInfo="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/systemui/qs/tiles/ext/MobileDataTile$MobileDataSignalCallback;->mInfo:Lcom/mediatek/systemui/qs/tiles/ext/MobileDataTile$CallbackInfo;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    iget-object v0, p0, Lcom/mediatek/systemui/qs/tiles/ext/MobileDataTile$MobileDataSignalCallback;->this$0:Lcom/mediatek/systemui/qs/tiles/ext/MobileDataTile;

    iget-object v1, p0, Lcom/mediatek/systemui/qs/tiles/ext/MobileDataTile$MobileDataSignalCallback;->mInfo:Lcom/mediatek/systemui/qs/tiles/ext/MobileDataTile$CallbackInfo;

    invoke-static {v0, v1}, Lcom/mediatek/systemui/qs/tiles/ext/MobileDataTile;->-wrap0(Lcom/mediatek/systemui/qs/tiles/ext/MobileDataTile;Ljava/lang/Object;)V

    .line 213
    return-void
.end method

.method public setNoSims(Z)V
    .locals 3
    .param p1, "show"    # Z

    .prologue
    const/4 v1, 0x0

    .line 232
    iget-object v0, p0, Lcom/mediatek/systemui/qs/tiles/ext/MobileDataTile$MobileDataSignalCallback;->mInfo:Lcom/mediatek/systemui/qs/tiles/ext/MobileDataTile$CallbackInfo;

    iput-boolean p1, v0, Lcom/mediatek/systemui/qs/tiles/ext/MobileDataTile$CallbackInfo;->noSim:Z

    .line 233
    iget-object v0, p0, Lcom/mediatek/systemui/qs/tiles/ext/MobileDataTile$MobileDataSignalCallback;->mInfo:Lcom/mediatek/systemui/qs/tiles/ext/MobileDataTile$CallbackInfo;

    iget-boolean v0, v0, Lcom/mediatek/systemui/qs/tiles/ext/MobileDataTile$CallbackInfo;->noSim:Z

    if-eqz v0, :cond_0

    .line 235
    iget-object v0, p0, Lcom/mediatek/systemui/qs/tiles/ext/MobileDataTile$MobileDataSignalCallback;->mInfo:Lcom/mediatek/systemui/qs/tiles/ext/MobileDataTile$CallbackInfo;

    iput v1, v0, Lcom/mediatek/systemui/qs/tiles/ext/MobileDataTile$CallbackInfo;->mobileSignalIconId:I

    .line 236
    iget-object v0, p0, Lcom/mediatek/systemui/qs/tiles/ext/MobileDataTile$MobileDataSignalCallback;->mInfo:Lcom/mediatek/systemui/qs/tiles/ext/MobileDataTile$CallbackInfo;

    iput v1, v0, Lcom/mediatek/systemui/qs/tiles/ext/MobileDataTile$CallbackInfo;->dataTypeIconId:I

    .line 237
    iget-object v0, p0, Lcom/mediatek/systemui/qs/tiles/ext/MobileDataTile$MobileDataSignalCallback;->mInfo:Lcom/mediatek/systemui/qs/tiles/ext/MobileDataTile$CallbackInfo;

    iput-boolean v1, v0, Lcom/mediatek/systemui/qs/tiles/ext/MobileDataTile$CallbackInfo;->enabled:Z

    .line 240
    iget-object v0, p0, Lcom/mediatek/systemui/qs/tiles/ext/MobileDataTile$MobileDataSignalCallback;->this$0:Lcom/mediatek/systemui/qs/tiles/ext/MobileDataTile;

    invoke-static {v0}, Lcom/mediatek/systemui/qs/tiles/ext/MobileDataTile;->-get0(Lcom/mediatek/systemui/qs/tiles/ext/MobileDataTile;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setNoSims noSim="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    :cond_0
    iget-object v0, p0, Lcom/mediatek/systemui/qs/tiles/ext/MobileDataTile$MobileDataSignalCallback;->this$0:Lcom/mediatek/systemui/qs/tiles/ext/MobileDataTile;

    iget-object v1, p0, Lcom/mediatek/systemui/qs/tiles/ext/MobileDataTile$MobileDataSignalCallback;->mInfo:Lcom/mediatek/systemui/qs/tiles/ext/MobileDataTile$CallbackInfo;

    invoke-static {v0, v1}, Lcom/mediatek/systemui/qs/tiles/ext/MobileDataTile;->-wrap0(Lcom/mediatek/systemui/qs/tiles/ext/MobileDataTile;Ljava/lang/Object;)V

    .line 231
    return-void
.end method

.method public setWifiIndicators(ZLcom/android/systemui/statusbar/policy/NetworkController$IconState;Lcom/android/systemui/statusbar/policy/NetworkController$IconState;ZZLjava/lang/String;)V
    .locals 2
    .param p1, "enabled"    # Z
    .param p2, "statusIcon"    # Lcom/android/systemui/statusbar/policy/NetworkController$IconState;
    .param p3, "qsIcon"    # Lcom/android/systemui/statusbar/policy/NetworkController$IconState;
    .param p4, "activityIn"    # Z
    .param p5, "activityOut"    # Z
    .param p6, "description"    # Ljava/lang/String;

    .prologue
    .line 205
    iget-object v0, p0, Lcom/mediatek/systemui/qs/tiles/ext/MobileDataTile$MobileDataSignalCallback;->mInfo:Lcom/mediatek/systemui/qs/tiles/ext/MobileDataTile$CallbackInfo;

    iput-boolean p1, v0, Lcom/mediatek/systemui/qs/tiles/ext/MobileDataTile$CallbackInfo;->wifiEnabled:Z

    .line 206
    iget-object v0, p0, Lcom/mediatek/systemui/qs/tiles/ext/MobileDataTile$MobileDataSignalCallback;->mInfo:Lcom/mediatek/systemui/qs/tiles/ext/MobileDataTile$CallbackInfo;

    iget-boolean v1, p3, Lcom/android/systemui/statusbar/policy/NetworkController$IconState;->visible:Z

    iput-boolean v1, v0, Lcom/mediatek/systemui/qs/tiles/ext/MobileDataTile$CallbackInfo;->wifiConnected:Z

    .line 207
    iget-object v0, p0, Lcom/mediatek/systemui/qs/tiles/ext/MobileDataTile$MobileDataSignalCallback;->this$0:Lcom/mediatek/systemui/qs/tiles/ext/MobileDataTile;

    iget-object v1, p0, Lcom/mediatek/systemui/qs/tiles/ext/MobileDataTile$MobileDataSignalCallback;->mInfo:Lcom/mediatek/systemui/qs/tiles/ext/MobileDataTile$CallbackInfo;

    invoke-static {v0, v1}, Lcom/mediatek/systemui/qs/tiles/ext/MobileDataTile;->-wrap0(Lcom/mediatek/systemui/qs/tiles/ext/MobileDataTile;Ljava/lang/Object;)V

    .line 204
    return-void
.end method
