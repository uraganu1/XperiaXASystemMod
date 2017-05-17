.class Lcom/sonyericsson/android/socialphonebook/DialpadFragment$FloatingActionButtonAnimationCallback;
.super Lcom/android/contacts/util/AnimUtils$AnimationCallback;
.source "DialpadFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/socialphonebook/DialpadFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FloatingActionButtonAnimationCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/socialphonebook/DialpadFragment;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/android/socialphonebook/DialpadFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/android/socialphonebook/DialpadFragment;

    .prologue
    .line 247
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/DialpadFragment$FloatingActionButtonAnimationCallback;->this$0:Lcom/sonyericsson/android/socialphonebook/DialpadFragment;

    invoke-direct {p0}, Lcom/android/contacts/util/AnimUtils$AnimationCallback;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/socialphonebook/DialpadFragment;Lcom/sonyericsson/android/socialphonebook/DialpadFragment$FloatingActionButtonAnimationCallback;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/android/socialphonebook/DialpadFragment;

    .prologue
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/socialphonebook/DialpadFragment$FloatingActionButtonAnimationCallback;-><init>(Lcom/sonyericsson/android/socialphonebook/DialpadFragment;)V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x0

    const/16 v2, 0x12c

    const/4 v1, 0x0

    .line 253
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/DialpadFragment$FloatingActionButtonAnimationCallback;->this$0:Lcom/sonyericsson/android/socialphonebook/DialpadFragment;

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/DialpadFragment;->-get2(Lcom/sonyericsson/android/socialphonebook/DialpadFragment;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 254
    return-void

    .line 256
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/DialpadFragment$FloatingActionButtonAnimationCallback;->this$0:Lcom/sonyericsson/android/socialphonebook/DialpadFragment;

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/DialpadFragment;->-get6(Lcom/sonyericsson/android/socialphonebook/DialpadFragment;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 257
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/DialpadFragment$FloatingActionButtonAnimationCallback;->this$0:Lcom/sonyericsson/android/socialphonebook/DialpadFragment;

    invoke-virtual {v0}, Lcom/sonyericsson/android/socialphonebook/DialpadFragment;->initVideoCallButtonItems()V

    .line 258
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/DialpadFragment$FloatingActionButtonAnimationCallback;->this$0:Lcom/sonyericsson/android/socialphonebook/DialpadFragment;

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/DialpadFragment;->-get4(Lcom/sonyericsson/android/socialphonebook/DialpadFragment;)Lcom/sonymobile/fab/FloatingActionButton;

    move-result-object v0

    invoke-static {v0, v2, v1, v3}, Lcom/android/contacts/util/AnimUtils;->scaleIn(Landroid/view/View;IILcom/android/contacts/util/AnimUtils$AnimationCallback;)V

    .line 260
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/DialpadFragment$FloatingActionButtonAnimationCallback;->this$0:Lcom/sonyericsson/android/socialphonebook/DialpadFragment;

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/DialpadFragment;->-get5(Lcom/sonyericsson/android/socialphonebook/DialpadFragment;)Lcom/sonymobile/fab/FloatingActionButton;

    move-result-object v0

    invoke-static {v0, v2, v1, v3}, Lcom/android/contacts/util/AnimUtils;->scaleIn(Landroid/view/View;IILcom/android/contacts/util/AnimUtils$AnimationCallback;)V

    .line 249
    :goto_0
    return-void

    .line 263
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/DialpadFragment$FloatingActionButtonAnimationCallback;->this$0:Lcom/sonyericsson/android/socialphonebook/DialpadFragment;

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/DialpadFragment;->-wrap2(Lcom/sonyericsson/android/socialphonebook/DialpadFragment;)V

    .line 264
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/DialpadFragment$FloatingActionButtonAnimationCallback;->this$0:Lcom/sonyericsson/android/socialphonebook/DialpadFragment;

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/DialpadFragment;->-get3(Lcom/sonyericsson/android/socialphonebook/DialpadFragment;)Lcom/sonymobile/fab/FloatingActionButton;

    move-result-object v0

    invoke-static {v0, v2, v1, v3}, Lcom/android/contacts/util/AnimUtils;->scaleIn(Landroid/view/View;IILcom/android/contacts/util/AnimUtils$AnimationCallback;)V

    goto :goto_0
.end method
