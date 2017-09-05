.class Lcom/sonymobile/keyguard/clock/picker/ClockPickerController$4;
.super Ljava/lang/Object;
.source "ClockPickerController.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/keyguard/clock/picker/ClockPickerController;->hideCurrentClock(Landroid/view/ViewGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/keyguard/clock/picker/ClockPickerController;

.field final synthetic val$clockDisplay:Landroid/view/View;

.field final synthetic val$parentView:Landroid/view/ViewGroup;


# direct methods
.method constructor <init>(Lcom/sonymobile/keyguard/clock/picker/ClockPickerController;Landroid/view/View;Landroid/view/ViewGroup;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonymobile/keyguard/clock/picker/ClockPickerController;
    .param p2, "val$clockDisplay"    # Landroid/view/View;
    .param p3, "val$parentView"    # Landroid/view/ViewGroup;

    .prologue
    .line 332
    iput-object p1, p0, Lcom/sonymobile/keyguard/clock/picker/ClockPickerController$4;->this$0:Lcom/sonymobile/keyguard/clock/picker/ClockPickerController;

    iput-object p2, p0, Lcom/sonymobile/keyguard/clock/picker/ClockPickerController$4;->val$clockDisplay:Landroid/view/View;

    iput-object p3, p0, Lcom/sonymobile/keyguard/clock/picker/ClockPickerController$4;->val$parentView:Landroid/view/ViewGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 3
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    const/4 v1, 0x0

    .line 336
    iget-object v0, p0, Lcom/sonymobile/keyguard/clock/picker/ClockPickerController$4;->val$clockDisplay:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    .line 339
    iget-object v0, p0, Lcom/sonymobile/keyguard/clock/picker/ClockPickerController$4;->this$0:Lcom/sonymobile/keyguard/clock/picker/ClockPickerController;

    invoke-static {v0}, Lcom/sonymobile/keyguard/clock/picker/ClockPickerController;->-get0(Lcom/sonymobile/keyguard/clock/picker/ClockPickerController;)Lcom/sonymobile/keyguard/clock/picker/ClockPickerView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 340
    iget-object v0, p0, Lcom/sonymobile/keyguard/clock/picker/ClockPickerController$4;->this$0:Lcom/sonymobile/keyguard/clock/picker/ClockPickerController;

    iget-object v1, p0, Lcom/sonymobile/keyguard/clock/picker/ClockPickerController$4;->val$clockDisplay:Landroid/view/View;

    iget-object v2, p0, Lcom/sonymobile/keyguard/clock/picker/ClockPickerController$4;->val$parentView:Landroid/view/ViewGroup;

    invoke-static {v0, v1, v2}, Lcom/sonymobile/keyguard/clock/picker/ClockPickerController;->-wrap1(Lcom/sonymobile/keyguard/clock/picker/ClockPickerController;Landroid/view/View;Landroid/view/ViewGroup;)V

    .line 342
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/keyguard/clock/picker/ClockPickerController$4;->this$0:Lcom/sonymobile/keyguard/clock/picker/ClockPickerController;

    invoke-static {v0}, Lcom/sonymobile/keyguard/clock/picker/ClockPickerController;->-get1(Lcom/sonymobile/keyguard/clock/picker/ClockPickerController;)Lcom/sonymobile/keyguard/clock/picker/ClockPickerCallback;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 343
    iget-object v0, p0, Lcom/sonymobile/keyguard/clock/picker/ClockPickerController$4;->this$0:Lcom/sonymobile/keyguard/clock/picker/ClockPickerController;

    invoke-static {v0}, Lcom/sonymobile/keyguard/clock/picker/ClockPickerController;->-get1(Lcom/sonymobile/keyguard/clock/picker/ClockPickerController;)Lcom/sonymobile/keyguard/clock/picker/ClockPickerCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/sonymobile/keyguard/clock/picker/ClockPickerCallback;->onCurrentClockHidden()V

    .line 335
    :cond_1
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 348
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 352
    return-void
.end method
