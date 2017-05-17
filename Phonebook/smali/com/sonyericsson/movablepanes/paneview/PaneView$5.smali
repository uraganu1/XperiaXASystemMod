.class Lcom/sonyericsson/movablepanes/paneview/PaneView$5;
.super Ljava/lang/Object;
.source "PaneView.java"

# interfaces
.implements Lcom/sonyericsson/movablepanes/paneview/GestureDetector$GestureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/movablepanes/paneview/PaneView;->createGestureListener()Lcom/sonyericsson/movablepanes/paneview/GestureDetector$GestureListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private horizontalDrag:Z

.field final synthetic this$0:Lcom/sonyericsson/movablepanes/paneview/PaneView;


# direct methods
.method constructor <init>(Lcom/sonyericsson/movablepanes/paneview/PaneView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/movablepanes/paneview/PaneView;

    .prologue
    .line 642
    iput-object p1, p0, Lcom/sonyericsson/movablepanes/paneview/PaneView$5;->this$0:Lcom/sonyericsson/movablepanes/paneview/PaneView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(II)V
    .locals 0
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 686
    return-void
.end method

.method public onFling(FF)V
    .locals 6
    .param p1, "velocityX"    # F
    .param p2, "velocityY"    # F

    .prologue
    .line 673
    iget-object v1, p0, Lcom/sonyericsson/movablepanes/paneview/PaneView$5;->this$0:Lcom/sonyericsson/movablepanes/paneview/PaneView;

    iget-object v1, v1, Lcom/sonyericsson/movablepanes/paneview/PaneView;->mFlingStateListener:Lcom/sonyericsson/movablepanes/paneview/PaneView$FlingStateListener;

    if-eqz v1, :cond_0

    .line 674
    iget-object v1, p0, Lcom/sonyericsson/movablepanes/paneview/PaneView$5;->this$0:Lcom/sonyericsson/movablepanes/paneview/PaneView;

    iget-object v1, v1, Lcom/sonyericsson/movablepanes/paneview/PaneView;->mFlingStateListener:Lcom/sonyericsson/movablepanes/paneview/PaneView$FlingStateListener;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lcom/sonyericsson/movablepanes/paneview/PaneView$FlingStateListener;->onFlingStateChanged(Z)V

    .line 677
    :cond_0
    iget-boolean v1, p0, Lcom/sonyericsson/movablepanes/paneview/PaneView$5;->horizontalDrag:Z

    if-nez v1, :cond_1

    .line 678
    iget-object v1, p0, Lcom/sonyericsson/movablepanes/paneview/PaneView$5;->this$0:Lcom/sonyericsson/movablepanes/paneview/PaneView;

    iget-object v1, v1, Lcom/sonyericsson/movablepanes/paneview/PaneView;->mScrollDynamics:Lcom/sonyericsson/movablepanes/util/Dynamics;

    invoke-virtual {v1}, Lcom/sonyericsson/movablepanes/util/Dynamics;->getPosition()F

    move-result v0

    .line 679
    .local v0, "position":F
    iget-object v1, p0, Lcom/sonyericsson/movablepanes/paneview/PaneView$5;->this$0:Lcom/sonyericsson/movablepanes/paneview/PaneView;

    iget-object v1, v1, Lcom/sonyericsson/movablepanes/paneview/PaneView;->mScrollDynamics:Lcom/sonyericsson/movablepanes/util/Dynamics;

    neg-float v2, p2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    invoke-virtual {v1, v0, v2, v4, v5}, Lcom/sonyericsson/movablepanes/util/Dynamics;->setState(FFJ)V

    .line 680
    iget-object v1, p0, Lcom/sonyericsson/movablepanes/paneview/PaneView$5;->this$0:Lcom/sonyericsson/movablepanes/paneview/PaneView;

    iget-object v1, v1, Lcom/sonyericsson/movablepanes/paneview/PaneView;->mScrollDynamics:Lcom/sonyericsson/movablepanes/util/Dynamics;

    iget-object v2, p0, Lcom/sonyericsson/movablepanes/paneview/PaneView$5;->this$0:Lcom/sonyericsson/movablepanes/paneview/PaneView;

    invoke-static {v2}, Lcom/sonyericsson/movablepanes/paneview/PaneView;->-get2(Lcom/sonyericsson/movablepanes/paneview/PaneView;)F

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sonyericsson/movablepanes/util/Dynamics;->setMaxPosition(F)V

    .line 681
    iget-object v1, p0, Lcom/sonyericsson/movablepanes/paneview/PaneView$5;->this$0:Lcom/sonyericsson/movablepanes/paneview/PaneView;

    iget-object v1, v1, Lcom/sonyericsson/movablepanes/paneview/PaneView;->mScrollDynamics:Lcom/sonyericsson/movablepanes/util/Dynamics;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sonyericsson/movablepanes/util/Dynamics;->setMinPosition(F)V

    .line 672
    .end local v0    # "position":F
    :cond_1
    return-void
.end method

.method public onHorizontalDrag(I)V
    .locals 1
    .param p1, "dx"    # I

    .prologue
    .line 692
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonyericsson/movablepanes/paneview/PaneView$5;->horizontalDrag:Z

    .line 691
    return-void
.end method

.method public onLongPress(II)Z
    .locals 7
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v6, 0x0

    .line 657
    iget-object v1, p0, Lcom/sonyericsson/movablepanes/paneview/PaneView$5;->this$0:Lcom/sonyericsson/movablepanes/paneview/PaneView;

    iget-object v1, v1, Lcom/sonyericsson/movablepanes/paneview/PaneView;->mSelectedItem:Lcom/sonyericsson/movablepanes/paneview/PaneView$AdapterItem;

    if-eqz v1, :cond_1

    .line 658
    iget-object v1, p0, Lcom/sonyericsson/movablepanes/paneview/PaneView$5;->this$0:Lcom/sonyericsson/movablepanes/paneview/PaneView;

    invoke-virtual {v1}, Lcom/sonyericsson/movablepanes/paneview/PaneView;->getOnItemLongClickListener()Landroid/widget/AdapterView$OnItemLongClickListener;

    move-result-object v0

    .line 659
    .local v0, "listener":Landroid/widget/AdapterView$OnItemLongClickListener;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/sonyericsson/movablepanes/paneview/PaneView$5;->this$0:Lcom/sonyericsson/movablepanes/paneview/PaneView;

    iget-object v1, v1, Lcom/sonyericsson/movablepanes/paneview/PaneView;->mSelectedItem:Lcom/sonyericsson/movablepanes/paneview/PaneView$AdapterItem;

    iget-object v1, v1, Lcom/sonyericsson/movablepanes/paneview/PaneView$AdapterItem;->view:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 660
    iget-object v1, p0, Lcom/sonyericsson/movablepanes/paneview/PaneView$5;->this$0:Lcom/sonyericsson/movablepanes/paneview/PaneView;

    iget-object v2, p0, Lcom/sonyericsson/movablepanes/paneview/PaneView$5;->this$0:Lcom/sonyericsson/movablepanes/paneview/PaneView;

    iget-object v2, v2, Lcom/sonyericsson/movablepanes/paneview/PaneView;->mSelectedItem:Lcom/sonyericsson/movablepanes/paneview/PaneView$AdapterItem;

    iget-object v2, v2, Lcom/sonyericsson/movablepanes/paneview/PaneView$AdapterItem;->view:Landroid/view/View;

    .line 661
    iget-object v3, p0, Lcom/sonyericsson/movablepanes/paneview/PaneView$5;->this$0:Lcom/sonyericsson/movablepanes/paneview/PaneView;

    iget-object v3, v3, Lcom/sonyericsson/movablepanes/paneview/PaneView;->mSelectedItem:Lcom/sonyericsson/movablepanes/paneview/PaneView$AdapterItem;

    invoke-static {v3}, Lcom/sonyericsson/movablepanes/paneview/PaneView$AdapterItem;->-get1(Lcom/sonyericsson/movablepanes/paneview/PaneView$AdapterItem;)I

    move-result v3

    iget-object v4, p0, Lcom/sonyericsson/movablepanes/paneview/PaneView$5;->this$0:Lcom/sonyericsson/movablepanes/paneview/PaneView;

    iget-object v4, v4, Lcom/sonyericsson/movablepanes/paneview/PaneView;->mSelectedItem:Lcom/sonyericsson/movablepanes/paneview/PaneView$AdapterItem;

    invoke-static {v4}, Lcom/sonyericsson/movablepanes/paneview/PaneView$AdapterItem;->-get0(Lcom/sonyericsson/movablepanes/paneview/PaneView$AdapterItem;)J

    move-result-wide v4

    .line 660
    invoke-interface/range {v0 .. v5}, Landroid/widget/AdapterView$OnItemLongClickListener;->onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z

    .line 662
    iget-object v1, p0, Lcom/sonyericsson/movablepanes/paneview/PaneView$5;->this$0:Lcom/sonyericsson/movablepanes/paneview/PaneView;

    invoke-static {v1, v6}, Lcom/sonyericsson/movablepanes/paneview/PaneView;->-wrap5(Lcom/sonyericsson/movablepanes/paneview/PaneView;Lcom/sonyericsson/movablepanes/paneview/PaneView$AdapterItem;)V

    .line 663
    const/4 v1, 0x1

    return v1

    .line 665
    :cond_0
    return v2

    .line 669
    .end local v0    # "listener":Landroid/widget/AdapterView$OnItemLongClickListener;
    :cond_1
    return v2
.end method

.method public onNotClickOrLongPress()V
    .locals 2

    .prologue
    .line 705
    iget-object v0, p0, Lcom/sonyericsson/movablepanes/paneview/PaneView$5;->this$0:Lcom/sonyericsson/movablepanes/paneview/PaneView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sonyericsson/movablepanes/paneview/PaneView;->-wrap5(Lcom/sonyericsson/movablepanes/paneview/PaneView;Lcom/sonyericsson/movablepanes/paneview/PaneView$AdapterItem;)V

    .line 704
    return-void
.end method

.method public onSecondaryClick(II)V
    .locals 0
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 708
    return-void
.end method

.method public onTouchEnd()V
    .locals 2

    .prologue
    .line 652
    iget-object v0, p0, Lcom/sonyericsson/movablepanes/paneview/PaneView$5;->this$0:Lcom/sonyericsson/movablepanes/paneview/PaneView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sonyericsson/movablepanes/paneview/PaneView;->-wrap5(Lcom/sonyericsson/movablepanes/paneview/PaneView;Lcom/sonyericsson/movablepanes/paneview/PaneView$AdapterItem;)V

    .line 653
    iget-object v0, p0, Lcom/sonyericsson/movablepanes/paneview/PaneView$5;->this$0:Lcom/sonyericsson/movablepanes/paneview/PaneView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sonyericsson/movablepanes/paneview/PaneView;->-wrap6(Lcom/sonyericsson/movablepanes/paneview/PaneView;Z)V

    .line 651
    return-void
.end method

.method public onTouchStart(II)V
    .locals 3
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 647
    iget-object v0, p0, Lcom/sonyericsson/movablepanes/paneview/PaneView$5;->this$0:Lcom/sonyericsson/movablepanes/paneview/PaneView;

    invoke-static {v0}, Lcom/sonyericsson/movablepanes/paneview/PaneView;->-wrap7(Lcom/sonyericsson/movablepanes/paneview/PaneView;)V

    .line 648
    iget-object v0, p0, Lcom/sonyericsson/movablepanes/paneview/PaneView$5;->this$0:Lcom/sonyericsson/movablepanes/paneview/PaneView;

    iget-object v1, p0, Lcom/sonyericsson/movablepanes/paneview/PaneView$5;->this$0:Lcom/sonyericsson/movablepanes/paneview/PaneView;

    invoke-static {v1, p1, p2}, Lcom/sonyericsson/movablepanes/paneview/PaneView;->-wrap0(Lcom/sonyericsson/movablepanes/paneview/PaneView;II)Lcom/sonyericsson/movablepanes/paneview/PaneView$AdapterItem;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/movablepanes/paneview/PaneView;->setSelectedItem(Lcom/sonyericsson/movablepanes/paneview/PaneView$AdapterItem;Z)V

    .line 646
    return-void
.end method

.method public onVerticalDrag(I)V
    .locals 6
    .param p1, "dy"    # I

    .prologue
    .line 696
    iget-object v0, p0, Lcom/sonyericsson/movablepanes/paneview/PaneView$5;->this$0:Lcom/sonyericsson/movablepanes/paneview/PaneView;

    invoke-static {v0}, Lcom/sonyericsson/movablepanes/paneview/PaneView;->-wrap3(Lcom/sonyericsson/movablepanes/paneview/PaneView;)V

    .line 697
    iget-object v0, p0, Lcom/sonyericsson/movablepanes/paneview/PaneView$5;->this$0:Lcom/sonyericsson/movablepanes/paneview/PaneView;

    invoke-virtual {v0}, Lcom/sonyericsson/movablepanes/paneview/PaneView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 698
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/movablepanes/paneview/PaneView$5;->horizontalDrag:Z

    .line 699
    iget-object v0, p0, Lcom/sonyericsson/movablepanes/paneview/PaneView$5;->this$0:Lcom/sonyericsson/movablepanes/paneview/PaneView;

    iget-object v0, v0, Lcom/sonyericsson/movablepanes/paneview/PaneView;->mScrollDynamics:Lcom/sonyericsson/movablepanes/util/Dynamics;

    iget-object v1, p0, Lcom/sonyericsson/movablepanes/paneview/PaneView$5;->this$0:Lcom/sonyericsson/movablepanes/paneview/PaneView;

    iget-object v1, v1, Lcom/sonyericsson/movablepanes/paneview/PaneView;->mScrollDynamics:Lcom/sonyericsson/movablepanes/util/Dynamics;

    invoke-virtual {v1}, Lcom/sonyericsson/movablepanes/util/Dynamics;->getPosition()F

    move-result v1

    int-to-float v2, p1

    sub-float/2addr v1, v2

    const/4 v2, 0x0

    .line 700
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 699
    invoke-virtual {v0, v1, v2, v4, v5}, Lcom/sonyericsson/movablepanes/util/Dynamics;->setState(FFJ)V

    .line 701
    iget-object v0, p0, Lcom/sonyericsson/movablepanes/paneview/PaneView$5;->this$0:Lcom/sonyericsson/movablepanes/paneview/PaneView;

    invoke-virtual {v0}, Lcom/sonyericsson/movablepanes/paneview/PaneView;->updatePanePosition()V

    .line 695
    return-void
.end method
