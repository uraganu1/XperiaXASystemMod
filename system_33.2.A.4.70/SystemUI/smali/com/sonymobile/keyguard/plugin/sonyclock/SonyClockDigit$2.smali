.class Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClockDigit$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SonyClockDigit.java"


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
    .line 121
    iput-object p1, p0, Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClockDigit$2;->this$0:Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClockDigit;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 124
    iget-object v0, p0, Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClockDigit$2;->this$0:Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClockDigit;

    invoke-static {v0}, Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClockDigit;->-get0(Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClockDigit;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 125
    iget-object v0, p0, Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClockDigit$2;->this$0:Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClockDigit;

    invoke-static {v0}, Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClockDigit;->-wrap0(Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClockDigit;)V

    .line 123
    return-void
.end method
