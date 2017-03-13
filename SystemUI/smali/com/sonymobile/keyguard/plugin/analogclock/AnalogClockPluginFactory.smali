.class public Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClockPluginFactory;
.super Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardComponentFactory;
.source "AnalogClockPluginFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardComponentFactory;-><init>()V

    return-void
.end method


# virtual methods
.method public createKeyguardClockPreviewView(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/ViewGroup;
    .locals 14
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 42
    invoke-virtual/range {p0 .. p2}, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClockPluginFactory;->createKeyguardClockView(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/ViewGroup;

    move-result-object v9

    .line 43
    .local v9, "view":Landroid/view/ViewGroup;
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 44
    .local v7, "res":Landroid/content/res/Resources;
    if-eqz v9, :cond_1

    if-eqz v7, :cond_1

    .line 45
    invoke-virtual {p0, v9}, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClockPluginFactory;->getClockView(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 46
    .local v1, "clockView":Landroid/view/View;
    const v5, 0x3f666666    # 0.9f

    .line 47
    .local v5, "marginRatio":F
    invoke-virtual {p0, v7}, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClockPluginFactory;->getClockSize(Landroid/content/res/Resources;)F

    move-result v0

    .line 49
    .local v0, "clockSize":F
    sget v10, Lcom/android/keyguard/R$dimen;->somc_keyguard_clock_picker_clock_back_plate_width:I

    invoke-virtual {v7, v10}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    .line 50
    .local v4, "fullBackPlateSize":F
    const v10, 0x3f666666    # 0.9f

    mul-float v6, v4, v10

    .line 52
    .local v6, "maximumClockSize":F
    move v3, v0

    .line 53
    .local v3, "finalClockSize":F
    div-float v8, v6, v0

    .line 56
    .local v8, "scaleDownAnalogClock":F
    const/high16 v10, 0x3f800000    # 1.0f

    cmpg-float v10, v8, v10

    if-gez v10, :cond_0

    .line 57
    move v3, v6

    .line 58
    invoke-virtual {v1, v8}, Landroid/view/View;->setScaleX(F)V

    .line 59
    invoke-virtual {v1, v8}, Landroid/view/View;->setScaleY(F)V

    .line 62
    :cond_0
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 63
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v10

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v11

    .line 64
    const/16 v12, 0x11

    .line 62
    invoke-direct {v2, v10, v11, v12}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 65
    .local v2, "clockViewParams":Landroid/widget/FrameLayout$LayoutParams;
    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual {v2, v10, v11, v12, v13}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 66
    invoke-virtual {v9, v2}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 68
    .end local v0    # "clockSize":F
    .end local v1    # "clockView":Landroid/view/View;
    .end local v2    # "clockViewParams":Landroid/widget/FrameLayout$LayoutParams;
    .end local v3    # "finalClockSize":F
    .end local v4    # "fullBackPlateSize":F
    .end local v5    # "marginRatio":F
    .end local v6    # "maximumClockSize":F
    .end local v8    # "scaleDownAnalogClock":F
    :cond_1
    return-object v9
.end method

.method public createKeyguardClockView(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/ViewGroup;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 28
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 29
    .local v0, "inflater":Landroid/view/LayoutInflater;
    sget v1, Lcom/android/keyguard/R$layout;->somc_analog_clock_view:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    return-object v1
.end method

.method protected getClockSize(Landroid/content/res/Resources;)F
    .locals 1
    .param p1, "resources"    # Landroid/content/res/Resources;

    .prologue
    .line 37
    sget v0, Lcom/android/keyguard/R$dimen;->somc_analog_clock_size:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    return v0
.end method

.method protected getClockView(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .param p1, "view"    # Landroid/view/ViewGroup;

    .prologue
    .line 33
    sget v0, Lcom/android/keyguard/R$id;->somc_analog_clock:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method
