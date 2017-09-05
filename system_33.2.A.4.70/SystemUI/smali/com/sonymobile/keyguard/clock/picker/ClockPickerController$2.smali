.class Lcom/sonymobile/keyguard/clock/picker/ClockPickerController$2;
.super Ljava/lang/Object;
.source "ClockPickerController.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/keyguard/clock/picker/ClockPickerController;->animateOutClockPicker(Landroid/view/ViewGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/keyguard/clock/picker/ClockPickerController;

.field final synthetic val$clockPickerParent:Landroid/view/ViewGroup;


# direct methods
.method constructor <init>(Lcom/sonymobile/keyguard/clock/picker/ClockPickerController;Landroid/view/ViewGroup;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonymobile/keyguard/clock/picker/ClockPickerController;
    .param p2, "val$clockPickerParent"    # Landroid/view/ViewGroup;

    .prologue
    .line 196
    iput-object p1, p0, Lcom/sonymobile/keyguard/clock/picker/ClockPickerController$2;->this$0:Lcom/sonymobile/keyguard/clock/picker/ClockPickerController;

    iput-object p2, p0, Lcom/sonymobile/keyguard/clock/picker/ClockPickerController$2;->val$clockPickerParent:Landroid/view/ViewGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    const/4 v1, 0x0

    .line 202
    iget-object v0, p0, Lcom/sonymobile/keyguard/clock/picker/ClockPickerController$2;->this$0:Lcom/sonymobile/keyguard/clock/picker/ClockPickerController;

    invoke-static {v0}, Lcom/sonymobile/keyguard/clock/picker/ClockPickerController;->-get0(Lcom/sonymobile/keyguard/clock/picker/ClockPickerController;)Lcom/sonymobile/keyguard/clock/picker/ClockPickerView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 203
    iget-object v0, p0, Lcom/sonymobile/keyguard/clock/picker/ClockPickerController$2;->this$0:Lcom/sonymobile/keyguard/clock/picker/ClockPickerController;

    invoke-static {v0}, Lcom/sonymobile/keyguard/clock/picker/ClockPickerController;->-get0(Lcom/sonymobile/keyguard/clock/picker/ClockPickerController;)Lcom/sonymobile/keyguard/clock/picker/ClockPickerView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/sonymobile/keyguard/clock/picker/ClockPickerView;->setAnimation(Landroid/view/animation/Animation;)V

    .line 204
    iget-object v0, p0, Lcom/sonymobile/keyguard/clock/picker/ClockPickerController$2;->this$0:Lcom/sonymobile/keyguard/clock/picker/ClockPickerController;

    iget-object v1, p0, Lcom/sonymobile/keyguard/clock/picker/ClockPickerController$2;->val$clockPickerParent:Landroid/view/ViewGroup;

    invoke-static {v0, v1}, Lcom/sonymobile/keyguard/clock/picker/ClockPickerController;->-wrap2(Lcom/sonymobile/keyguard/clock/picker/ClockPickerController;Landroid/view/ViewGroup;)V

    .line 205
    iget-object v0, p0, Lcom/sonymobile/keyguard/clock/picker/ClockPickerController$2;->this$0:Lcom/sonymobile/keyguard/clock/picker/ClockPickerController;

    iget-object v1, p0, Lcom/sonymobile/keyguard/clock/picker/ClockPickerController$2;->val$clockPickerParent:Landroid/view/ViewGroup;

    invoke-static {v0, v1}, Lcom/sonymobile/keyguard/clock/picker/ClockPickerController;->-wrap4(Lcom/sonymobile/keyguard/clock/picker/ClockPickerController;Landroid/view/ViewGroup;)V

    .line 206
    iget-object v0, p0, Lcom/sonymobile/keyguard/clock/picker/ClockPickerController$2;->this$0:Lcom/sonymobile/keyguard/clock/picker/ClockPickerController;

    iget-object v1, p0, Lcom/sonymobile/keyguard/clock/picker/ClockPickerController$2;->val$clockPickerParent:Landroid/view/ViewGroup;

    invoke-static {v0, v1}, Lcom/sonymobile/keyguard/clock/picker/ClockPickerController;->-wrap0(Lcom/sonymobile/keyguard/clock/picker/ClockPickerController;Landroid/view/ViewGroup;)V

    .line 199
    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 211
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 215
    return-void
.end method
