.class Lcom/sonymobile/keyguard/themedanimation/ClippingTargetImageView$1;
.super Lcom/sonymobile/keyguard/themedanimation/ClippingTargetHelper;
.source "ClippingTargetImageView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/keyguard/themedanimation/ClippingTargetImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/keyguard/themedanimation/ClippingTargetImageView;


# direct methods
.method constructor <init>(Lcom/sonymobile/keyguard/themedanimation/ClippingTargetImageView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonymobile/keyguard/themedanimation/ClippingTargetImageView;

    .prologue
    .line 24
    iput-object p1, p0, Lcom/sonymobile/keyguard/themedanimation/ClippingTargetImageView$1;->this$0:Lcom/sonymobile/keyguard/themedanimation/ClippingTargetImageView;

    invoke-direct {p0}, Lcom/sonymobile/keyguard/themedanimation/ClippingTargetHelper;-><init>()V

    return-void
.end method


# virtual methods
.method protected drawOriginal(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/sonymobile/keyguard/themedanimation/ClippingTargetImageView$1;->this$0:Lcom/sonymobile/keyguard/themedanimation/ClippingTargetImageView;

    invoke-static {v0, p1}, Lcom/sonymobile/keyguard/themedanimation/ClippingTargetImageView;->-wrap0(Lcom/sonymobile/keyguard/themedanimation/ClippingTargetImageView;Landroid/graphics/Canvas;)V

    .line 26
    return-void
.end method
