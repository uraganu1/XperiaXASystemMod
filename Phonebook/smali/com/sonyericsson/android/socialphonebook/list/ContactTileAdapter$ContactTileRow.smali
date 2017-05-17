.class Lcom/sonyericsson/android/socialphonebook/list/ContactTileAdapter$ContactTileRow;
.super Landroid/widget/FrameLayout;
.source "ContactTileAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/socialphonebook/list/ContactTileAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ContactTileRow"
.end annotation


# instance fields
.field private mItemViewType:I

.field private mLayoutResId:I

.field final synthetic this$0:Lcom/sonyericsson/android/socialphonebook/list/ContactTileAdapter;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/android/socialphonebook/list/ContactTileAdapter;Landroid/content/Context;I)V
    .locals 1
    .param p1, "this$0"    # Lcom/sonyericsson/android/socialphonebook/list/ContactTileAdapter;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "itemViewType"    # I

    .prologue
    .line 472
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/list/ContactTileAdapter$ContactTileRow;->this$0:Lcom/sonyericsson/android/socialphonebook/list/ContactTileAdapter;

    .line 473
    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 474
    iput p3, p0, Lcom/sonyericsson/android/socialphonebook/list/ContactTileAdapter$ContactTileRow;->mItemViewType:I

    .line 475
    iget v0, p0, Lcom/sonyericsson/android/socialphonebook/list/ContactTileAdapter$ContactTileRow;->mItemViewType:I

    invoke-static {p1, v0}, Lcom/sonyericsson/android/socialphonebook/list/ContactTileAdapter;->-wrap0(Lcom/sonyericsson/android/socialphonebook/list/ContactTileAdapter;I)I

    move-result v0

    iput v0, p0, Lcom/sonyericsson/android/socialphonebook/list/ContactTileAdapter$ContactTileRow;->mLayoutResId:I

    .line 472
    return-void
.end method

