.class final Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/Tweener$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "Tweener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/Tweener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 141
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 150
    invoke-static {p1}, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/Tweener;->-wrap0(Landroid/animation/Animator;)V

    .line 149
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 145
    invoke-static {p1}, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/Tweener;->-wrap0(Landroid/animation/Animator;)V

    .line 144
    return-void
.end method
