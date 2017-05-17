.class Lcom/android/contacts/quickcontact/QuickContactActivity$4;
.super Ljava/lang/Object;
.source "QuickContactActivity.java"

# interfaces
.implements Lcom/android/contacts/widget/MultiShrinkScroller$MultiShrinkScrollerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/quickcontact/QuickContactActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/quickcontact/QuickContactActivity;


# direct methods
.method constructor <init>(Lcom/android/contacts/quickcontact/QuickContactActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/contacts/quickcontact/QuickContactActivity;

    .prologue
    .line 610
    iput-object p1, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$4;->this$0:Lcom/android/contacts/quickcontact/QuickContactActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEnterFullscreen()V
    .locals 1

    .prologue
    .line 618
    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$4;->this$0:Lcom/android/contacts/quickcontact/QuickContactActivity;

    invoke-static {v0}, Lcom/android/contacts/quickcontact/QuickContactActivity;->-wrap20(Lcom/android/contacts/quickcontact/QuickContactActivity;)V

    .line 617
    return-void
.end method

.method public onEntranceAnimationDone()V
    .locals 2

    .prologue
    .line 633
    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$4;->this$0:Lcom/android/contacts/quickcontact/QuickContactActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/contacts/quickcontact/QuickContactActivity;->-set5(Lcom/android/contacts/quickcontact/QuickContactActivity;Z)Z

    .line 632
    return-void
.end method

.method public onExitFullscreen()V
    .locals 1

    .prologue
    .line 623
    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$4;->this$0:Lcom/android/contacts/quickcontact/QuickContactActivity;

    invoke-static {v0}, Lcom/android/contacts/quickcontact/QuickContactActivity;->-wrap20(Lcom/android/contacts/quickcontact/QuickContactActivity;)V

    .line 622
    return-void
.end method

.method public onScrolledOffBottom()V
    .locals 1

    .prologue
    .line 613
    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$4;->this$0:Lcom/android/contacts/quickcontact/QuickContactActivity;

    invoke-virtual {v0}, Lcom/android/contacts/quickcontact/QuickContactActivity;->finish()V

    .line 612
    return-void
.end method

.method public onStartScrollOffBottom()V
    .locals 2

    .prologue
    .line 628
    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$4;->this$0:Lcom/android/contacts/quickcontact/QuickContactActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/contacts/quickcontact/QuickContactActivity;->-set6(Lcom/android/contacts/quickcontact/QuickContactActivity;Z)Z

    .line 627
    return-void
.end method

.method public onTransparentViewHeightChange(F)V
    .locals 2
    .param p1, "ratio"    # F

    .prologue
    .line 638
    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$4;->this$0:Lcom/android/contacts/quickcontact/QuickContactActivity;

    invoke-static {v0}, Lcom/android/contacts/quickcontact/QuickContactActivity;->-get9(Lcom/android/contacts/quickcontact/QuickContactActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 639
    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$4;->this$0:Lcom/android/contacts/quickcontact/QuickContactActivity;

    invoke-static {v0}, Lcom/android/contacts/quickcontact/QuickContactActivity;->-get21(Lcom/android/contacts/quickcontact/QuickContactActivity;)Landroid/graphics/drawable/ColorDrawable;

    move-result-object v0

    const/high16 v1, 0x437f0000    # 255.0f

    mul-float/2addr v1, p1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/ColorDrawable;->setAlpha(I)V

    .line 637
    :cond_0
    return-void
.end method
