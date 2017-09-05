.class Lcom/sonymobile/systemui/qs/DragDropLayout$4;
.super Ljava/lang/Object;
.source "DragDropLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/systemui/qs/DragDropLayout;->finishDrag(Landroid/view/ViewGroup;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/systemui/qs/DragDropLayout;

.field final synthetic val$index:I

.field final synthetic val$targetViewGroup:Landroid/view/ViewGroup;


# direct methods
.method constructor <init>(Lcom/sonymobile/systemui/qs/DragDropLayout;Landroid/view/ViewGroup;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonymobile/systemui/qs/DragDropLayout;
    .param p2, "val$targetViewGroup"    # Landroid/view/ViewGroup;
    .param p3, "val$index"    # I

    .prologue
    .line 569
    iput-object p1, p0, Lcom/sonymobile/systemui/qs/DragDropLayout$4;->this$0:Lcom/sonymobile/systemui/qs/DragDropLayout;

    iput-object p2, p0, Lcom/sonymobile/systemui/qs/DragDropLayout$4;->val$targetViewGroup:Landroid/view/ViewGroup;

    iput p3, p0, Lcom/sonymobile/systemui/qs/DragDropLayout$4;->val$index:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 572
    iget-object v0, p0, Lcom/sonymobile/systemui/qs/DragDropLayout$4;->this$0:Lcom/sonymobile/systemui/qs/DragDropLayout;

    invoke-static {v0}, Lcom/sonymobile/systemui/qs/DragDropLayout;->-wrap3(Lcom/sonymobile/systemui/qs/DragDropLayout;)V

    .line 573
    iget-object v0, p0, Lcom/sonymobile/systemui/qs/DragDropLayout$4;->this$0:Lcom/sonymobile/systemui/qs/DragDropLayout;

    invoke-static {v0}, Lcom/sonymobile/systemui/qs/DragDropLayout;->-get3(Lcom/sonymobile/systemui/qs/DragDropLayout;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonymobile/systemui/qs/DragDropLayout$4;->this$0:Lcom/sonymobile/systemui/qs/DragDropLayout;

    invoke-static {v0}, Lcom/sonymobile/systemui/qs/DragDropLayout;->-get3(Lcom/sonymobile/systemui/qs/DragDropLayout;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_0

    .line 574
    iget-object v0, p0, Lcom/sonymobile/systemui/qs/DragDropLayout$4;->val$targetViewGroup:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/sonymobile/systemui/qs/DragDropLayout$4;->this$0:Lcom/sonymobile/systemui/qs/DragDropLayout;

    invoke-static {v1}, Lcom/sonymobile/systemui/qs/DragDropLayout;->-get0(Lcom/sonymobile/systemui/qs/DragDropLayout;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 575
    iget-object v0, p0, Lcom/sonymobile/systemui/qs/DragDropLayout$4;->this$0:Lcom/sonymobile/systemui/qs/DragDropLayout;

    iget-object v1, p0, Lcom/sonymobile/systemui/qs/DragDropLayout$4;->this$0:Lcom/sonymobile/systemui/qs/DragDropLayout;

    invoke-static {v1}, Lcom/sonymobile/systemui/qs/DragDropLayout;->-get3(Lcom/sonymobile/systemui/qs/DragDropLayout;)Landroid/view/View;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sonymobile/systemui/qs/DragDropLayout;->-wrap6(Lcom/sonymobile/systemui/qs/DragDropLayout;Landroid/view/View;)V

    .line 580
    :goto_0
    iget v0, p0, Lcom/sonymobile/systemui/qs/DragDropLayout$4;->val$index:I

    iget-object v1, p0, Lcom/sonymobile/systemui/qs/DragDropLayout$4;->val$targetViewGroup:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-lt v0, v1, :cond_2

    .line 581
    iget-object v0, p0, Lcom/sonymobile/systemui/qs/DragDropLayout$4;->val$targetViewGroup:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/sonymobile/systemui/qs/DragDropLayout$4;->this$0:Lcom/sonymobile/systemui/qs/DragDropLayout;

    invoke-static {v1}, Lcom/sonymobile/systemui/qs/DragDropLayout;->-get3(Lcom/sonymobile/systemui/qs/DragDropLayout;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 585
    :goto_1
    iget-object v0, p0, Lcom/sonymobile/systemui/qs/DragDropLayout$4;->this$0:Lcom/sonymobile/systemui/qs/DragDropLayout;

    invoke-static {v0, v3}, Lcom/sonymobile/systemui/qs/DragDropLayout;->-set0(Lcom/sonymobile/systemui/qs/DragDropLayout;Landroid/view/View;)Landroid/view/View;

    .line 587
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/systemui/qs/DragDropLayout$4;->this$0:Lcom/sonymobile/systemui/qs/DragDropLayout;

    invoke-static {v0}, Lcom/sonymobile/systemui/qs/DragDropLayout;->-wrap8(Lcom/sonymobile/systemui/qs/DragDropLayout;)V

    .line 588
    iget-object v0, p0, Lcom/sonymobile/systemui/qs/DragDropLayout$4;->this$0:Lcom/sonymobile/systemui/qs/DragDropLayout;

    invoke-static {v0}, Lcom/sonymobile/systemui/qs/DragDropLayout;->-get1(Lcom/sonymobile/systemui/qs/DragDropLayout;)Lcom/sonymobile/systemui/qs/QSEditPanel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/systemui/qs/QSEditPanel;->requestLayout()V

    .line 589
    iget-object v0, p0, Lcom/sonymobile/systemui/qs/DragDropLayout$4;->this$0:Lcom/sonymobile/systemui/qs/DragDropLayout;

    invoke-virtual {v0}, Lcom/sonymobile/systemui/qs/DragDropLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/systemui/qs/DragDropLayout$4;->this$0:Lcom/sonymobile/systemui/qs/DragDropLayout;

    invoke-static {v1}, Lcom/sonymobile/systemui/qs/DragDropLayout;->-get10(Lcom/sonymobile/systemui/qs/DragDropLayout;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sonymobile/systemui/qs/SomcQSTileHost;->setTiles(Landroid/content/Context;Ljava/util/List;)V

    .line 571
    return-void

    .line 577
    :cond_1
    iget-object v0, p0, Lcom/sonymobile/systemui/qs/DragDropLayout$4;->this$0:Lcom/sonymobile/systemui/qs/DragDropLayout;

    iget-object v1, p0, Lcom/sonymobile/systemui/qs/DragDropLayout$4;->this$0:Lcom/sonymobile/systemui/qs/DragDropLayout;

    invoke-static {v1}, Lcom/sonymobile/systemui/qs/DragDropLayout;->-get3(Lcom/sonymobile/systemui/qs/DragDropLayout;)Landroid/view/View;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sonymobile/systemui/qs/DragDropLayout;->-wrap4(Lcom/sonymobile/systemui/qs/DragDropLayout;Landroid/view/View;)V

    .line 578
    iget-object v0, p0, Lcom/sonymobile/systemui/qs/DragDropLayout$4;->this$0:Lcom/sonymobile/systemui/qs/DragDropLayout;

    iget-object v1, p0, Lcom/sonymobile/systemui/qs/DragDropLayout$4;->this$0:Lcom/sonymobile/systemui/qs/DragDropLayout;

    invoke-static {v1}, Lcom/sonymobile/systemui/qs/DragDropLayout;->-get3(Lcom/sonymobile/systemui/qs/DragDropLayout;)Landroid/view/View;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sonymobile/systemui/qs/DragDropLayout;->-wrap5(Lcom/sonymobile/systemui/qs/DragDropLayout;Landroid/view/View;)V

    goto :goto_0

    .line 583
    :cond_2
    iget-object v0, p0, Lcom/sonymobile/systemui/qs/DragDropLayout$4;->val$targetViewGroup:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/sonymobile/systemui/qs/DragDropLayout$4;->this$0:Lcom/sonymobile/systemui/qs/DragDropLayout;

    invoke-static {v1}, Lcom/sonymobile/systemui/qs/DragDropLayout;->-get3(Lcom/sonymobile/systemui/qs/DragDropLayout;)Landroid/view/View;

    move-result-object v1

    iget v2, p0, Lcom/sonymobile/systemui/qs/DragDropLayout$4;->val$index:I

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    goto :goto_1
.end method
