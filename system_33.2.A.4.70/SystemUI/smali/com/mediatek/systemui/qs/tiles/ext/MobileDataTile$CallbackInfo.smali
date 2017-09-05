.class final Lcom/mediatek/systemui/qs/tiles/ext/MobileDataTile$CallbackInfo;
.super Ljava/lang/Object;
.source "MobileDataTile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/systemui/qs/tiles/ext/MobileDataTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CallbackInfo"
.end annotation


# instance fields
.field public activityIn:Z

.field public activityOut:Z

.field public airplaneModeEnabled:Z

.field public dataTypeIconId:I

.field public enabled:Z

.field public enabledDesc:Ljava/lang/String;

.field public mobileSignalIconId:I

.field public noSim:Z

.field public wifiConnected:Z

.field public wifiEnabled:Z


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 170
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/mediatek/systemui/qs/tiles/ext/MobileDataTile$CallbackInfo;)V
    .locals 0

    .prologue
    invoke-direct {p0}, Lcom/mediatek/systemui/qs/tiles/ext/MobileDataTile$CallbackInfo;-><init>()V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 184
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "CallbackInfo["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 185
    const-string/jumbo v1, "enabled="

    .line 184
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 185
    iget-boolean v1, p0, Lcom/mediatek/systemui/qs/tiles/ext/MobileDataTile$CallbackInfo;->enabled:Z

    .line 184
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 186
    const-string/jumbo v1, ",wifiEnabled="

    .line 184
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 186
    iget-boolean v1, p0, Lcom/mediatek/systemui/qs/tiles/ext/MobileDataTile$CallbackInfo;->wifiEnabled:Z

    .line 184
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 187
    const-string/jumbo v1, ",wifiConnected="

    .line 184
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 187
    iget-boolean v1, p0, Lcom/mediatek/systemui/qs/tiles/ext/MobileDataTile$CallbackInfo;->wifiConnected:Z

    .line 184
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 188
    const-string/jumbo v1, ",airplaneModeEnabled="

    .line 184
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 188
    iget-boolean v1, p0, Lcom/mediatek/systemui/qs/tiles/ext/MobileDataTile$CallbackInfo;->airplaneModeEnabled:Z

    .line 184
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 189
    const-string/jumbo v1, ",mobileSignalIconId="

    .line 184
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 189
    iget v1, p0, Lcom/mediatek/systemui/qs/tiles/ext/MobileDataTile$CallbackInfo;->mobileSignalIconId:I

    .line 184
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 190
    const-string/jumbo v1, ",dataTypeIconId="

    .line 184
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 190
    iget v1, p0, Lcom/mediatek/systemui/qs/tiles/ext/MobileDataTile$CallbackInfo;->dataTypeIconId:I

    .line 184
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 191
    const-string/jumbo v1, ",activityIn="

    .line 184
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 191
    iget-boolean v1, p0, Lcom/mediatek/systemui/qs/tiles/ext/MobileDataTile$CallbackInfo;->activityIn:Z

    .line 184
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 192
    const-string/jumbo v1, ",activityOut="

    .line 184
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 192
    iget-boolean v1, p0, Lcom/mediatek/systemui/qs/tiles/ext/MobileDataTile$CallbackInfo;->activityOut:Z

    .line 184
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 193
    const-string/jumbo v1, ",enabledDesc="

    .line 184
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 193
    iget-object v1, p0, Lcom/mediatek/systemui/qs/tiles/ext/MobileDataTile$CallbackInfo;->enabledDesc:Ljava/lang/String;

    .line 184
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 194
    const-string/jumbo v1, ",noSim="

    .line 184
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 194
    iget-boolean v1, p0, Lcom/mediatek/systemui/qs/tiles/ext/MobileDataTile$CallbackInfo;->noSim:Z

    .line 184
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 195
    const/16 v1, 0x5d

    .line 184
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
