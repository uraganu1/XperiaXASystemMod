.class public Lcom/android/incallui/widget/multiwaveview/GlowPadView$GlowpadExploreByTouchHelper;
.super Landroid/support/v4/widget/ExploreByTouchHelper;
.source "GlowPadView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/widget/multiwaveview/GlowPadView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "GlowpadExploreByTouchHelper"
.end annotation


# instance fields
.field private mBounds:Landroid/graphics/Rect;

.field final synthetic this$0:Lcom/android/incallui/widget/multiwaveview/GlowPadView;


# direct methods
.method public constructor <init>(Lcom/android/incallui/widget/multiwaveview/GlowPadView;Landroid/view/View;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/incallui/widget/multiwaveview/GlowPadView;
    .param p2, "forView"    # Landroid/view/View;

    .prologue
    .line 1379
    iput-object p1, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView$GlowpadExploreByTouchHelper;->this$0:Lcom/android/incallui/widget/multiwaveview/GlowPadView;

    .line 1380
    invoke-direct {p0, p2}, Landroid/support/v4/widget/ExploreByTouchHelper;-><init>(Landroid/view/View;)V

    .line 1377
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView$GlowpadExploreByTouchHelper;->mBounds:Landroid/graphics/Rect;

    .line 1379
    return-void
.end method


# virtual methods
.method protected getVirtualViewAt(FF)I
    .locals 5
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 1385
    iget-object v2, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView$GlowpadExploreByTouchHelper;->this$0:Lcom/android/incallui/widget/multiwaveview/GlowPadView;

    invoke-static {v2}, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->-get0(Lcom/android/incallui/widget/multiwaveview/GlowPadView;)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    .line 1386
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView$GlowpadExploreByTouchHelper;->this$0:Lcom/android/incallui/widget/multiwaveview/GlowPadView;

    invoke-static {v2}, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->-get4(Lcom/android/incallui/widget/multiwaveview/GlowPadView;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 1387
    iget-object v2, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView$GlowpadExploreByTouchHelper;->this$0:Lcom/android/incallui/widget/multiwaveview/GlowPadView;

    invoke-static {v2}, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->-get4(Lcom/android/incallui/widget/multiwaveview/GlowPadView;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/widget/multiwaveview/TargetDrawable;

    .line 1388
    .local v1, "target":Lcom/android/incallui/widget/multiwaveview/TargetDrawable;
    invoke-virtual {v1}, Lcom/android/incallui/widget/multiwaveview/TargetDrawable;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/android/incallui/widget/multiwaveview/TargetDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    float-to-int v3, p1

    float-to-int v4, p2

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Rect;->contains(II)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1389
    return v0

    .line 1386
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1392
    .end local v1    # "target":Lcom/android/incallui/widget/multiwaveview/TargetDrawable;
    :cond_1
    const/high16 v2, -0x80000000

    return v2

    .line 1394
    .end local v0    # "i":I
    :cond_2
    const/4 v2, -0x1

    return v2
.end method

.method protected getVisibleVirtualViews(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1400
    .local p1, "virtualViewIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    iget-object v1, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView$GlowpadExploreByTouchHelper;->this$0:Lcom/android/incallui/widget/multiwaveview/GlowPadView;

    invoke-static {v1}, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->-get0(Lcom/android/incallui/widget/multiwaveview/GlowPadView;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 1403
    iget-object v1, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView$GlowpadExploreByTouchHelper;->this$0:Lcom/android/incallui/widget/multiwaveview/GlowPadView;

    invoke-static {v1}, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->-get4(Lcom/android/incallui/widget/multiwaveview/GlowPadView;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 1404
    iget-object v1, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView$GlowpadExploreByTouchHelper;->this$0:Lcom/android/incallui/widget/multiwaveview/GlowPadView;

    invoke-static {v1}, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->-get4(Lcom/android/incallui/widget/multiwaveview/GlowPadView;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/widget/multiwaveview/TargetDrawable;

    invoke-virtual {v1}, Lcom/android/incallui/widget/multiwaveview/TargetDrawable;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1405
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1403
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1399
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2
    .param p1, "host"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 1420
    iget-object v0, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView$GlowpadExploreByTouchHelper;->this$0:Lcom/android/incallui/widget/multiwaveview/GlowPadView;

    if-ne p1, v0, :cond_0

    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v0

    .line 1421
    const/16 v1, 0x800

    .line 1420
    if-ne v0, v1, :cond_0

    .line 1422
    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityEvent;->setContentChangeTypes(I)V

    .line 1424
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/support/v4/widget/ExploreByTouchHelper;->onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 1419
    return-void
.end method

.method protected onPerformActionForVirtualView(IILandroid/os/Bundle;)Z
    .locals 2
    .param p1, "virtualViewId"    # I
    .param p2, "action"    # I
    .param p3, "arguments"    # Landroid/os/Bundle;

    .prologue
    const/4 v1, 0x0

    .line 1463
    const/16 v0, 0x10

    if-ne p2, v0, :cond_0

    .line 1464
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView$GlowpadExploreByTouchHelper;->this$0:Lcom/android/incallui/widget/multiwaveview/GlowPadView;

    invoke-static {v0}, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->-get4(Lcom/android/incallui/widget/multiwaveview/GlowPadView;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 1465
    iget-object v0, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView$GlowpadExploreByTouchHelper;->this$0:Lcom/android/incallui/widget/multiwaveview/GlowPadView;

    invoke-static {v0, p1}, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->-wrap3(Lcom/android/incallui/widget/multiwaveview/GlowPadView;I)V

    .line 1466
    const/4 v0, 0x1

    return v0

    .line 1469
    :cond_0
    return v1
.end method

.method protected onPopulateEventForVirtualView(ILandroid/view/accessibility/AccessibilityEvent;)V
    .locals 1
    .param p1, "virtualViewId"    # I
    .param p2, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 1413
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView$GlowpadExploreByTouchHelper;->this$0:Lcom/android/incallui/widget/multiwaveview/GlowPadView;

    invoke-static {v0}, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->-get3(Lcom/android/incallui/widget/multiwaveview/GlowPadView;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 1414
    iget-object v0, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView$GlowpadExploreByTouchHelper;->this$0:Lcom/android/incallui/widget/multiwaveview/GlowPadView;

    invoke-static {v0}, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->-get3(Lcom/android/incallui/widget/multiwaveview/GlowPadView;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityEvent;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1412
    :cond_0
    return-void
.end method

.method public onPopulateNodeForHost(Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V
    .locals 4
    .param p1, "node"    # Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;

    .prologue
    const/4 v3, 0x0

    .line 1429
    iget-object v0, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView$GlowpadExploreByTouchHelper;->this$0:Lcom/android/incallui/widget/multiwaveview/GlowPadView;

    invoke-static {v0}, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->-get0(Lcom/android/incallui/widget/multiwaveview/GlowPadView;)I

    move-result v0

    if-nez v0, :cond_0

    .line 1430
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setClickable(Z)V

    .line 1431
    const/16 v0, 0x10

    invoke-virtual {p1, v0}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->addAction(I)V

    .line 1433
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView$GlowpadExploreByTouchHelper;->mBounds:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView$GlowpadExploreByTouchHelper;->this$0:Lcom/android/incallui/widget/multiwaveview/GlowPadView;

    invoke-virtual {v1}, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView$GlowpadExploreByTouchHelper;->this$0:Lcom/android/incallui/widget/multiwaveview/GlowPadView;

    invoke-virtual {v2}, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->getHeight()I

    move-result v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 1434
    iget-object v0, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView$GlowpadExploreByTouchHelper;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setBoundsInParent(Landroid/graphics/Rect;)V

    .line 1428
    return-void
.end method

.method protected onPopulateNodeForVirtualView(ILandroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V
    .locals 2
    .param p1, "virtualViewId"    # I
    .param p2, "node"    # Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;

    .prologue
    .line 1451
    iget-object v1, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView$GlowpadExploreByTouchHelper;->this$0:Lcom/android/incallui/widget/multiwaveview/GlowPadView;

    invoke-static {v1}, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->-get4(Lcom/android/incallui/widget/multiwaveview/GlowPadView;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge p1, v1, :cond_0

    .line 1452
    iget-object v1, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView$GlowpadExploreByTouchHelper;->this$0:Lcom/android/incallui/widget/multiwaveview/GlowPadView;

    invoke-static {v1}, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->-get4(Lcom/android/incallui/widget/multiwaveview/GlowPadView;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/widget/multiwaveview/TargetDrawable;

    .line 1453
    .local v0, "target":Lcom/android/incallui/widget/multiwaveview/TargetDrawable;
    invoke-virtual {v0}, Lcom/android/incallui/widget/multiwaveview/TargetDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setBoundsInParent(Landroid/graphics/Rect;)V

    .line 1454
    const/4 v1, 0x1

    invoke-virtual {p2, v1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setClickable(Z)V

    .line 1455
    const/16 v1, 0x10

    invoke-virtual {p2, v1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->addAction(I)V

    .line 1456
    iget-object v1, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView$GlowpadExploreByTouchHelper;->this$0:Lcom/android/incallui/widget/multiwaveview/GlowPadView;

    invoke-static {v1, p1}, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->-wrap1(Lcom/android/incallui/widget/multiwaveview/GlowPadView;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1450
    .end local v0    # "target":Lcom/android/incallui/widget/multiwaveview/TargetDrawable;
    :cond_0
    return-void
.end method

.method public performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 3
    .param p1, "host"    # Landroid/view/View;
    .param p2, "action"    # I
    .param p3, "args"    # Landroid/os/Bundle;

    .prologue
    .line 1439
    iget-object v0, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView$GlowpadExploreByTouchHelper;->this$0:Lcom/android/incallui/widget/multiwaveview/GlowPadView;

    invoke-static {v0}, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->-get0(Lcom/android/incallui/widget/multiwaveview/GlowPadView;)I

    move-result v0

    if-nez v0, :cond_0

    .line 1441
    iget-object v0, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView$GlowpadExploreByTouchHelper;->this$0:Lcom/android/incallui/widget/multiwaveview/GlowPadView;

    iget-object v1, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView$GlowpadExploreByTouchHelper;->this$0:Lcom/android/incallui/widget/multiwaveview/GlowPadView;

    invoke-static {v1}, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->-get5(Lcom/android/incallui/widget/multiwaveview/GlowPadView;)F

    move-result v1

    iget-object v2, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView$GlowpadExploreByTouchHelper;->this$0:Lcom/android/incallui/widget/multiwaveview/GlowPadView;

    invoke-static {v2}, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->-get6(Lcom/android/incallui/widget/multiwaveview/GlowPadView;)F

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->-wrap0(Lcom/android/incallui/widget/multiwaveview/GlowPadView;FF)Z

    .line 1442
    invoke-virtual {p0}, Lcom/android/incallui/widget/multiwaveview/GlowPadView$GlowpadExploreByTouchHelper;->invalidateRoot()V

    .line 1443
    const/4 v0, 0x1

    return v0

    .line 1445
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/widget/ExploreByTouchHelper;->performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result v0

    return v0
.end method
