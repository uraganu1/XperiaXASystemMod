.class Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView$3;
.super Ljava/lang/Object;
.source "GlowPadView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView;


# direct methods
.method constructor <init>(Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView;

    .prologue
    .line 183
    iput-object p1, p0, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView$3;->this$0:Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 185
    iget-object v0, p0, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView$3;->this$0:Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView;

    invoke-virtual {v0}, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView;->invalidate()V

    .line 184
    return-void
.end method
