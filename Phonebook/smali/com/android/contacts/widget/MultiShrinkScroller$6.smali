.class Lcom/android/contacts/widget/MultiShrinkScroller$6;
.super Ljava/lang/Object;
.source "MultiShrinkScroller.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/widget/MultiShrinkScroller;->initialize(Lcom/android/contacts/widget/MultiShrinkScroller$MultiShrinkScrollerListener;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/widget/MultiShrinkScroller;


# direct methods
.method constructor <init>(Lcom/android/contacts/widget/MultiShrinkScroller;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/contacts/widget/MultiShrinkScroller;

    .prologue
    .line 347
    iput-object p1, p0, Lcom/android/contacts/widget/MultiShrinkScroller$6;->this$0:Lcom/android/contacts/widget/MultiShrinkScroller;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/4 v7, 0x2

    .line 350
    iget-object v4, p0, Lcom/android/contacts/widget/MultiShrinkScroller$6;->this$0:Lcom/android/contacts/widget/MultiShrinkScroller;

    invoke-static {v4}, Lcom/android/contacts/widget/MultiShrinkScroller;->-get1(Lcom/android/contacts/widget/MultiShrinkScroller;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 352
    iget-object v4, p0, Lcom/android/contacts/widget/MultiShrinkScroller$6;->this$0:Lcom/android/contacts/widget/MultiShrinkScroller;

    iget-object v5, p0, Lcom/android/contacts/widget/MultiShrinkScroller$6;->this$0:Lcom/android/contacts/widget/MultiShrinkScroller;

    invoke-static {v5}, Lcom/android/contacts/widget/MultiShrinkScroller;->-get8(Lcom/android/contacts/widget/MultiShrinkScroller;)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v5

    invoke-static {v4, v5}, Lcom/android/contacts/widget/MultiShrinkScroller;->-set2(Lcom/android/contacts/widget/MultiShrinkScroller;I)I

    .line 353
    iget-object v4, p0, Lcom/android/contacts/widget/MultiShrinkScroller$6;->this$0:Lcom/android/contacts/widget/MultiShrinkScroller;

    iget-object v5, p0, Lcom/android/contacts/widget/MultiShrinkScroller$6;->this$0:Lcom/android/contacts/widget/MultiShrinkScroller;

    invoke-static {v5}, Lcom/android/contacts/widget/MultiShrinkScroller;->-get4(Lcom/android/contacts/widget/MultiShrinkScroller;)I

    move-result v5

    int-to-float v5, v5

    .line 354
    const/high16 v6, 0x3f000000    # 0.5f

    .line 353
    mul-float/2addr v5, v6

    float-to-int v5, v5

    invoke-static {v4, v5}, Lcom/android/contacts/widget/MultiShrinkScroller;->-set0(Lcom/android/contacts/widget/MultiShrinkScroller;I)I

    .line 356
    :cond_0
    iget-object v4, p0, Lcom/android/contacts/widget/MultiShrinkScroller$6;->this$0:Lcom/android/contacts/widget/MultiShrinkScroller;

    invoke-virtual {v4}, Lcom/android/contacts/widget/MultiShrinkScroller;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v4, v4, Landroid/content/res/Configuration;->orientation:I

    if-ne v4, v7, :cond_1

    const/4 v0, 0x1

    .line 358
    .local v0, "isLandscape":Z
    :goto_0
    iget-object v5, p0, Lcom/android/contacts/widget/MultiShrinkScroller$6;->this$0:Lcom/android/contacts/widget/MultiShrinkScroller;

    if-eqz v0, :cond_2

    iget-object v4, p0, Lcom/android/contacts/widget/MultiShrinkScroller$6;->this$0:Lcom/android/contacts/widget/MultiShrinkScroller;

    invoke-virtual {v4}, Lcom/android/contacts/widget/MultiShrinkScroller;->getHeight()I

    move-result v4

    :goto_1
    invoke-static {v5, v4}, Lcom/android/contacts/widget/MultiShrinkScroller;->-set5(Lcom/android/contacts/widget/MultiShrinkScroller;I)I

    .line 360
    iget-object v4, p0, Lcom/android/contacts/widget/MultiShrinkScroller$6;->this$0:Lcom/android/contacts/widget/MultiShrinkScroller;

    iget-object v5, p0, Lcom/android/contacts/widget/MultiShrinkScroller$6;->this$0:Lcom/android/contacts/widget/MultiShrinkScroller;

    invoke-static {v5}, Lcom/android/contacts/widget/MultiShrinkScroller;->-wrap0(Lcom/android/contacts/widget/MultiShrinkScroller;)I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/android/contacts/widget/MultiShrinkScroller;->setHeaderHeight(I)V

    .line 361
    iget-object v4, p0, Lcom/android/contacts/widget/MultiShrinkScroller$6;->this$0:Lcom/android/contacts/widget/MultiShrinkScroller;

    iget-object v5, p0, Lcom/android/contacts/widget/MultiShrinkScroller$6;->this$0:Lcom/android/contacts/widget/MultiShrinkScroller;

    invoke-static {v5}, Lcom/android/contacts/widget/MultiShrinkScroller;->-get7(Lcom/android/contacts/widget/MultiShrinkScroller;)Landroid/widget/LinearLayout;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v5

    .line 362
    iget-object v6, p0, Lcom/android/contacts/widget/MultiShrinkScroller$6;->this$0:Lcom/android/contacts/widget/MultiShrinkScroller;

    invoke-static {v6}, Lcom/android/contacts/widget/MultiShrinkScroller;->-get0(Lcom/android/contacts/widget/MultiShrinkScroller;)Landroid/widget/TextView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/TextView;->getHeight()I

    move-result v6

    .line 361
    sub-int/2addr v5, v6

    .line 362
    iget-object v6, p0, Lcom/android/contacts/widget/MultiShrinkScroller$6;->this$0:Lcom/android/contacts/widget/MultiShrinkScroller;

    invoke-static {v6}, Lcom/android/contacts/widget/MultiShrinkScroller;->-get6(Lcom/android/contacts/widget/MultiShrinkScroller;)I

    move-result v6

    .line 361
    sub-int/2addr v5, v6

    invoke-static {v4, v5}, Lcom/android/contacts/widget/MultiShrinkScroller;->-set4(Lcom/android/contacts/widget/MultiShrinkScroller;I)I

    .line 363
    iget-object v4, p0, Lcom/android/contacts/widget/MultiShrinkScroller$6;->this$0:Lcom/android/contacts/widget/MultiShrinkScroller;

    iget-object v5, p0, Lcom/android/contacts/widget/MultiShrinkScroller$6;->this$0:Lcom/android/contacts/widget/MultiShrinkScroller;

    invoke-static {v5}, Lcom/android/contacts/widget/MultiShrinkScroller;->-get2(Lcom/android/contacts/widget/MultiShrinkScroller;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/TextView;->getHeight()I

    move-result v5

    invoke-static {v4, v5}, Lcom/android/contacts/widget/MultiShrinkScroller;->-set3(Lcom/android/contacts/widget/MultiShrinkScroller;I)I

    .line 364
    iget-object v4, p0, Lcom/android/contacts/widget/MultiShrinkScroller$6;->this$0:Lcom/android/contacts/widget/MultiShrinkScroller;

    invoke-static {v4}, Lcom/android/contacts/widget/MultiShrinkScroller;->-get1(Lcom/android/contacts/widget/MultiShrinkScroller;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 365
    iget-object v4, p0, Lcom/android/contacts/widget/MultiShrinkScroller$6;->this$0:Lcom/android/contacts/widget/MultiShrinkScroller;

    iget-object v5, p0, Lcom/android/contacts/widget/MultiShrinkScroller$6;->this$0:Lcom/android/contacts/widget/MultiShrinkScroller;

    invoke-virtual {v5}, Lcom/android/contacts/widget/MultiShrinkScroller;->getHeight()I

    move-result v5

    invoke-static {v4, v5}, Lcom/android/contacts/widget/MultiShrinkScroller;->-set2(Lcom/android/contacts/widget/MultiShrinkScroller;I)I

    .line 366
    iget-object v4, p0, Lcom/android/contacts/widget/MultiShrinkScroller$6;->this$0:Lcom/android/contacts/widget/MultiShrinkScroller;

    iget-object v5, p0, Lcom/android/contacts/widget/MultiShrinkScroller$6;->this$0:Lcom/android/contacts/widget/MultiShrinkScroller;

    invoke-static {v5}, Lcom/android/contacts/widget/MultiShrinkScroller;->-get4(Lcom/android/contacts/widget/MultiShrinkScroller;)I

    move-result v5

    invoke-static {v4, v5}, Lcom/android/contacts/widget/MultiShrinkScroller;->-set6(Lcom/android/contacts/widget/MultiShrinkScroller;I)I

    .line 367
    iget-object v4, p0, Lcom/android/contacts/widget/MultiShrinkScroller$6;->this$0:Lcom/android/contacts/widget/MultiShrinkScroller;

    iget-object v5, p0, Lcom/android/contacts/widget/MultiShrinkScroller$6;->this$0:Lcom/android/contacts/widget/MultiShrinkScroller;

    invoke-static {v5}, Lcom/android/contacts/widget/MultiShrinkScroller;->-get4(Lcom/android/contacts/widget/MultiShrinkScroller;)I

    move-result v5

    invoke-static {v4, v5}, Lcom/android/contacts/widget/MultiShrinkScroller;->-set0(Lcom/android/contacts/widget/MultiShrinkScroller;I)I

    .line 370
    new-instance v2, Landroid/util/TypedValue;

    invoke-direct {v2}, Landroid/util/TypedValue;-><init>()V

    .line 371
    .local v2, "photoRatio":Landroid/util/TypedValue;
    iget-object v4, p0, Lcom/android/contacts/widget/MultiShrinkScroller$6;->this$0:Lcom/android/contacts/widget/MultiShrinkScroller;

    invoke-virtual {v4}, Lcom/android/contacts/widget/MultiShrinkScroller;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0d0231

    .line 372
    const/4 v6, 0x1

    .line 371
    invoke-virtual {v4, v5, v2, v6}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 374
    iget-object v4, p0, Lcom/android/contacts/widget/MultiShrinkScroller$6;->this$0:Lcom/android/contacts/widget/MultiShrinkScroller;

    invoke-static {v4}, Lcom/android/contacts/widget/MultiShrinkScroller;->-get8(Lcom/android/contacts/widget/MultiShrinkScroller;)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 375
    .local v1, "photoLayoutParams":Landroid/view/ViewGroup$LayoutParams;
    iget-object v4, p0, Lcom/android/contacts/widget/MultiShrinkScroller$6;->this$0:Lcom/android/contacts/widget/MultiShrinkScroller;

    invoke-static {v4}, Lcom/android/contacts/widget/MultiShrinkScroller;->-get4(Lcom/android/contacts/widget/MultiShrinkScroller;)I

    move-result v4

    iput v4, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 376
    iget-object v4, p0, Lcom/android/contacts/widget/MultiShrinkScroller$6;->this$0:Lcom/android/contacts/widget/MultiShrinkScroller;

    invoke-static {v4}, Lcom/android/contacts/widget/MultiShrinkScroller;->-get4(Lcom/android/contacts/widget/MultiShrinkScroller;)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v2}, Landroid/util/TypedValue;->getFloat()F

    move-result v5

    mul-float/2addr v4, v5

    float-to-int v4, v4

    iput v4, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 377
    iget-object v4, p0, Lcom/android/contacts/widget/MultiShrinkScroller$6;->this$0:Lcom/android/contacts/widget/MultiShrinkScroller;

    invoke-static {v4}, Lcom/android/contacts/widget/MultiShrinkScroller;->-get8(Lcom/android/contacts/widget/MultiShrinkScroller;)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 381
    iget-object v4, p0, Lcom/android/contacts/widget/MultiShrinkScroller$6;->this$0:Lcom/android/contacts/widget/MultiShrinkScroller;

    invoke-static {v4}, Lcom/android/contacts/widget/MultiShrinkScroller;->-get7(Lcom/android/contacts/widget/MultiShrinkScroller;)Landroid/widget/LinearLayout;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout$LayoutParams;

    .line 382
    .local v3, "titleLayoutParams":Landroid/widget/FrameLayout$LayoutParams;
    iget v4, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 383
    iget v5, v3, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 382
    sub-int/2addr v4, v5

    .line 384
    iget v5, v3, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 382
    sub-int/2addr v4, v5

    iput v4, v3, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 385
    const v4, 0x800053

    iput v4, v3, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 386
    iget-object v4, p0, Lcom/android/contacts/widget/MultiShrinkScroller$6;->this$0:Lcom/android/contacts/widget/MultiShrinkScroller;

    invoke-static {v4}, Lcom/android/contacts/widget/MultiShrinkScroller;->-get7(Lcom/android/contacts/widget/MultiShrinkScroller;)Landroid/widget/LinearLayout;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 393
    .end local v1    # "photoLayoutParams":Landroid/view/ViewGroup$LayoutParams;
    .end local v2    # "photoRatio":Landroid/util/TypedValue;
    .end local v3    # "titleLayoutParams":Landroid/widget/FrameLayout$LayoutParams;
    :goto_2
    iget-object v4, p0, Lcom/android/contacts/widget/MultiShrinkScroller$6;->this$0:Lcom/android/contacts/widget/MultiShrinkScroller;

    invoke-static {v4}, Lcom/android/contacts/widget/MultiShrinkScroller;->-wrap2(Lcom/android/contacts/widget/MultiShrinkScroller;)V

    .line 394
    iget-object v4, p0, Lcom/android/contacts/widget/MultiShrinkScroller$6;->this$0:Lcom/android/contacts/widget/MultiShrinkScroller;

    invoke-static {v4}, Lcom/android/contacts/widget/MultiShrinkScroller;->-wrap5(Lcom/android/contacts/widget/MultiShrinkScroller;)V

    .line 395
    iget-object v4, p0, Lcom/android/contacts/widget/MultiShrinkScroller$6;->this$0:Lcom/android/contacts/widget/MultiShrinkScroller;

    invoke-static {v4}, Lcom/android/contacts/widget/MultiShrinkScroller;->-wrap3(Lcom/android/contacts/widget/MultiShrinkScroller;)V

    .line 349
    return-void

    .line 356
    .end local v0    # "isLandscape":Z
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "isLandscape":Z
    goto/16 :goto_0

    .line 359
    :cond_2
    iget-object v4, p0, Lcom/android/contacts/widget/MultiShrinkScroller$6;->this$0:Lcom/android/contacts/widget/MultiShrinkScroller;

    invoke-static {v4}, Lcom/android/contacts/widget/MultiShrinkScroller;->-get8(Lcom/android/contacts/widget/MultiShrinkScroller;)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v4

    goto/16 :goto_1

    .line 389
    :cond_3
    iget-object v4, p0, Lcom/android/contacts/widget/MultiShrinkScroller$6;->this$0:Lcom/android/contacts/widget/MultiShrinkScroller;

    invoke-static {v4}, Lcom/android/contacts/widget/MultiShrinkScroller;->-get2(Lcom/android/contacts/widget/MultiShrinkScroller;)Landroid/widget/TextView;

    move-result-object v4

    iget-object v5, p0, Lcom/android/contacts/widget/MultiShrinkScroller$6;->this$0:Lcom/android/contacts/widget/MultiShrinkScroller;

    invoke-static {v5}, Lcom/android/contacts/widget/MultiShrinkScroller;->-get8(Lcom/android/contacts/widget/MultiShrinkScroller;)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v5

    .line 390
    iget-object v6, p0, Lcom/android/contacts/widget/MultiShrinkScroller$6;->this$0:Lcom/android/contacts/widget/MultiShrinkScroller;

    invoke-static {v6}, Lcom/android/contacts/widget/MultiShrinkScroller;->-get5(Lcom/android/contacts/widget/MultiShrinkScroller;)I

    move-result v6

    mul-int/lit8 v6, v6, 0x2

    .line 389
    sub-int/2addr v5, v6

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setWidth(I)V

    goto :goto_2
.end method
