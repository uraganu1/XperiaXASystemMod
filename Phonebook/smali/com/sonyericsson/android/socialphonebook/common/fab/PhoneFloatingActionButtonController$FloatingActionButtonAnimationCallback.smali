.class Lcom/sonyericsson/android/socialphonebook/common/fab/PhoneFloatingActionButtonController$FloatingActionButtonAnimationCallback;
.super Lcom/android/contacts/util/AnimUtils$AnimationCallback;
.source "PhoneFloatingActionButtonController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/socialphonebook/common/fab/PhoneFloatingActionButtonController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FloatingActionButtonAnimationCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/socialphonebook/common/fab/PhoneFloatingActionButtonController;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/android/socialphonebook/common/fab/PhoneFloatingActionButtonController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/android/socialphonebook/common/fab/PhoneFloatingActionButtonController;

    .prologue
    .line 39
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/common/fab/PhoneFloatingActionButtonController$FloatingActionButtonAnimationCallback;->this$0:Lcom/sonyericsson/android/socialphonebook/common/fab/PhoneFloatingActionButtonController;

    invoke-direct {p0}, Lcom/android/contacts/util/AnimUtils$AnimationCallback;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/socialphonebook/common/fab/PhoneFloatingActionButtonController;Lcom/sonyericsson/android/socialphonebook/common/fab/PhoneFloatingActionButtonController$FloatingActionButtonAnimationCallback;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/android/socialphonebook/common/fab/PhoneFloatingActionButtonController;

    .prologue
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/socialphonebook/common/fab/PhoneFloatingActionButtonController$FloatingActionButtonAnimationCallback;-><init>(Lcom/sonyericsson/android/socialphonebook/common/fab/PhoneFloatingActionButtonController;)V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/View;)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 42
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 41
    :cond_0
    :goto_0
    return-void

    .line 44
    :sswitch_0
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/common/fab/PhoneFloatingActionButtonController$FloatingActionButtonAnimationCallback;->this$0:Lcom/sonyericsson/android/socialphonebook/common/fab/PhoneFloatingActionButtonController;

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/common/fab/PhoneFloatingActionButtonController;->-get0(Lcom/sonyericsson/android/socialphonebook/common/fab/PhoneFloatingActionButtonController;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 45
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/common/fab/PhoneFloatingActionButtonController$FloatingActionButtonAnimationCallback;->this$0:Lcom/sonyericsson/android/socialphonebook/common/fab/PhoneFloatingActionButtonController;

    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/common/fab/PhoneFloatingActionButtonController$FloatingActionButtonAnimationCallback;->this$0:Lcom/sonyericsson/android/socialphonebook/common/fab/PhoneFloatingActionButtonController;

    invoke-static {v1}, Lcom/sonyericsson/android/socialphonebook/common/fab/PhoneFloatingActionButtonController;->-get0(Lcom/sonyericsson/android/socialphonebook/common/fab/PhoneFloatingActionButtonController;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/android/socialphonebook/common/fab/PhoneFloatingActionButtonController;->scaleOut(Landroid/view/View;Lcom/android/contacts/util/AnimUtils$AnimationCallback;)V

    .line 46
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/common/fab/PhoneFloatingActionButtonController$FloatingActionButtonAnimationCallback;->this$0:Lcom/sonyericsson/android/socialphonebook/common/fab/PhoneFloatingActionButtonController;

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/common/fab/PhoneFloatingActionButtonController;->-get0(Lcom/sonyericsson/android/socialphonebook/common/fab/PhoneFloatingActionButtonController;)Landroid/view/View;

    move-result-object v0

    invoke-static {v0, v4}, Lcom/sonyericsson/android/socialphonebook/common/fab/PhoneFloatingActionButtonController;->setVisibility(Landroid/view/View;Z)V

    .line 47
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/common/fab/PhoneFloatingActionButtonController$FloatingActionButtonAnimationCallback;->this$0:Lcom/sonyericsson/android/socialphonebook/common/fab/PhoneFloatingActionButtonController;

    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/common/fab/PhoneFloatingActionButtonController$FloatingActionButtonAnimationCallback;->this$0:Lcom/sonyericsson/android/socialphonebook/common/fab/PhoneFloatingActionButtonController;

    invoke-static {v1}, Lcom/sonyericsson/android/socialphonebook/common/fab/PhoneFloatingActionButtonController;->-get0(Lcom/sonyericsson/android/socialphonebook/common/fab/PhoneFloatingActionButtonController;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1, v3, v2}, Lcom/sonyericsson/android/socialphonebook/common/fab/PhoneFloatingActionButtonController;->scaleIn(Landroid/view/View;ILcom/android/contacts/util/AnimUtils$AnimationCallback;)V

    goto :goto_0

    .line 54
    :sswitch_1
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/common/fab/PhoneFloatingActionButtonController$FloatingActionButtonAnimationCallback;->this$0:Lcom/sonyericsson/android/socialphonebook/common/fab/PhoneFloatingActionButtonController;

    invoke-virtual {v0, v4}, Lcom/sonyericsson/android/socialphonebook/common/fab/PhoneFloatingActionButtonController;->setVisibility(Z)V

    .line 55
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/common/fab/PhoneFloatingActionButtonController$FloatingActionButtonAnimationCallback;->this$0:Lcom/sonyericsson/android/socialphonebook/common/fab/PhoneFloatingActionButtonController;

    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/common/fab/PhoneFloatingActionButtonController$FloatingActionButtonAnimationCallback;->this$0:Lcom/sonyericsson/android/socialphonebook/common/fab/PhoneFloatingActionButtonController;

    iget-object v1, v1, Lcom/sonyericsson/android/socialphonebook/common/fab/PhoneFloatingActionButtonController;->mFloatingActionButton:Lcom/sonymobile/fab/FloatingActionButton;

    invoke-virtual {v0, v1, v3, v2}, Lcom/sonyericsson/android/socialphonebook/common/fab/PhoneFloatingActionButtonController;->scaleIn(Landroid/view/View;ILcom/android/contacts/util/AnimUtils$AnimationCallback;)V

    goto :goto_0

    .line 42
    :sswitch_data_0
    .sparse-switch
        0x7f0e00ca -> :sswitch_0
        0x7f0e011f -> :sswitch_1
        0x7f0e0120 -> :sswitch_1
        0x7f0e0121 -> :sswitch_1
    .end sparse-switch
.end method
