.class Lcom/android/systemui/statusbar/ScrimView$3;
.super Lcom/sonymobile/keyguard/themedanimation/ClippingTargetHelper;
.source "ScrimView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/ScrimView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/ScrimView;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/ScrimView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/ScrimView;

    .prologue
    .line 70
    iput-object p1, p0, Lcom/android/systemui/statusbar/ScrimView$3;->this$0:Lcom/android/systemui/statusbar/ScrimView;

    invoke-direct {p0}, Lcom/sonymobile/keyguard/themedanimation/ClippingTargetHelper;-><init>()V

    return-void
.end method


# virtual methods
.method protected drawOriginal(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/systemui/statusbar/ScrimView$3;->this$0:Lcom/android/systemui/statusbar/ScrimView;

    invoke-static {v0, p1}, Lcom/android/systemui/statusbar/ScrimView;->-wrap0(Lcom/android/systemui/statusbar/ScrimView;Landroid/graphics/Canvas;)V

    .line 72
    return-void
.end method
