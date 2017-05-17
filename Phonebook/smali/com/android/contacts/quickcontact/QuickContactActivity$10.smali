.class Lcom/android/contacts/quickcontact/QuickContactActivity$10;
.super Ljava/lang/Object;
.source "QuickContactActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/quickcontact/QuickContactActivity;->onCreate(Landroid/os/Bundle;)V
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
    .line 836
    iput-object p1, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$10;->this$0:Lcom/android/contacts/quickcontact/QuickContactActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 839
    iget-object v4, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$10;->this$0:Lcom/android/contacts/quickcontact/QuickContactActivity;

    invoke-static {v4}, Lcom/android/contacts/quickcontact/QuickContactActivity;->-get8(Lcom/android/contacts/quickcontact/QuickContactActivity;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 842
    iget-object v4, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$10;->this$0:Lcom/android/contacts/quickcontact/QuickContactActivity;

    invoke-static {v4}, Lcom/android/contacts/quickcontact/QuickContactActivity;->-get7(Lcom/android/contacts/quickcontact/QuickContactActivity;)I

    move-result v4

    const/4 v5, 0x4

    if-ne v4, v5, :cond_1

    .line 843
    const/high16 v0, 0x3f800000    # 1.0f

    .line 844
    .local v0, "alphaRatio":F
    :goto_0
    iget-object v4, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$10;->this$0:Lcom/android/contacts/quickcontact/QuickContactActivity;

    invoke-virtual {v4}, Lcom/android/contacts/quickcontact/QuickContactActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 845
    const/high16 v5, 0x10e0000

    .line 844
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    .line 846
    .local v2, "duration":I
    const/high16 v4, 0x437f0000    # 255.0f

    mul-float/2addr v4, v0

    float-to-int v1, v4

    .line 847
    .local v1, "desiredAlpha":I
    iget-object v4, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$10;->this$0:Lcom/android/contacts/quickcontact/QuickContactActivity;

    invoke-static {v4}, Lcom/android/contacts/quickcontact/QuickContactActivity;->-get21(Lcom/android/contacts/quickcontact/QuickContactActivity;)Landroid/graphics/drawable/ColorDrawable;

    move-result-object v4

    const-string/jumbo v5, "alpha"

    const/4 v6, 0x2

    new-array v6, v6, [I

    aput v7, v6, v7

    .line 848
    const/4 v7, 0x1

    aput v1, v6, v7

    .line 847
    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v4

    .line 848
    int-to-long v6, v2

    .line 847
    invoke-virtual {v4, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 850
    .local v3, "o":Landroid/animation/ObjectAnimator;
    invoke-virtual {v3}, Landroid/animation/ObjectAnimator;->start()V

    .line 838
    .end local v0    # "alphaRatio":F
    .end local v1    # "desiredAlpha":I
    .end local v2    # "duration":I
    .end local v3    # "o":Landroid/animation/ObjectAnimator;
    :cond_0
    return-void

    .line 843
    :cond_1
    iget-object v4, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$10;->this$0:Lcom/android/contacts/quickcontact/QuickContactActivity;

    invoke-static {v4}, Lcom/android/contacts/quickcontact/QuickContactActivity;->-get18(Lcom/android/contacts/quickcontact/QuickContactActivity;)Lcom/android/contacts/widget/MultiShrinkScroller;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/contacts/widget/MultiShrinkScroller;->getStartingTransparentHeightRatio()F

    move-result v0

    .restart local v0    # "alphaRatio":F
    goto :goto_0
.end method
