.class Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment$MyTransferHandler;
.super Ljava/lang/Object;
.source "FavoritesViewFragment.java"

# interfaces
.implements Lcom/sonyericsson/movablepanes/transfer/TransferTarget;
.implements Lcom/sonyericsson/movablepanes/transfer/TransferSource;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyTransferHandler"
.end annotation


# instance fields
.field private mDelayedMove:Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment$DelayedMove;

.field final synthetic this$0:Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment;)V
    .locals 1
    .param p1, "this$0"    # Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment;

    .prologue
    .line 810
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment$MyTransferHandler;->this$0:Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 811
    new-instance v0, Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment$DelayedMove;

    invoke-direct {v0, p0}, Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment$DelayedMove;-><init>(Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment$MyTransferHandler;)V

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment$MyTransferHandler;->mDelayedMove:Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment$DelayedMove;

    .line 810
    return-void
.end method

.method private internalDrop(Lcom/sonyericsson/movablepanes/transfer/TransferTarget$DropListener;)V
    .locals 9
    .param p1, "dropListener"    # Lcom/sonyericsson/movablepanes/transfer/TransferTarget$DropListener;

    .prologue
    const/4 v8, -0x1

    .line 831
    iget-object v4, p0, Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment$MyTransferHandler;->this$0:Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment;

    invoke-static {v4}, Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment;->-get5(Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment;)Landroid/os/Handler;

    move-result-object v4

    iget-object v5, p0, Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment$MyTransferHandler;->mDelayedMove:Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment$DelayedMove;

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 832
    iget-object v4, p0, Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment$MyTransferHandler;->this$0:Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment;

    invoke-static {v4}, Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment;->-get2(Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment;)Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment$ContactsModel;

    move-result-object v4

    iget-object v5, p0, Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment$MyTransferHandler;->this$0:Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment;

    invoke-static {v5}, Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment;->-get11(Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment;)J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment$ContactsModel;->getContactLocation(J)I

    move-result v1

    .line 833
    .local v1, "position":I
    if-eq v1, v8, :cond_0

    .line 834
    iget-object v4, p0, Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment$MyTransferHandler;->this$0:Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment;

    invoke-static {v4}, Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment;->-get8(Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment;)Lcom/sonyericsson/movablepanes/paneview/PaneView;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/sonyericsson/movablepanes/paneview/PaneView;->getItemView(I)Landroid/view/View;

    move-result-object v3

    .line 835
    .local v3, "view":Landroid/view/View;
    if-eqz v3, :cond_0

    .line 836
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 837
    .local v2, "rect":Landroid/graphics/Rect;
    invoke-virtual {v3, v2}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 838
    iget-object v4, p0, Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment$MyTransferHandler;->this$0:Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment;

    invoke-static {v4}, Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment;->-get14(Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment;)Lcom/sonyericsson/movablepanes/transfer/TransferLayout;

    move-result-object v4

    iget-object v5, p0, Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment$MyTransferHandler;->this$0:Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment;

    invoke-static {v5}, Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment;->-get8(Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment;)Lcom/sonyericsson/movablepanes/paneview/PaneView;

    move-result-object v5

    invoke-virtual {v5, v1}, Lcom/sonyericsson/movablepanes/paneview/PaneView;->getItemView(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sonyericsson/movablepanes/transfer/TransferLayout;->calculateDragDropCorrection(Landroid/view/View;)I

    move-result v0

    .line 840
    .local v0, "correction":I
    iget-object v4, p0, Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment$MyTransferHandler;->this$0:Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment;

    invoke-static {v4}, Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment;->-get8(Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment;)Lcom/sonyericsson/movablepanes/paneview/PaneView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonyericsson/movablepanes/paneview/PaneView;->getScrollX()I

    move-result v4

    neg-int v4, v4

    sub-int/2addr v4, v0

    iget-object v5, p0, Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment$MyTransferHandler;->this$0:Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment;

    invoke-static {v5}, Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment;->-get8(Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment;)Lcom/sonyericsson/movablepanes/paneview/PaneView;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sonyericsson/movablepanes/paneview/PaneView;->getScrollY()I

    move-result v5

    neg-int v5, v5

    invoke-virtual {v2, v4, v5}, Landroid/graphics/Rect;->offset(II)V

    .line 841
    iget-object v4, p0, Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment$MyTransferHandler;->this$0:Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment;

    new-instance v5, Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment$MyTransferHandler$1;

    invoke-direct {v5, p0}, Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment$MyTransferHandler$1;-><init>(Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment$MyTransferHandler;)V

    invoke-virtual {v4, v2, v5}, Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment;->startDropAnimation(Landroid/graphics/Rect;Ljava/lang/Runnable;)V

    .line 851
    .end local v0    # "correction":I
    .end local v2    # "rect":Landroid/graphics/Rect;
    .end local v3    # "view":Landroid/view/View;
    :cond_0
    if-eqz p1, :cond_1

    .line 852
    const/4 v4, 0x1

    invoke-interface {p1, p0, v4}, Lcom/sonyericsson/movablepanes/transfer/TransferTarget$DropListener;->dropFinished(Lcom/sonyericsson/movablepanes/transfer/TransferTarget;I)V

    .line 855
    :cond_1
    iget-object v4, p0, Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment$MyTransferHandler;->this$0:Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment;

    const-wide/16 v6, -0x1

    invoke-static {v4, v6, v7}, Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment;->-set0(Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment;J)J

    .line 856
    iget-object v4, p0, Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment$MyTransferHandler;->this$0:Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment;

    invoke-static {v4, v8}, Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment;->-set1(Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment;I)I

    .line 830
    return-void
.end method


# virtual methods
.method public cancelHint()V
    .locals 2

    .prologue
    .line 891
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment$MyTransferHandler;->this$0:Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment;

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment;->-get5(Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment$MyTransferHandler;->mDelayedMove:Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment$DelayedMove;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 892
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment$MyTransferHandler;->this$0:Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment;

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment;->-get4(Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment;)Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment$FavoritesPaneAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment$FavoritesPaneAdapter;->notifyDataSetChanged()V

    .line 890
    return-void
.end method

.method public drop(Lcom/sonyericsson/movablepanes/transfer/TransferTarget$DropListener;)V
    .locals 0
    .param p1, "dropListener"    # Lcom/sonyericsson/movablepanes/transfer/TransferTarget$DropListener;

    .prologue
    .line 823
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment$MyTransferHandler;->internalDrop(Lcom/sonyericsson/movablepanes/transfer/TransferTarget$DropListener;)V

    .line 822
    return-void
.end method

.method public hint(II)Z
    .locals 8
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 862
    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment$MyTransferHandler;->this$0:Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment;

    invoke-static {v3}, Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment;->-get8(Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment;)Lcom/sonyericsson/movablepanes/paneview/PaneView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonyericsson/movablepanes/paneview/PaneView;->getPaddingLeft()I

    move-result v3

    iget-object v4, p0, Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment$MyTransferHandler;->this$0:Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment;

    invoke-static {v4}, Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment;->-get8(Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment;)Lcom/sonyericsson/movablepanes/paneview/PaneView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonyericsson/movablepanes/paneview/PaneView;->getScrollX()I

    move-result v4

    add-int/2addr v3, v4

    add-int/2addr p1, v3

    .line 863
    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment$MyTransferHandler;->this$0:Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment;

    invoke-static {v3}, Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment;->-get8(Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment;)Lcom/sonyericsson/movablepanes/paneview/PaneView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonyericsson/movablepanes/paneview/PaneView;->getPaddingTop()I

    move-result v3

    iget-object v4, p0, Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment$MyTransferHandler;->this$0:Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment;

    invoke-static {v4}, Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment;->-get8(Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment;)Lcom/sonyericsson/movablepanes/paneview/PaneView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonyericsson/movablepanes/paneview/PaneView;->getScrollY()I

    move-result v4

    add-int/2addr v3, v4

    add-int/2addr p2, v3

    .line 865
    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment$MyTransferHandler;->this$0:Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment;

    invoke-static {v3}, Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment;->-get4(Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment;)Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment$FavoritesPaneAdapter;

    move-result-object v3

    invoke-static {v3}, Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment$FavoritesPaneAdapter;->-get0(Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment$FavoritesPaneAdapter;)I

    move-result v3

    div-int/lit8 v2, v3, 0x2

    .line 867
    .local v2, "scrollTreshHold":I
    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment$MyTransferHandler;->this$0:Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment;

    invoke-static {v3}, Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment;->-get8(Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment;)Lcom/sonyericsson/movablepanes/paneview/PaneView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonyericsson/movablepanes/paneview/PaneView;->getScrollY()I

    move-result v3

    iget-object v4, p0, Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment$MyTransferHandler;->this$0:Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment;

    invoke-static {v4}, Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment;->-get8(Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment;)Lcom/sonyericsson/movablepanes/paneview/PaneView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonyericsson/movablepanes/paneview/PaneView;->getHeight()I

    move-result v4

    add-int/2addr v3, v4

    sub-int/2addr v3, v2

    if-le p2, v3, :cond_0

    .line 868
    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment$MyTransferHandler;->this$0:Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment;

    invoke-static {v3}, Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment;->-get8(Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment;)Lcom/sonyericsson/movablepanes/paneview/PaneView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonyericsson/movablepanes/paneview/PaneView;->getScrollY()I

    move-result v3

    iget-object v4, p0, Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment$MyTransferHandler;->this$0:Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment;

    invoke-static {v4}, Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment;->-get8(Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment;)Lcom/sonyericsson/movablepanes/paneview/PaneView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonyericsson/movablepanes/paneview/PaneView;->getHeight()I

    move-result v4

    add-int/2addr v3, v4

    sub-int/2addr v3, v2

    sub-int v0, p2, v3

    .line 869
    .local v0, "dy":I
    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment$MyTransferHandler;->this$0:Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment;

    invoke-static {v3}, Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment;->-get8(Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment;)Lcom/sonyericsson/movablepanes/paneview/PaneView;

    move-result-object v3

    int-to-float v4, v0

    invoke-virtual {v3, v4}, Lcom/sonyericsson/movablepanes/paneview/PaneView;->scroll(F)V

    .line 872
    .end local v0    # "dy":I
    :cond_0
    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment$MyTransferHandler;->this$0:Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment;

    invoke-static {v3}, Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment;->-get8(Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment;)Lcom/sonyericsson/movablepanes/paneview/PaneView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonyericsson/movablepanes/paneview/PaneView;->getScrollY()I

    move-result v3

    add-int/2addr v3, v2

    if-ge p2, v3, :cond_1

    .line 873
    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment$MyTransferHandler;->this$0:Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment;

    invoke-static {v3}, Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment;->-get8(Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment;)Lcom/sonyericsson/movablepanes/paneview/PaneView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonyericsson/movablepanes/paneview/PaneView;->getScrollY()I

    move-result v3

    add-int/2addr v3, v2

    sub-int v0, p2, v3

    .line 874
    .restart local v0    # "dy":I
    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment$MyTransferHandler;->this$0:Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment;

    invoke-static {v3}, Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment;->-get8(Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment;)Lcom/sonyericsson/movablepanes/paneview/PaneView;

    move-result-object v3

    int-to-float v4, v0

    invoke-virtual {v3, v4}, Lcom/sonyericsson/movablepanes/paneview/PaneView;->scroll(F)V

    .line 877
    .end local v0    # "dy":I
    :cond_1
    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment$MyTransferHandler;->this$0:Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment;

    invoke-static {v3}, Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment;->-get4(Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment;)Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment$FavoritesPaneAdapter;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment$FavoritesPaneAdapter;->getLocationIndex(II)I

    move-result v3

    const/4 v4, 0x0

    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 879
    .local v1, "newPosition":I
    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment$MyTransferHandler;->this$0:Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment;

    invoke-static {v3}, Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment;->-get13(Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment;)I

    move-result v3

    if-eq v1, v3, :cond_2

    .line 880
    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment$MyTransferHandler;->this$0:Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment;

    invoke-static {v3}, Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment;->-get5(Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment;)Landroid/os/Handler;

    move-result-object v3

    iget-object v4, p0, Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment$MyTransferHandler;->mDelayedMove:Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment$DelayedMove;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 881
    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment$MyTransferHandler;->this$0:Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment;

    invoke-static {v3}, Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment;->-get5(Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment;)Landroid/os/Handler;

    move-result-object v3

    iget-object v4, p0, Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment$MyTransferHandler;->mDelayedMove:Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment$DelayedMove;

    const-wide/16 v6, 0x12c

    invoke-virtual {v3, v4, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 884
    :cond_2
    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment$MyTransferHandler;->this$0:Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment;

    invoke-static {v3, v1}, Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment;->-set1(Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment;I)I

    .line 886
    const/4 v3, 0x1

    return v3
.end method

.method public onDelayedMove()V
    .locals 4

    .prologue
    .line 815
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment$MyTransferHandler;->this$0:Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment;

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment;->-get2(Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment;)Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment$ContactsModel;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment$MyTransferHandler;->this$0:Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment;

    invoke-static {v1}, Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment;->-get11(Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment;)J

    move-result-wide v2

    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment$MyTransferHandler;->this$0:Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment;

    invoke-static {v1}, Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment;->-get13(Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment;)I

    move-result v1

    invoke-virtual {v0, v2, v3, v1}, Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment$ContactsModel;->moveContactToLocation(JI)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 816
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment$MyTransferHandler;->this$0:Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment;

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment;->-get4(Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment;)Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment$FavoritesPaneAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 817
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment$MyTransferHandler;->this$0:Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment;

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment;->-get4(Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment;)Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment$FavoritesPaneAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment$FavoritesPaneAdapter;->notifyDataSetChanged()V

    .line 814
    :cond_0
    return-void
.end method

.method public onTransferCanceled()V
    .locals 1

    .prologue
    .line 900
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment$MyTransferHandler;->internalDrop(Lcom/sonyericsson/movablepanes/transfer/TransferTarget$DropListener;)V

    .line 896
    return-void
.end method

.method public onTransferCompleted()V
    .locals 0

    .prologue
    .line 904
    return-void
.end method

.method public requestCopy()Z
    .locals 1

    .prologue
    .line 909
    const/4 v0, 0x0

    return v0
.end method
