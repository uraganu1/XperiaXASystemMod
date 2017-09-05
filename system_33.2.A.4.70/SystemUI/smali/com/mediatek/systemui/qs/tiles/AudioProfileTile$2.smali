.class Lcom/mediatek/systemui/qs/tiles/AudioProfileTile$2;
.super Lcom/mediatek/common/audioprofile/AudioProfileListener;
.source "AudioProfileTile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/systemui/qs/tiles/AudioProfileTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/systemui/qs/tiles/AudioProfileTile;


# direct methods
.method constructor <init>(Lcom/mediatek/systemui/qs/tiles/AudioProfileTile;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mediatek/systemui/qs/tiles/AudioProfileTile;

    .prologue
    .line 229
    iput-object p1, p0, Lcom/mediatek/systemui/qs/tiles/AudioProfileTile$2;->this$0:Lcom/mediatek/systemui/qs/tiles/AudioProfileTile;

    invoke-direct {p0}, Lcom/mediatek/common/audioprofile/AudioProfileListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onProfileChanged(Ljava/lang/String;)V
    .locals 4
    .param p1, "profileKey"    # Ljava/lang/String;

    .prologue
    .line 232
    invoke-static {}, Lcom/mediatek/systemui/qs/tiles/AudioProfileTile;->-get0()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 233
    if-eqz p1, :cond_1

    .line 234
    iget-object v1, p0, Lcom/mediatek/systemui/qs/tiles/AudioProfileTile$2;->this$0:Lcom/mediatek/systemui/qs/tiles/AudioProfileTile;

    invoke-static {v1}, Lcom/mediatek/systemui/qs/tiles/AudioProfileTile;->-get3(Lcom/mediatek/systemui/qs/tiles/AudioProfileTile;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 236
    const-string/jumbo v1, "AudioProfileTile"

    const-string/jumbo v2, "onProfileChanged !mUpdating"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    return-void

    .line 239
    :cond_0
    invoke-static {p1}, Lcom/mediatek/audioprofile/AudioProfileManager;->getScenario(Ljava/lang/String;)Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;

    move-result-object v0

    .line 241
    .local v0, "senario":Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;
    const-string/jumbo v1, "AudioProfileTile"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onProfileChanged onReceive called, profile type is: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    if-eqz v0, :cond_1

    .line 245
    iget-object v1, p0, Lcom/mediatek/systemui/qs/tiles/AudioProfileTile$2;->this$0:Lcom/mediatek/systemui/qs/tiles/AudioProfileTile;

    invoke-static {v1, v0}, Lcom/mediatek/systemui/qs/tiles/AudioProfileTile;->-wrap3(Lcom/mediatek/systemui/qs/tiles/AudioProfileTile;Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;)V

    .line 231
    .end local v0    # "senario":Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;
    :cond_1
    return-void
.end method
