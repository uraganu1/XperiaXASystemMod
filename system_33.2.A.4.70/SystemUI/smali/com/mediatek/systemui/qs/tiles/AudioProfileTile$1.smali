.class Lcom/mediatek/systemui/qs/tiles/AudioProfileTile$1;
.super Ljava/lang/Object;
.source "AudioProfileTile.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 207
    iput-object p1, p0, Lcom/mediatek/systemui/qs/tiles/AudioProfileTile$1;->this$0:Lcom/mediatek/systemui/qs/tiles/AudioProfileTile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 209
    invoke-static {}, Lcom/mediatek/systemui/qs/tiles/AudioProfileTile;->-get0()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 210
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Lcom/mediatek/systemui/qs/tiles/AudioProfileTile$1;->this$0:Lcom/mediatek/systemui/qs/tiles/AudioProfileTile;

    invoke-static {v3}, Lcom/mediatek/systemui/qs/tiles/AudioProfileTile;->-get1(Lcom/mediatek/systemui/qs/tiles/AudioProfileTile;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 211
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/systemui/qs/tiles/AudioProfileTile$1;->this$0:Lcom/mediatek/systemui/qs/tiles/AudioProfileTile;

    invoke-static {v4}, Lcom/mediatek/systemui/qs/tiles/AudioProfileTile;->-get1(Lcom/mediatek/systemui/qs/tiles/AudioProfileTile;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 213
    const-string/jumbo v4, "AudioProfileTile"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onClick called, profile clicked is:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 214
    iget-object v3, p0, Lcom/mediatek/systemui/qs/tiles/AudioProfileTile$1;->this$0:Lcom/mediatek/systemui/qs/tiles/AudioProfileTile;

    invoke-static {v3}, Lcom/mediatek/systemui/qs/tiles/AudioProfileTile;->-get1(Lcom/mediatek/systemui/qs/tiles/AudioProfileTile;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 213
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    iget-object v3, p0, Lcom/mediatek/systemui/qs/tiles/AudioProfileTile$1;->this$0:Lcom/mediatek/systemui/qs/tiles/AudioProfileTile;

    invoke-static {v3}, Lcom/mediatek/systemui/qs/tiles/AudioProfileTile;->-get1(Lcom/mediatek/systemui/qs/tiles/AudioProfileTile;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 217
    .local v1, "key":Ljava/lang/String;
    iget-object v3, p0, Lcom/mediatek/systemui/qs/tiles/AudioProfileTile$1;->this$0:Lcom/mediatek/systemui/qs/tiles/AudioProfileTile;

    invoke-static {v3, v1}, Lcom/mediatek/systemui/qs/tiles/AudioProfileTile;->-wrap2(Lcom/mediatek/systemui/qs/tiles/AudioProfileTile;Ljava/lang/String;)V

    .line 218
    invoke-static {v1}, Lcom/mediatek/audioprofile/AudioProfileManager;->getScenario(Ljava/lang/String;)Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;

    move-result-object v2

    .line 219
    .local v2, "senario":Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;
    iget-object v3, p0, Lcom/mediatek/systemui/qs/tiles/AudioProfileTile$1;->this$0:Lcom/mediatek/systemui/qs/tiles/AudioProfileTile;

    invoke-static {v3, v2}, Lcom/mediatek/systemui/qs/tiles/AudioProfileTile;->-wrap3(Lcom/mediatek/systemui/qs/tiles/AudioProfileTile;Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;)V

    .line 220
    iget-object v3, p0, Lcom/mediatek/systemui/qs/tiles/AudioProfileTile$1;->this$0:Lcom/mediatek/systemui/qs/tiles/AudioProfileTile;

    invoke-static {v3}, Lcom/mediatek/systemui/qs/tiles/AudioProfileTile;->-get2(Lcom/mediatek/systemui/qs/tiles/AudioProfileTile;)Landroid/app/Dialog;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 221
    iget-object v3, p0, Lcom/mediatek/systemui/qs/tiles/AudioProfileTile$1;->this$0:Lcom/mediatek/systemui/qs/tiles/AudioProfileTile;

    invoke-static {v3}, Lcom/mediatek/systemui/qs/tiles/AudioProfileTile;->-get2(Lcom/mediatek/systemui/qs/tiles/AudioProfileTile;)Landroid/app/Dialog;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Dialog;->dismiss()V

    .line 210
    .end local v1    # "key":Ljava/lang/String;
    .end local v2    # "senario":Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 208
    .end local v0    # "i":I
    :cond_1
    return-void
.end method
