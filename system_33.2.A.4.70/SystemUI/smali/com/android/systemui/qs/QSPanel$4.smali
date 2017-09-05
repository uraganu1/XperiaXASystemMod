.class Lcom/android/systemui/qs/QSPanel$4;
.super Ljava/lang/Object;
.source "QSPanel.java"

# interfaces
.implements Lcom/android/systemui/qs/QSTile$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/qs/QSPanel;->addTile(Lcom/android/systemui/qs/QSTile;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/QSPanel;

.field final synthetic val$r:Lcom/android/systemui/qs/QSPanel$TileRecord;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/QSPanel;Lcom/android/systemui/qs/QSPanel$TileRecord;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/qs/QSPanel;
    .param p2, "val$r"    # Lcom/android/systemui/qs/QSPanel$TileRecord;

    .prologue
    .line 285
    iput-object p1, p0, Lcom/android/systemui/qs/QSPanel$4;->this$0:Lcom/android/systemui/qs/QSPanel;

    iput-object p2, p0, Lcom/android/systemui/qs/QSPanel$4;->val$r:Lcom/android/systemui/qs/QSPanel$TileRecord;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnnouncementRequested(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "announcement"    # Ljava/lang/CharSequence;

    .prologue
    .line 312
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel$4;->this$0:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/QSPanel;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 311
    return-void
.end method

.method public onScanStateChanged(Z)V
    .locals 2
    .param p1, "state"    # Z

    .prologue
    .line 304
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel$4;->val$r:Lcom/android/systemui/qs/QSPanel$TileRecord;

    iput-boolean p1, v0, Lcom/android/systemui/qs/QSPanel$TileRecord;->scanState:Z

    .line 305
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel$4;->this$0:Lcom/android/systemui/qs/QSPanel;

    invoke-static {v0}, Lcom/android/systemui/qs/QSPanel;->-get2(Lcom/android/systemui/qs/QSPanel;)Lcom/android/systemui/qs/QSPanel$Record;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/qs/QSPanel$4;->val$r:Lcom/android/systemui/qs/QSPanel$TileRecord;

    if-ne v0, v1, :cond_0

    .line 306
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel$4;->this$0:Lcom/android/systemui/qs/QSPanel;

    iget-object v1, p0, Lcom/android/systemui/qs/QSPanel$4;->val$r:Lcom/android/systemui/qs/QSPanel$TileRecord;

    iget-boolean v1, v1, Lcom/android/systemui/qs/QSPanel$TileRecord;->scanState:Z

    invoke-static {v0, v1}, Lcom/android/systemui/qs/QSPanel;->-wrap1(Lcom/android/systemui/qs/QSPanel;Z)V

    .line 303
    :cond_0
    return-void
.end method

.method public onShowDetail(Z)V
    .locals 2
    .param p1, "show"    # Z

    .prologue
    .line 294
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel$4;->this$0:Lcom/android/systemui/qs/QSPanel;

    iget-object v1, p0, Lcom/android/systemui/qs/QSPanel$4;->val$r:Lcom/android/systemui/qs/QSPanel$TileRecord;

    invoke-static {v0, p1, v1}, Lcom/android/systemui/qs/QSPanel;->-wrap7(Lcom/android/systemui/qs/QSPanel;ZLcom/android/systemui/qs/QSPanel$Record;)V

    .line 293
    return-void
.end method

.method public onStateChanged(Lcom/android/systemui/qs/QSTile$State;)V
    .locals 2
    .param p1, "state"    # Lcom/android/systemui/qs/QSTile$State;

    .prologue
    .line 288
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel$4;->val$r:Lcom/android/systemui/qs/QSPanel$TileRecord;

    iget-boolean v0, v0, Lcom/android/systemui/qs/QSPanel$TileRecord;->openingDetail:Z

    if-nez v0, :cond_0

    .line 289
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel$4;->this$0:Lcom/android/systemui/qs/QSPanel;

    iget-object v1, p0, Lcom/android/systemui/qs/QSPanel$4;->val$r:Lcom/android/systemui/qs/QSPanel$TileRecord;

    invoke-static {v0, v1, p1}, Lcom/android/systemui/qs/QSPanel;->-wrap0(Lcom/android/systemui/qs/QSPanel;Lcom/android/systemui/qs/QSPanel$TileRecord;Lcom/android/systemui/qs/QSTile$State;)V

    .line 287
    :cond_0
    return-void
.end method

.method public onToggleStateChanged(Z)V
    .locals 2
    .param p1, "state"    # Z

    .prologue
    .line 298
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel$4;->this$0:Lcom/android/systemui/qs/QSPanel;

    invoke-static {v0}, Lcom/android/systemui/qs/QSPanel;->-get2(Lcom/android/systemui/qs/QSPanel;)Lcom/android/systemui/qs/QSPanel$Record;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/qs/QSPanel$4;->val$r:Lcom/android/systemui/qs/QSPanel$TileRecord;

    if-ne v0, v1, :cond_0

    .line 299
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel$4;->this$0:Lcom/android/systemui/qs/QSPanel;

    invoke-static {v0, p1}, Lcom/android/systemui/qs/QSPanel;->-wrap2(Lcom/android/systemui/qs/QSPanel;Z)V

    .line 297
    :cond_0
    return-void
.end method