.method private addTileFromEntry(Lcom/sonyericsson/android/socialphonebook/list/ContactTileAdapter$ContactEntry;II)V
    .locals 11
    .param p1, "entry"    # Lcom/sonyericsson/android/socialphonebook/list/ContactTileAdapter$ContactEntry;
    .param p2, "childIndex"    # I
    .param p3, "rowIndex"    # I

    .prologue
    const/4 v10, 0x1

    const/4 v9, -0x2

    const/4 v8, 0x0

    const/4 v6, 0x0

    .line 495
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/list/ContactTileAdapter$ContactTileRow;->getChildCount()I

    move-result v5

    if-gt v5, p2, :cond_2

    .line 496
    iget-object v5, p0, Lcom/sonyericsson/android/socialphonebook/list/ContactTileAdapter$ContactTileRow;->mContext:Landroid/content/Context;

    iget v7, p0, Lcom/sonyericsson/android/socialphonebook/list/ContactTileAdapter$ContactTileRow;->mLayoutResId:I

    invoke-static {v5, v7, v8}, Lcom/sonyericsson/android/socialphonebook/list/ContactTileAdapter$ContactTileRow;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/android/socialphonebook/list/ContactTileView;

    .line 499
    .local v1, "contactTile":Lcom/sonyericsson/android/socialphonebook/list/ContactTileView;
    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v4, v9, v9}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 502
    .local v4, "params":Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {v1, v4}, Lcom/sonyericsson/android/socialphonebook/list/ContactTileView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 504
    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/socialphonebook/list/ContactTileAdapter$ContactTileRow;->addView(Landroid/view/View;)V

    .line 508
    .end local v4    # "params":Landroid/widget/FrameLayout$LayoutParams;
    :goto_0
    invoke-virtual {v1, p1}, Lcom/sonyericsson/android/socialphonebook/list/ContactTileView;->loadFromContact(Lcom/sonyericsson/android/socialphonebook/list/ContactTileAdapter$ContactEntry;)V

    .line 509
    const v5, 0x7f0e00c7

    invoke-virtual {v1, v5}, Lcom/sonyericsson/android/socialphonebook/list/ContactTileView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 510
    .local v3, "deleteButton":Landroid/view/View;
    if-eqz v3, :cond_1

    iget-object v5, p0, Lcom/sonyericsson/android/socialphonebook/list/ContactTileAdapter$ContactTileRow;->this$0:Lcom/sonyericsson/android/socialphonebook/list/ContactTileAdapter;

    invoke-static {v5}, Lcom/sonyericsson/android/socialphonebook/list/ContactTileAdapter;->-get1(Lcom/sonyericsson/android/socialphonebook/list/ContactTileAdapter;)Ljava/util/ArrayList;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 513
    iget-object v5, p0, Lcom/sonyericsson/android/socialphonebook/list/ContactTileAdapter$ContactTileRow;->this$0:Lcom/sonyericsson/android/socialphonebook/list/ContactTileAdapter;

    invoke-static {v5}, Lcom/sonyericsson/android/socialphonebook/list/ContactTileAdapter;->-get0(Lcom/sonyericsson/android/socialphonebook/list/ContactTileAdapter;)I

    move-result v5

    mul-int/2addr v5, p3

    add-int/2addr v5, p2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 514
    iget-object v5, p0, Lcom/sonyericsson/android/socialphonebook/list/ContactTileAdapter$ContactTileRow;->this$0:Lcom/sonyericsson/android/socialphonebook/list/ContactTileAdapter;

    invoke-static {v5}, Lcom/sonyericsson/android/socialphonebook/list/ContactTileAdapter;->-get3(Lcom/sonyericsson/android/socialphonebook/list/ContactTileAdapter;)Landroid/view/View$OnClickListener;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 516
    const-string/jumbo v0, ""

    .line 517
    .local v0, "contactName":Ljava/lang/String;
    if-eqz p1, :cond_0

    iget-object v5, p1, Lcom/sonyericsson/android/socialphonebook/list/ContactTileAdapter$ContactEntry;->name:Ljava/lang/String;

    if-eqz v5, :cond_0

    .line 518
    iget-object v0, p1, Lcom/sonyericsson/android/socialphonebook/list/ContactTileAdapter$ContactEntry;->name:Ljava/lang/String;

    .line 520
    :cond_0
    iget-object v5, p0, Lcom/sonyericsson/android/socialphonebook/list/ContactTileAdapter$ContactTileRow;->mContext:Landroid/content/Context;

    new-array v7, v10, [Ljava/lang/Object;

    .line 522
    aput-object v0, v7, v6

    .line 521
    const v8, 0x7f0901b1

    .line 520
    invoke-virtual {v5, v8, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 524
    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 525
    const v5, 0x7f0e00c6

    invoke-virtual {v1, v5}, Lcom/sonyericsson/android/socialphonebook/list/ContactTileView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 526
    .local v2, "contactTileView":Landroid/view/View;
    invoke-virtual {v2, v10}, Landroid/view/View;->setEnabled(Z)V

    .line 527
    invoke-virtual {v2, v6}, Landroid/view/View;->setClickable(Z)V

    .line 528
    invoke-virtual {v2, v6}, Landroid/view/View;->setFocusable(Z)V

    .line 531
    .end local v0    # "contactName":Ljava/lang/String;
    .end local v2    # "contactTileView":Landroid/view/View;
    :cond_1
    iget v5, p0, Lcom/sonyericsson/android/socialphonebook/list/ContactTileAdapter$ContactTileRow;->mItemViewType:I

    packed-switch v5, :pswitch_data_0

    .line 492
    :goto_1
    :pswitch_0
    return-void

    .line 506
    .end local v1    # "contactTile":Lcom/sonyericsson/android/socialphonebook/list/ContactTileView;
    .end local v3    # "deleteButton":Landroid/view/View;
    :cond_2
    invoke-virtual {p0, p2}, Lcom/sonyericsson/android/socialphonebook/list/ContactTileAdapter$ContactTileRow;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/android/socialphonebook/list/ContactTileView;

    .restart local v1    # "contactTile":Lcom/sonyericsson/android/socialphonebook/list/ContactTileView;
    goto :goto_0

    .line 535
    .restart local v3    # "deleteButton":Landroid/view/View;
    :pswitch_1
    iget-object v5, p0, Lcom/sonyericsson/android/socialphonebook/list/ContactTileAdapter$ContactTileRow;->this$0:Lcom/sonyericsson/android/socialphonebook/list/ContactTileAdapter;

    invoke-static {v5}, Lcom/sonyericsson/android/socialphonebook/list/ContactTileAdapter;->-get2(Lcom/sonyericsson/android/socialphonebook/list/ContactTileAdapter;)I

    move-result v7

    .line 536
    iget-object v5, p0, Lcom/sonyericsson/android/socialphonebook/list/ContactTileAdapter$ContactTileRow;->this$0:Lcom/sonyericsson/android/socialphonebook/list/ContactTileAdapter;

    invoke-static {v5}, Lcom/sonyericsson/android/socialphonebook/list/ContactTileAdapter;->-get0(Lcom/sonyericsson/android/socialphonebook/list/ContactTileAdapter;)I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    if-lt p2, v5, :cond_3

    move v5, v6

    .line 535
    :goto_2
    invoke-virtual {v1, v6, v7, v5, v6}, Lcom/sonyericsson/android/socialphonebook/list/ContactTileView;->setPadding(IIII)V

    goto :goto_1

    .line 536
    :cond_3
    iget-object v5, p0, Lcom/sonyericsson/android/socialphonebook/list/ContactTileAdapter$ContactTileRow;->this$0:Lcom/sonyericsson/android/socialphonebook/list/ContactTileAdapter;

    invoke-static {v5}, Lcom/sonyericsson/android/socialphonebook/list/ContactTileAdapter;->-get2(Lcom/sonyericsson/android/socialphonebook/list/ContactTileAdapter;)I

    move-result v5

    mul-int/lit8 v5, v5, 0x2

    goto :goto_2

    .line 531
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private onLayoutForTiles(IIII)V
    .locals 8
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .prologue
    .line 557
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/list/ContactTileAdapter$ContactTileRow;->getChildCount()I

    move-result v3

    .line 560
    .local v3, "count":I
    const/4 v1, 0x0

    .line 561
    .local v1, "childLeft":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v3, :cond_0

    .line 562
    invoke-virtual {p0, v4}, Lcom/sonyericsson/android/socialphonebook/list/ContactTileAdapter$ContactTileRow;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 565
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    .line 566
    .local v2, "childWidth":I
    add-int v5, v1, v2

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    const/4 v7, 0x0

    invoke-virtual {v0, v1, v7, v5, v6}, Landroid/view/View;->layout(IIII)V

    .line 567
    add-int/2addr v1, v2

    .line 561
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 556
    .end local v0    # "child":Landroid/view/View;
    .end local v2    # "childWidth":I
    :cond_0
    return-void
.end method

.method private onMeasureForTiles(II)V
    .locals 13
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/high16 v12, 0x40000000    # 2.0f

    const/4 v10, 0x0

    .line 585
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v8

    .line 587
    .local v8, "width":I
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/list/ContactTileAdapter$ContactTileRow;->getChildCount()I

    move-result v1

    .line 588
    .local v1, "childCount":I
    if-nez v1, :cond_0

    .line 590
    invoke-virtual {p0, v8, v10}, Lcom/sonyericsson/android/socialphonebook/list/ContactTileAdapter$ContactTileRow;->setMeasuredDimension(II)V

    .line 591
    return-void

    .line 605
    :cond_0
    iget-object v9, p0, Lcom/sonyericsson/android/socialphonebook/list/ContactTileAdapter$ContactTileRow;->this$0:Lcom/sonyericsson/android/socialphonebook/list/ContactTileAdapter;

    invoke-static {v9}, Lcom/sonyericsson/android/socialphonebook/list/ContactTileAdapter;->-get0(Lcom/sonyericsson/android/socialphonebook/list/ContactTileAdapter;)I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    iget-object v11, p0, Lcom/sonyericsson/android/socialphonebook/list/ContactTileAdapter$ContactTileRow;->this$0:Lcom/sonyericsson/android/socialphonebook/list/ContactTileAdapter;

    invoke-static {v11}, Lcom/sonyericsson/android/socialphonebook/list/ContactTileAdapter;->-get2(Lcom/sonyericsson/android/socialphonebook/list/ContactTileAdapter;)I

    move-result v11

    mul-int/2addr v9, v11

    mul-int/lit8 v7, v9, 0x2

    .line 609
    .local v7, "totalPaddingsInPixels":I
    sub-int v9, v8, v7

    iget-object v11, p0, Lcom/sonyericsson/android/socialphonebook/list/ContactTileAdapter$ContactTileRow;->this$0:Lcom/sonyericsson/android/socialphonebook/list/ContactTileAdapter;

    invoke-static {v11}, Lcom/sonyericsson/android/socialphonebook/list/ContactTileAdapter;->-get0(Lcom/sonyericsson/android/socialphonebook/list/ContactTileAdapter;)I

    move-result v11

    div-int v5, v9, v11

    .line 610
    .local v5, "imageSize":I
    iget-object v9, p0, Lcom/sonyericsson/android/socialphonebook/list/ContactTileAdapter$ContactTileRow;->this$0:Lcom/sonyericsson/android/socialphonebook/list/ContactTileAdapter;

    invoke-static {v9}, Lcom/sonyericsson/android/socialphonebook/list/ContactTileAdapter;->-get0(Lcom/sonyericsson/android/socialphonebook/list/ContactTileAdapter;)I

    move-result v9

    mul-int/2addr v9, v5

    sub-int v9, v8, v9

    sub-int v6, v9, v7

    .line 612
    .local v6, "remainder":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v1, :cond_2

    .line 613
    invoke-virtual {p0, v4}, Lcom/sonyericsson/android/socialphonebook/list/ContactTileAdapter$ContactTileRow;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 614
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getPaddingRight()I

    move-result v9

    add-int v11, v5, v9

    .line 616
    if-ge v4, v6, :cond_1

    const/4 v9, 0x1

    .line 614
    :goto_1
    add-int v3, v11, v9

    .line 617
    .local v3, "childWidth":I
    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v9

    add-int v2, v5, v9

    .line 619
    .local v2, "childHeight":I
    invoke-static {v3, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    .line 620
    invoke-static {v2, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v11

    .line 618
    invoke-virtual {v0, v9, v11}, Landroid/view/View;->measure(II)V

    .line 612
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .end local v2    # "childHeight":I
    .end local v3    # "childWidth":I
    :cond_1
    move v9, v10

    .line 616
    goto :goto_1

    .line 623
    .end local v0    # "child":Landroid/view/View;
    :cond_2
    invoke-virtual {p0, v10}, Lcom/sonyericsson/android/socialphonebook/list/ContactTileAdapter$ContactTileRow;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->getPaddingTop()I

    move-result v9

    add-int/2addr v9, v5

    invoke-virtual {p0, v8, v9}, Lcom/sonyericsson/android/socialphonebook/list/ContactTileAdapter$ContactTileRow;->setMeasuredDimension(II)V

    .line 584
    return-void
.end method


# virtual methods
.method public configureRow(Ljava/util/ArrayList;I)V
    .locals 5
    .param p2, "rowIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonyericsson/android/socialphonebook/list/ContactTileAdapter$ContactEntry;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 482
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonyericsson/android/socialphonebook/list/ContactTileAdapter$ContactEntry;>;"
    iget v3, p0, Lcom/sonyericsson/android/socialphonebook/list/ContactTileAdapter$ContactTileRow;->mItemViewType:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    const/4 v0, 0x1

    .line 485
    .local v0, "columnCount":I
    :goto_0
    const/4 v1, 0x0

    .local v1, "columnCounter":I
    :goto_1
    if-ge v1, v0, :cond_2

    .line 487
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonyericsson/android/socialphonebook/list/ContactTileAdapter$ContactEntry;

    .line 488
    :goto_2
    invoke-direct {p0, v2, v1, p2}, Lcom/sonyericsson/android/socialphonebook/list/ContactTileAdapter$ContactTileRow;->addTileFromEntry(Lcom/sonyericsson/android/socialphonebook/list/ContactTileAdapter$ContactEntry;II)V

    .line 485
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 482
    .end local v0    # "columnCount":I
    .end local v1    # "columnCounter":I
    :cond_0
    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/list/ContactTileAdapter$ContactTileRow;->this$0:Lcom/sonyericsson/android/socialphonebook/list/ContactTileAdapter;

    invoke-static {v3}, Lcom/sonyericsson/android/socialphonebook/list/ContactTileAdapter;->-get0(Lcom/sonyericsson/android/socialphonebook/list/ContactTileAdapter;)I

    move-result v0

    .restart local v0    # "columnCount":I
    goto :goto_0

    .line 487
    .restart local v1    # "columnCounter":I
    :cond_1
    const/4 v2, 0x0

    .local v2, "entry":Lcom/sonyericsson/android/socialphonebook/list/ContactTileAdapter$ContactEntry;
    goto :goto_2

    .line 481
    .end local v2    # "entry":Lcom/sonyericsson/android/socialphonebook/list/ContactTileAdapter$ContactEntry;
    :cond_2
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 1
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 545
    iget v0, p0, Lcom/sonyericsson/android/socialphonebook/list/ContactTileAdapter$ContactTileRow;->mItemViewType:I

    packed-switch v0, :pswitch_data_0

    .line 551
    :pswitch_0
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 552
    return-void

    .line 548
    :pswitch_1
    invoke-direct {p0, p2, p3, p4, p5}, Lcom/sonyericsson/android/socialphonebook/list/ContactTileAdapter$ContactTileRow;->onLayoutForTiles(IIII)V

    .line 549
    return-void

    .line 545
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onMeasure(II)V
    .locals 1
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 573
    iget v0, p0, Lcom/sonyericsson/android/socialphonebook/list/ContactTileAdapter$ContactTileRow;->mItemViewType:I

    packed-switch v0, :pswitch_data_0

    .line 579
    :pswitch_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 580
    return-void

    .line 576
    :pswitch_1
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/android/socialphonebook/list/ContactTileAdapter$ContactTileRow;->onMeasureForTiles(II)V

    .line 577
    return-void

    .line 573
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public sendAccessibilityEvent(I)V
    .locals 0
    .param p1, "eventType"    # I

    .prologue
    .line 627
    return-void
.end method
