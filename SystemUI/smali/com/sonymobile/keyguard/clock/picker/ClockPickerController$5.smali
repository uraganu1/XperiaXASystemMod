.class Lcom/sonymobile/keyguard/clock/picker/ClockPickerController$5;
.super Ljava/lang/Object;
.source "ClockPickerController.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/keyguard/clock/picker/ClockPickerController;->exchangeClockViewForPickerView(Landroid/view/View;Landroid/view/ViewGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/keyguard/clock/picker/ClockPickerController;

.field final synthetic val$parentView:Landroid/view/ViewGroup;


# direct methods
.method constructor <init>(Lcom/sonymobile/keyguard/clock/picker/ClockPickerController;Landroid/view/ViewGroup;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonymobile/keyguard/clock/picker/ClockPickerController;
    .param p2, "val$parentView"    # Landroid/view/ViewGroup;

    .prologue
    .line 373
    iput-object p1, p0, Lcom/sonymobile/keyguard/clock/picker/ClockPickerController$5;->this$0:Lcom/sonymobile/keyguard/clock/picker/ClockPickerController;

    iput-object p2, p0, Lcom/sonymobile/keyguard/clock/picker/ClockPickerController$5;->val$parentView:Landroid/view/ViewGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    const/4 v1, 0x0

    .line 377
    iget-object v0, p0, Lcom/sonymobile/keyguard/clock/picker/ClockPickerController$5;->val$parentView:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setAnimation(Landroid/view/animation/Animation;)V

    .line 380
    iget-object v0, p0, Lcom/sonymobile/keyguard/clock/picker/ClockPickerController$5;->this$0:Lcom/sonymobile/keyguard/clock/picker/ClockPickerController;

    invoke-static {v0}, Lcom/sonymobile/keyguard/clock/picker/ClockPickerController;->-get0(Lcom/sonymobile/keyguard/clock/picker/ClockPickerController;)Lcom/sonymobile/keyguard/clock/picker/ClockPickerView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 381
    iget-object v0, p0, Lcom/sonymobile/keyguard/clock/picker/ClockPickerController$5;->this$0:Lcom/sonymobile/keyguard/clock/picker/ClockPickerController;

    invoke-static {v0}, Lcom/sonymobile/keyguard/clock/picker/ClockPickerController;->-get0(Lcom/sonymobile/keyguard/clock/picker/ClockPickerController;)Lcom/sonymobile/keyguard/clock/picker/ClockPickerView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/keyguard/clock/picker/ClockPickerView;->createSelectionTimeoutForSelectedPage()V

    .line 382
    iget-object v0, p0, Lcom/sonymobile/keyguard/clock/picker/ClockPickerController$5;->this$0:Lcom/sonymobile/keyguard/clock/picker/ClockPickerController;

    invoke-static {v0}, Lcom/sonymobile/keyguard/clock/picker/ClockPickerController;->-get0(Lcom/sonymobile/keyguard/clock/picker/ClockPickerController;)Lcom/sonymobile/keyguard/clock/picker/ClockPickerView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/keyguard/clock/picker/ClockPickerView;->enableScaleContainerScaling()V

    .line 389
    iget-object v0, p0, Lcom/sonymobile/keyguard/clock/picker/ClockPickerController$5;->this$0:Lcom/sonymobile/keyguard/clock/picker/ClockPickerController;

    invoke-static {v0}, Lcom/sonymobile/keyguard/clock/picker/ClockPickerController;->-get2(Lcom/sonymobile/keyguard/clock/picker/ClockPickerController;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 390
    iget-object v1, p0, Lcom/sonymobile/keyguard/clock/picker/ClockPickerController$5;->this$0:Lcom/sonymobile/keyguard/clock/picker/ClockPickerController;

    iget-object v0, p0, Lcom/sonymobile/keyguard/clock/picker/ClockPickerController$5;->this$0:Lcom/sonymobile/keyguard/clock/picker/ClockPickerController;

    invoke-static {v0}, Lcom/sonymobile/keyguard/clock/picker/ClockPickerController;->-get0(Lcom/sonymobile/keyguard/clock/picker/ClockPickerController;)Lcom/sonymobile/keyguard/clock/picker/ClockPickerView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/keyguard/clock/picker/ClockPickerView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Lcom/sonymobile/keyguard/clock/picker/ClockPickerController;->resizeDismissView(Landroid/view/View;)V

    .line 376
    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 396
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 400
    return-void
.end method
