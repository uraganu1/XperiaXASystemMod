.class public Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardComponentFactory;
.super Ljava/lang/Object;
.source "KeyguardComponentFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createKeyguardClockPreviewView(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/ViewGroup;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v3, -0x2

    const v2, 0x3f666666    # 0.9f

    .line 69
    invoke-virtual {p0, p1, p2}, Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardComponentFactory;->createKeyguardClockView(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/ViewGroup;

    move-result-object v1

    .line 70
    .local v1, "view":Landroid/view/ViewGroup;
    if-eqz v1, :cond_0

    .line 71
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setScaleX(F)V

    .line 72
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setScaleY(F)V

    .line 73
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 75
    const/16 v2, 0x11

    .line 73
    invoke-direct {v0, v3, v3, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 76
    .local v0, "clockViewParams":Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 78
    .end local v0    # "clockViewParams":Landroid/widget/FrameLayout$LayoutParams;
    :cond_0
    return-object v1
.end method

.method public createKeyguardClockView(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/ViewGroup;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 50
    const/4 v0, 0x0

    return-object v0
.end method
