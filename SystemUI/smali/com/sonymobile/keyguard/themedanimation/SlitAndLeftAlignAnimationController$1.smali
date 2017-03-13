.class Lcom/sonymobile/keyguard/themedanimation/SlitAndLeftAlignAnimationController$1;
.super Ljava/lang/Object;
.source "SlitAndLeftAlignAnimationController.java"

# interfaces
.implements Ljava/lang/Runnable;


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
    .line 79
    iput-object p1, p0, Lcom/sonymobile/keyguard/themedanimation/SlitAndLeftAlignAnimationController$1;->this$0:Lcom/sonymobile/keyguard/themedanimation/SlitAndLeftAlignAnimationController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/sonymobile/keyguard/themedanimation/SlitAndLeftAlignAnimationController$1;->this$0:Lcom/sonymobile/keyguard/themedanimation/SlitAndLeftAlignAnimationController;

    invoke-virtual {v0}, Lcom/sonymobile/keyguard/themedanimation/SlitAndLeftAlignAnimationController;->startCloseAnimation()V

    .line 81
    return-void
.end method
