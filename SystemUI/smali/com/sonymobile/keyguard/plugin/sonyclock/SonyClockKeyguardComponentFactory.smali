.class public Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClockKeyguardComponentFactory;
.super Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardComponentFactory;
.source "SonyClockKeyguardComponentFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardComponentFactory;-><init>()V

    return-void
.end method


# virtual methods
.method public createKeyguardClockPreviewView(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/ViewGroup;
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v9, 0x0

    const/4 v8, -0x2

    .line 35
    invoke-virtual {p0, p1, p2}, Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClockKeyguardComponentFactory;->createKeyguardClockView(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/ViewGroup;

    move-result-object v6

    .line 36
    .local v6, "view":Landroid/view/ViewGroup;
    if-eqz v6, :cond_1

    .line 37
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 39
    const/16 v7, 0x11

    .line 37
    invoke-direct {v0, v8, v8, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 41
    .local v0, "clockViewParams":Landroid/widget/FrameLayout$LayoutParams;
    const v5, 0x3f666666    # 0.9f

    .line 42
    .local v5, "scale":F
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 43
    .local v4, "res":Landroid/content/res/Resources;
    if-eqz v4, :cond_0

    .line 47
    sget v7, Lcom/android/keyguard/R$dimen;->sony_clock_clock_picker_top_margin:I

    .line 46
    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 49
    .local v2, "marginTop":I
    sget v7, Lcom/android/keyguard/R$dimen;->sony_clock_clock_picker_bottom_margin:I

    .line 48
    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 50
    .local v1, "marginBottom":I
    invoke-virtual {v0, v9, v2, v9, v1}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 52
    new-instance v3, Landroid/util/TypedValue;

    invoke-direct {v3}, Landroid/util/TypedValue;-><init>()V

    .line 53
    .local v3, "outValue":Landroid/util/TypedValue;
    sget v7, Lcom/android/keyguard/R$dimen;->sony_clock_clock_picker_scale:I

    const/4 v8, 0x1

    invoke-virtual {v4, v7, v3, v8}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 54
    invoke-virtual {v3}, Landroid/util/TypedValue;->getFloat()F

    move-result v5

    .line 57
    .end local v1    # "marginBottom":I
    .end local v2    # "marginTop":I
    .end local v3    # "outValue":Landroid/util/TypedValue;
    :cond_0
    invoke-virtual {v6, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 58
    invoke-virtual {v6, v5}, Landroid/view/ViewGroup;->setScaleX(F)V

    .line 59
    invoke-virtual {v6, v5}, Landroid/view/ViewGroup;->setScaleY(F)V

    .line 61
    .end local v0    # "clockViewParams":Landroid/widget/FrameLayout$LayoutParams;
    .end local v4    # "res":Landroid/content/res/Resources;
    .end local v5    # "scale":F
    :cond_1
    return-object v6
.end method

.method public createKeyguardClockView(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/ViewGroup;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 27
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 28
    .local v0, "inflater":Landroid/view/LayoutInflater;
    sget v2, Lcom/android/keyguard/R$layout;->somc_sony_clock_view:I

    .line 29
    const/4 v3, 0x0

    .line 28
    invoke-virtual {v0, v2, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 30
    .local v1, "result":Landroid/view/ViewGroup;
    return-object v1
.end method
