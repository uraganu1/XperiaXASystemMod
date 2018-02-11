.class Lcom/mediatek/beam/BeamShareHistory$2;
.super Ljava/lang/Object;
.source "BeamShareHistory.java"

# interfaces
.implements Landroid/widget/TabHost$OnTabChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/beam/BeamShareHistory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/beam/BeamShareHistory;


# direct methods
.method constructor <init>(Lcom/mediatek/beam/BeamShareHistory;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mediatek/beam/BeamShareHistory;

    .prologue
    .line 207
    iput-object p1, p0, Lcom/mediatek/beam/BeamShareHistory$2;->this$0:Lcom/mediatek/beam/BeamShareHistory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTabChanged(Ljava/lang/String;)V
    .locals 3
    .param p1, "tabId"    # Ljava/lang/String;

    .prologue
    .line 210
    const-string/jumbo v0, "@M_BeamShareHistory"

    const-string/jumbo v1, "OnTabChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    const-string/jumbo v0, "Incoming"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 212
    iget-object v0, p0, Lcom/mediatek/beam/BeamShareHistory$2;->this$0:Lcom/mediatek/beam/BeamShareHistory;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/mediatek/beam/BeamShareHistory;->-set2(Lcom/mediatek/beam/BeamShareHistory;I)I

    .line 216
    :cond_0
    :goto_0
    const-string/jumbo v0, "@M_BeamShareHistory"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mCurrentTabIndex"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/beam/BeamShareHistory$2;->this$0:Lcom/mediatek/beam/BeamShareHistory;

    invoke-static {v2}, Lcom/mediatek/beam/BeamShareHistory;->-get3(Lcom/mediatek/beam/BeamShareHistory;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    iget-object v1, p0, Lcom/mediatek/beam/BeamShareHistory$2;->this$0:Lcom/mediatek/beam/BeamShareHistory;

    iget-object v0, p0, Lcom/mediatek/beam/BeamShareHistory$2;->this$0:Lcom/mediatek/beam/BeamShareHistory;

    invoke-static {v0}, Lcom/mediatek/beam/BeamShareHistory;->-get8(Lcom/mediatek/beam/BeamShareHistory;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v2, p0, Lcom/mediatek/beam/BeamShareHistory$2;->this$0:Lcom/mediatek/beam/BeamShareHistory;

    invoke-static {v2}, Lcom/mediatek/beam/BeamShareHistory;->-get3(Lcom/mediatek/beam/BeamShareHistory;)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/beam/BeamShareHistory$TabInfo;

    invoke-virtual {v0}, Lcom/mediatek/beam/BeamShareHistory$TabInfo;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/mediatek/beam/BeamShareHistory;->-set3(Lcom/mediatek/beam/BeamShareHistory;Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 219
    iget-object v0, p0, Lcom/mediatek/beam/BeamShareHistory$2;->this$0:Lcom/mediatek/beam/BeamShareHistory;

    invoke-static {v0}, Lcom/mediatek/beam/BeamShareHistory;->-get0(Lcom/mediatek/beam/BeamShareHistory;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 209
    return-void

    .line 213
    :cond_1
    const-string/jumbo v0, "Outgoing"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 214
    iget-object v0, p0, Lcom/mediatek/beam/BeamShareHistory$2;->this$0:Lcom/mediatek/beam/BeamShareHistory;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/mediatek/beam/BeamShareHistory;->-set2(Lcom/mediatek/beam/BeamShareHistory;I)I

    goto :goto_0
.end method
