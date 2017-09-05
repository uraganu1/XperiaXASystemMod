.class Lcom/sonymobile/keyguard/themedanimation/SlitAndLeftAlignAnimationController$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SlitAndLeftAlignAnimationController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/keyguard/themedanimation/SlitAndLeftAlignAnimationController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/keyguard/themedanimation/SlitAndLeftAlignAnimationController;


# direct methods
.method constructor <init>(Lcom/sonymobile/keyguard/themedanimation/SlitAndLeftAlignAnimationController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonymobile/keyguard/themedanimation/SlitAndLeftAlignAnimationController;

    .prologue
    .line 102
    iput-object p1, p0, Lcom/sonymobile/keyguard/themedanimation/SlitAndLeftAlignAnimationController$3;->this$0:Lcom/sonymobile/keyguard/themedanimation/SlitAndLeftAlignAnimationController;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 109
    iget-object v0, p0, Lcom/sonymobile/keyguard/themedanimation/SlitAndLeftAlignAnimationController$3;->this$0:Lcom/sonymobile/keyguard/themedanimation/SlitAndLeftAlignAnimationController;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sonymobile/keyguard/themedanimation/SlitAndLeftAlignAnimationController;->-set0(Lcom/sonymobile/keyguard/themedanimation/SlitAndLeftAlignAnimationController;Z)Z

    .line 110
    iget-object v0, p0, Lcom/sonymobile/keyguard/themedanimation/SlitAndLeftAlignAnimationController$3;->this$0:Lcom/sonymobile/keyguard/themedanimation/SlitAndLeftAlignAnimationController;

    invoke-static {v0}, Lcom/sonymobile/keyguard/themedanimation/SlitAndLeftAlignAnimationController;->-wrap1(Lcom/sonymobile/keyguard/themedanimation/SlitAndLeftAlignAnimationController;)V

    .line 108
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 105
    iget-object v0, p0, Lcom/sonymobile/keyguard/themedanimation/SlitAndLeftAlignAnimationController$3;->this$0:Lcom/sonymobile/keyguard/themedanimation/SlitAndLeftAlignAnimationController;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/sonymobile/keyguard/themedanimation/SlitAndLeftAlignAnimationController;->-set0(Lcom/sonymobile/keyguard/themedanimation/SlitAndLeftAlignAnimationController;Z)Z

    .line 104
    return-void
.end method
