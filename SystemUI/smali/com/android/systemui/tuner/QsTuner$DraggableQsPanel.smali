.class Lcom/android/systemui/tuner/QsTuner$DraggableQsPanel;
.super Lcom/android/systemui/qs/QSPanel;
.source "QsTuner.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/tuner/QsTuner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DraggableQsPanel"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/tuner/QsTuner;


# direct methods
.method public constructor <init>(Lcom/android/systemui/tuner/QsTuner;Landroid/content/Context;)V
    .locals 2
    .param p1, "this$0"    # Lcom/android/systemui/tuner/QsTuner;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 540
    iput-object p1, p0, Lcom/android/systemui/tuner/QsTuner$DraggableQsPanel;->this$0:Lcom/android/systemui/tuner/QsTuner;

    .line 541
    invoke-direct {p0, p2}, Lcom/android/systemui/qs/QSPanel;-><init>(Landroid/content/Context;)V

    .line 542
    iget-object v0, p0, Lcom/android/systemui/tuner/QsTuner$DraggableQsPanel;->mBrightnessView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 540
    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 7
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 547
    invoke-super {p0, p1, p2}, Lcom/android/systemui/qs/QSPanel;->onMeasure(II)V

    .line 548
    iget-object v3, p0, Lcom/android/systemui/tuner/QsTuner$DraggableQsPanel;->mRecords:Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "r$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/qs/QSPanel$TileRecord;

    .line 549
    .local v1, "r":Lcom/android/systemui/qs/QSPanel$TileRecord;
    new-instance v4, Lcom/android/systemui/tuner/QsTuner$DragHelper;

    iget-object v5, p0, Lcom/android/systemui/tuner/QsTuner$DraggableQsPanel;->this$0:Lcom/android/systemui/tuner/QsTuner;

    iget-object v6, v1, Lcom/android/systemui/qs/QSPanel$TileRecord;->tileView:Lcom/android/systemui/qs/QSTileView;

    iget-object v3, v1, Lcom/android/systemui/qs/QSPanel$TileRecord;->tile:Lcom/android/systemui/qs/QSTile;

    check-cast v3, Lcom/android/systemui/tuner/QsTuner$DraggableTile;

    invoke-direct {v4, v5, v6, v3}, Lcom/android/systemui/tuner/QsTuner$DragHelper;-><init>(Lcom/android/systemui/tuner/QsTuner;Landroid/view/View;Lcom/android/systemui/tuner/QsTuner$DropListener;)V

    .line 550
    iget-object v3, v1, Lcom/android/systemui/qs/QSPanel$TileRecord;->tileView:Lcom/android/systemui/qs/QSTileView;

    iget-object v4, v1, Lcom/android/systemui/qs/QSPanel$TileRecord;->tile:Lcom/android/systemui/qs/QSTile;

    invoke-virtual {v3, v4}, Lcom/android/systemui/qs/QSTileView;->setTag(Ljava/lang/Object;)V

    .line 551
    iget-object v3, v1, Lcom/android/systemui/qs/QSPanel$TileRecord;->tileView:Lcom/android/systemui/qs/QSTileView;

    invoke-virtual {v3, p0}, Lcom/android/systemui/qs/QSTileView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 553
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v3, v1, Lcom/android/systemui/qs/QSPanel$TileRecord;->tileView:Lcom/android/systemui/qs/QSTileView;

    invoke-virtual {v3}, Lcom/android/systemui/qs/QSTileView;->getChildCount()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 554
    iget-object v3, v1, Lcom/android/systemui/qs/QSPanel$TileRecord;->tileView:Lcom/android/systemui/qs/QSTileView;

    invoke-virtual {v3, v0}, Lcom/android/systemui/qs/QSTileView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setClickable(Z)V

    .line 553
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 546
    .end local v0    # "i":I
    .end local v1    # "r":Lcom/android/systemui/qs/QSPanel$TileRecord;
    :cond_1
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v4, 0x0

    .line 561
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 569
    return v4

    .line 563
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/tuner/QsTuner$DraggableTile;

    invoke-static {v2}, Lcom/android/systemui/tuner/QsTuner$DraggableTile;->-get0(Lcom/android/systemui/tuner/QsTuner$DraggableTile;)Ljava/lang/String;

    move-result-object v1

    .line 564
    .local v1, "tileSpec":Ljava/lang/String;
    invoke-static {v1, v1}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v0

    .line 565
    .local v0, "data":Landroid/content/ClipData;
    new-instance v2, Landroid/view/View$DragShadowBuilder;

    invoke-direct {v2, p1}, Landroid/view/View$DragShadowBuilder;-><init>(Landroid/view/View;)V

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v2, v3, v4}, Landroid/view/View;->startDrag(Landroid/content/ClipData;Landroid/view/View$DragShadowBuilder;Ljava/lang/Object;I)Z

    .line 566
    iget-object v2, p0, Lcom/android/systemui/tuner/QsTuner$DraggableQsPanel;->this$0:Lcom/android/systemui/tuner/QsTuner;

    invoke-virtual {v2}, Lcom/android/systemui/tuner/QsTuner;->onStartDrag()V

    .line 567
    const/4 v2, 0x1

    return v2

    .line 561
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
