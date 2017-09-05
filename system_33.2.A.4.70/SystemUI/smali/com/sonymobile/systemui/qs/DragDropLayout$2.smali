.class Lcom/sonymobile/systemui/qs/DragDropLayout$2;
.super Ljava/lang/Object;
.source "DragDropLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/systemui/qs/DragDropLayout;->onLongClick(Landroid/view/View;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/systemui/qs/DragDropLayout;

.field final synthetic val$index:I

.field final synthetic val$qsid:Lcom/sonymobile/systemui/qs/QSTileViewIdentifier;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/sonymobile/systemui/qs/DragDropLayout;Lcom/sonymobile/systemui/qs/QSTileViewIdentifier;ILandroid/view/View;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonymobile/systemui/qs/DragDropLayout;
    .param p2, "val$qsid"    # Lcom/sonymobile/systemui/qs/QSTileViewIdentifier;
    .param p3, "val$index"    # I
    .param p4, "val$view"    # Landroid/view/View;

    .prologue
    .line 293
    iput-object p1, p0, Lcom/sonymobile/systemui/qs/DragDropLayout$2;->this$0:Lcom/sonymobile/systemui/qs/DragDropLayout;

    iput-object p2, p0, Lcom/sonymobile/systemui/qs/DragDropLayout$2;->val$qsid:Lcom/sonymobile/systemui/qs/QSTileViewIdentifier;

    iput p3, p0, Lcom/sonymobile/systemui/qs/DragDropLayout$2;->val$index:I

    iput-object p4, p0, Lcom/sonymobile/systemui/qs/DragDropLayout$2;->val$view:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 296
    iget-object v0, p0, Lcom/sonymobile/systemui/qs/DragDropLayout$2;->val$qsid:Lcom/sonymobile/systemui/qs/QSTileViewIdentifier;

    invoke-virtual {v0}, Lcom/sonymobile/systemui/qs/QSTileViewIdentifier;->getStatus()Lcom/sonymobile/systemui/qs/QSTileViewIdentifier$Status;

    move-result-object v0

    sget-object v1, Lcom/sonymobile/systemui/qs/QSTileViewIdentifier$Status;->USED:Lcom/sonymobile/systemui/qs/QSTileViewIdentifier$Status;

    if-ne v0, v1, :cond_0

    .line 297
    iget-object v0, p0, Lcom/sonymobile/systemui/qs/DragDropLayout$2;->this$0:Lcom/sonymobile/systemui/qs/DragDropLayout;

    iget-object v1, p0, Lcom/sonymobile/systemui/qs/DragDropLayout$2;->this$0:Lcom/sonymobile/systemui/qs/DragDropLayout;

    invoke-static {v1}, Lcom/sonymobile/systemui/qs/DragDropLayout;->-get8(Lcom/sonymobile/systemui/qs/DragDropLayout;)Landroid/view/View;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sonymobile/systemui/qs/DragDropLayout;->-wrap5(Lcom/sonymobile/systemui/qs/DragDropLayout;Landroid/view/View;)V

    .line 298
    iget-object v0, p0, Lcom/sonymobile/systemui/qs/DragDropLayout$2;->this$0:Lcom/sonymobile/systemui/qs/DragDropLayout;

    invoke-static {v0}, Lcom/sonymobile/systemui/qs/DragDropLayout;->-get8(Lcom/sonymobile/systemui/qs/DragDropLayout;)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/sonymobile/systemui/qs/QSTileViewIdentifier;

    iget v2, p0, Lcom/sonymobile/systemui/qs/DragDropLayout$2;->val$index:I

    invoke-direct {v1, v2}, Lcom/sonymobile/systemui/qs/QSTileViewIdentifier;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 299
    iget-object v0, p0, Lcom/sonymobile/systemui/qs/DragDropLayout$2;->this$0:Lcom/sonymobile/systemui/qs/DragDropLayout;

    invoke-static {v0}, Lcom/sonymobile/systemui/qs/DragDropLayout;->-get1(Lcom/sonymobile/systemui/qs/DragDropLayout;)Lcom/sonymobile/systemui/qs/QSEditPanel;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/systemui/qs/DragDropLayout$2;->this$0:Lcom/sonymobile/systemui/qs/DragDropLayout;

    invoke-static {v1}, Lcom/sonymobile/systemui/qs/DragDropLayout;->-get8(Lcom/sonymobile/systemui/qs/DragDropLayout;)Landroid/view/View;

    move-result-object v1

    iget v2, p0, Lcom/sonymobile/systemui/qs/DragDropLayout$2;->val$index:I

    invoke-virtual {v0, v1, v2}, Lcom/sonymobile/systemui/qs/QSEditPanel;->addView(Landroid/view/View;I)V

    .line 300
    iget-object v0, p0, Lcom/sonymobile/systemui/qs/DragDropLayout$2;->this$0:Lcom/sonymobile/systemui/qs/DragDropLayout;

    invoke-static {v0}, Lcom/sonymobile/systemui/qs/DragDropLayout;->-get1(Lcom/sonymobile/systemui/qs/DragDropLayout;)Lcom/sonymobile/systemui/qs/QSEditPanel;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/systemui/qs/DragDropLayout$2;->val$view:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/sonymobile/systemui/qs/QSEditPanel;->removeView(Landroid/view/View;)V

    .line 301
    iget-object v0, p0, Lcom/sonymobile/systemui/qs/DragDropLayout$2;->this$0:Lcom/sonymobile/systemui/qs/DragDropLayout;

    invoke-static {v0}, Lcom/sonymobile/systemui/qs/DragDropLayout;->-get0(Lcom/sonymobile/systemui/qs/DragDropLayout;)Landroid/widget/LinearLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/systemui/qs/DragDropLayout$2;->this$0:Lcom/sonymobile/systemui/qs/DragDropLayout;

    invoke-static {v1}, Lcom/sonymobile/systemui/qs/DragDropLayout;->-get7(Lcom/sonymobile/systemui/qs/DragDropLayout;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 309
    :goto_0
    iget-object v0, p0, Lcom/sonymobile/systemui/qs/DragDropLayout$2;->this$0:Lcom/sonymobile/systemui/qs/DragDropLayout;

    invoke-static {v0}, Lcom/sonymobile/systemui/qs/DragDropLayout;->-wrap8(Lcom/sonymobile/systemui/qs/DragDropLayout;)V

    .line 295
    return-void

    .line 303
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/systemui/qs/DragDropLayout$2;->this$0:Lcom/sonymobile/systemui/qs/DragDropLayout;

    iget-object v1, p0, Lcom/sonymobile/systemui/qs/DragDropLayout$2;->this$0:Lcom/sonymobile/systemui/qs/DragDropLayout;

    invoke-static {v1}, Lcom/sonymobile/systemui/qs/DragDropLayout;->-get7(Lcom/sonymobile/systemui/qs/DragDropLayout;)Landroid/view/View;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sonymobile/systemui/qs/DragDropLayout;->-wrap6(Lcom/sonymobile/systemui/qs/DragDropLayout;Landroid/view/View;)V

    .line 304
    iget-object v0, p0, Lcom/sonymobile/systemui/qs/DragDropLayout$2;->this$0:Lcom/sonymobile/systemui/qs/DragDropLayout;

    invoke-static {v0}, Lcom/sonymobile/systemui/qs/DragDropLayout;->-get7(Lcom/sonymobile/systemui/qs/DragDropLayout;)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/sonymobile/systemui/qs/QSTileViewIdentifier;

    iget v2, p0, Lcom/sonymobile/systemui/qs/DragDropLayout$2;->val$index:I

    invoke-direct {v1, v2}, Lcom/sonymobile/systemui/qs/QSTileViewIdentifier;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 305
    iget-object v0, p0, Lcom/sonymobile/systemui/qs/DragDropLayout$2;->this$0:Lcom/sonymobile/systemui/qs/DragDropLayout;

    invoke-static {v0}, Lcom/sonymobile/systemui/qs/DragDropLayout;->-get0(Lcom/sonymobile/systemui/qs/DragDropLayout;)Landroid/widget/LinearLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/systemui/qs/DragDropLayout$2;->this$0:Lcom/sonymobile/systemui/qs/DragDropLayout;

    invoke-static {v1}, Lcom/sonymobile/systemui/qs/DragDropLayout;->-get7(Lcom/sonymobile/systemui/qs/DragDropLayout;)Landroid/view/View;

    move-result-object v1

    iget v2, p0, Lcom/sonymobile/systemui/qs/DragDropLayout$2;->val$index:I

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    .line 306
    iget-object v0, p0, Lcom/sonymobile/systemui/qs/DragDropLayout$2;->this$0:Lcom/sonymobile/systemui/qs/DragDropLayout;

    invoke-static {v0}, Lcom/sonymobile/systemui/qs/DragDropLayout;->-get0(Lcom/sonymobile/systemui/qs/DragDropLayout;)Landroid/widget/LinearLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/systemui/qs/DragDropLayout$2;->val$view:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 307
    iget-object v0, p0, Lcom/sonymobile/systemui/qs/DragDropLayout$2;->this$0:Lcom/sonymobile/systemui/qs/DragDropLayout;

    invoke-static {v0}, Lcom/sonymobile/systemui/qs/DragDropLayout;->-get1(Lcom/sonymobile/systemui/qs/DragDropLayout;)Lcom/sonymobile/systemui/qs/QSEditPanel;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/systemui/qs/DragDropLayout$2;->this$0:Lcom/sonymobile/systemui/qs/DragDropLayout;

    invoke-static {v1}, Lcom/sonymobile/systemui/qs/DragDropLayout;->-get8(Lcom/sonymobile/systemui/qs/DragDropLayout;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonymobile/systemui/qs/QSEditPanel;->addView(Landroid/view/View;)V

    goto :goto_0
.end method
