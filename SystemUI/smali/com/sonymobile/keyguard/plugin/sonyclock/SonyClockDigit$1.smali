.class Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClockDigit$1;
.super Ljava/lang/Object;
.source "SonyClockDigit.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClockDigit;->updateDigit(CZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClockDigit;


# direct methods
.method constructor <init>(Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClockDigit;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClockDigit;

    .prologue
    .line 114
    iput-object p1, p0, Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClockDigit$1;->this$0:Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClockDigit;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 117
    iget-object v0, p0, Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClockDigit$1;->this$0:Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClockDigit;

    invoke-static {v0}, Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClockDigit;->-wrap0(Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClockDigit;)V

    .line 116
    return-void
.end method
