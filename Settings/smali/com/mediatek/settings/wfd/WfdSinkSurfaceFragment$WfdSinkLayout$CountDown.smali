.class Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$WfdSinkLayout$CountDown;
.super Ljava/lang/Object;
.source "WfdSinkSurfaceFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$WfdSinkLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CountDown"
.end annotation


# instance fields
.field private mCountDownNum:I

.field private mOriginalWindowAttachCount:I

.field final synthetic this$1:Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$WfdSinkLayout;


# direct methods
.method constructor <init>(Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$WfdSinkLayout;)V
    .locals 0
    .param p1, "this$1"    # Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$WfdSinkLayout;

    .prologue
    .line 587
    iput-object p1, p0, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$WfdSinkLayout$CountDown;->this$1:Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$WfdSinkLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public rememberWindowAttachCount()V
    .locals 1

    .prologue
    .line 628
    iget-object v0, p0, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$WfdSinkLayout$CountDown;->this$1:Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$WfdSinkLayout;

    invoke-static {v0}, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$WfdSinkLayout;->-wrap0(Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$WfdSinkLayout;)I

    move-result v0

    iput v0, p0, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$WfdSinkLayout$CountDown;->mOriginalWindowAttachCount:I

    .line 627
    return-void
.end method

.method public run()V
    .locals 6

    .prologue
    const v3, 0x7f130290

    .line 594
    iget-object v2, p0, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$WfdSinkLayout$CountDown;->this$1:Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$WfdSinkLayout;

    iget-object v2, v2, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$WfdSinkLayout;->this$0:Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;

    invoke-static {v2}, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;->-get1(Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 595
    const/4 v2, 0x3

    iput v2, p0, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$WfdSinkLayout$CountDown;->mCountDownNum:I

    .line 596
    iget-object v2, p0, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$WfdSinkLayout$CountDown;->this$1:Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$WfdSinkLayout;

    iget-object v2, v2, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$WfdSinkLayout;->this$0:Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, p0, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$WfdSinkLayout$CountDown;->mCountDownNum:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;->-wrap0(Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;Ljava/lang/String;)V

    .line 624
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$WfdSinkLayout$CountDown;->this$1:Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$WfdSinkLayout;

    const-wide/16 v4, 0x3e8

    invoke-virtual {v2, p0, v4, v5}, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$WfdSinkLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 593
    return-void

    .line 598
    :cond_1
    iget v2, p0, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$WfdSinkLayout$CountDown;->mCountDownNum:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$WfdSinkLayout$CountDown;->mCountDownNum:I

    .line 599
    iget v2, p0, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$WfdSinkLayout$CountDown;->mCountDownNum:I

    if-gtz v2, :cond_3

    .line 600
    iget-object v2, p0, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$WfdSinkLayout$CountDown;->this$1:Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$WfdSinkLayout;

    invoke-static {v2}, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$WfdSinkLayout;->-get1(Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$WfdSinkLayout;)Landroid/view/ViewParent;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 601
    iget v2, p0, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$WfdSinkLayout$CountDown;->mOriginalWindowAttachCount:I

    iget-object v3, p0, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$WfdSinkLayout$CountDown;->this$1:Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$WfdSinkLayout;

    invoke-static {v3}, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$WfdSinkLayout;->-wrap0(Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$WfdSinkLayout;)I

    move-result v3

    if-ne v2, v3, :cond_2

    .line 604
    iget-object v2, p0, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$WfdSinkLayout$CountDown;->this$1:Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$WfdSinkLayout;

    iget-object v2, v2, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$WfdSinkLayout;->this$0:Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;

    iget-object v3, p0, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$WfdSinkLayout$CountDown;->this$1:Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$WfdSinkLayout;

    iget-object v3, v3, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$WfdSinkLayout;->this$0:Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;

    invoke-static {v3}, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;->-get6(Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;)Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$WfdSinkLayout;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;->onLongClick(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 605
    iget-object v2, p0, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$WfdSinkLayout$CountDown;->this$1:Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$WfdSinkLayout;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$WfdSinkLayout;->-set0(Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$WfdSinkLayout;Z)Z

    .line 608
    :cond_2
    return-void

    .line 610
    :cond_3
    iget-object v2, p0, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$WfdSinkLayout$CountDown;->this$1:Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$WfdSinkLayout;

    iget-object v2, v2, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$WfdSinkLayout;->this$0:Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;

    invoke-static {v2}, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;->-get1(Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 611
    iget-object v2, p0, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$WfdSinkLayout$CountDown;->this$1:Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$WfdSinkLayout;

    iget-object v2, v2, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$WfdSinkLayout;->this$0:Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;

    invoke-static {v2}, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;->-get6(Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;)Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$WfdSinkLayout;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$WfdSinkLayout;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 613
    .local v0, "countdownView":Landroid/view/ViewGroup;
    if-eqz v0, :cond_0

    .line 614
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 616
    .local v1, "tv":Landroid/widget/TextView;
    if-eqz v1, :cond_0

    .line 617
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$WfdSinkLayout$CountDown;->mCountDownNum:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 618
    invoke-virtual {v1}, Landroid/widget/TextView;->postInvalidate()V

    goto :goto_0
.end method
