.class public Lcom/sonymobile/keyguard/plugin/digitalclock/DigitalClockKeyguardComponentFactory;
.super Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardComponentFactory;
.source "DigitalClockKeyguardComponentFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardComponentFactory;-><init>()V

    return-void
.end method

.method private scaleTextViewsIfNecessary(Landroid/view/ViewGroup;Landroid/content/Context;)V
    .locals 14
    .param p1, "rootView"    # Landroid/view/ViewGroup;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 53
    sget v11, Lcom/android/keyguard/R$id;->somc_digital_clock_view_clock:I

    invoke-virtual {p1, v11}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextClock;

    .line 55
    .local v3, "clockView":Landroid/widget/TextClock;
    sget v11, Lcom/android/keyguard/R$id;->somc_digital_clock_view_am_pm:I

    invoke-virtual {p1, v11}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextClock;

    .line 57
    .local v0, "amPmView":Landroid/widget/TextClock;
    new-instance v6, Landroid/graphics/Paint;

    invoke-direct {v6}, Landroid/graphics/Paint;-><init>()V

    .line 58
    .local v6, "measuringPaint":Landroid/graphics/Paint;
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 60
    .local v1, "clockMeasurment":Landroid/graphics/Rect;
    invoke-virtual {v3}, Landroid/widget/TextClock;->getText()Ljava/lang/CharSequence;

    move-result-object v11

    invoke-interface {v11}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 63
    .local v2, "clockString":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v11

    const/4 v12, 0x4

    if-gt v11, v12, :cond_0

    .line 64
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "7"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 67
    :cond_0
    invoke-virtual {v3}, Landroid/widget/TextClock;->getTextSize()F

    move-result v11

    invoke-virtual {v6, v11}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 68
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v11

    const/4 v12, 0x0

    invoke-virtual {v6, v2, v12, v11, v1}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 71
    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    .line 72
    sget v12, Lcom/android/keyguard/R$dimen;->somc_keyguard_clock_picker_clock_back_plate_width:I

    .line 71
    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v11

    .line 72
    const v12, 0x3f666666    # 0.9f

    .line 71
    mul-float v9, v11, v12

    .line 77
    .local v9, "sizeOfBackplate":F
    const v10, 0x3f99999a    # 1.2f

    .line 79
    .local v10, "textClockPadding":F
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v11

    int-to-float v11, v11

    cmpl-float v11, v11, v9

    if-lez v11, :cond_2

    .line 80
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v11

    int-to-float v11, v11

    .line 81
    const v12, 0x3f99999a    # 1.2f

    .line 80
    mul-float/2addr v11, v12

    div-float v8, v9, v11

    .line 82
    .local v8, "scaleToFitText":F
    const/4 v11, 0x1

    invoke-virtual {v3, v11}, Landroid/widget/TextClock;->setHorizontallyScrolling(Z)V

    .line 83
    const/4 v11, 0x0

    invoke-virtual {p1, v11}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 84
    invoke-virtual {p1, v8}, Landroid/view/ViewGroup;->setScaleX(F)V

    .line 85
    invoke-virtual {p1, v8}, Landroid/view/ViewGroup;->setScaleY(F)V

    .line 94
    .end local v8    # "scaleToFitText":F
    :goto_0
    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    .line 95
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v11

    int-to-float v11, v11

    const v12, 0x3f99999a    # 1.2f

    mul-float/2addr v11, v12

    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    move-result v11

    .line 96
    const/4 v12, -0x2

    const/16 v13, 0x11

    .line 94
    invoke-direct {v4, v11, v12, v13}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 97
    .local v4, "clockViewParams":Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 98
    .local v7, "res":Landroid/content/res/Resources;
    if-eqz v7, :cond_1

    .line 100
    sget v11, Lcom/android/keyguard/R$dimen;->sony_digital_clock_picker_top_margin:I

    .line 99
    invoke-virtual {v7, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    .line 101
    .local v5, "marginTop":I
    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual {v4, v11, v5, v12, v13}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 103
    .end local v5    # "marginTop":I
    :cond_1
    invoke-virtual {p1, v4}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 106
    const/16 v11, 0x8

    invoke-virtual {v0, v11}, Landroid/widget/TextClock;->setVisibility(I)V

    .line 51
    return-void

    .line 87
    .end local v4    # "clockViewParams":Landroid/widget/FrameLayout$LayoutParams;
    .end local v7    # "res":Landroid/content/res/Resources;
    :cond_2
    const v11, 0x3f4ccccd    # 0.8f

    invoke-virtual {p1, v11}, Landroid/view/ViewGroup;->setScaleX(F)V

    .line 88
    const v11, 0x3f4ccccd    # 0.8f

    invoke-virtual {p1, v11}, Landroid/view/ViewGroup;->setScaleY(F)V

    goto :goto_0
.end method


# virtual methods
.method public createKeyguardClockPreviewView(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/ViewGroup;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 44
    invoke-virtual {p0, p1, p2}, Lcom/sonymobile/keyguard/plugin/digitalclock/DigitalClockKeyguardComponentFactory;->createKeyguardClockView(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/ViewGroup;

    move-result-object v0

    .line 46
    .local v0, "view":Landroid/view/ViewGroup;
    invoke-direct {p0, v0, p1}, Lcom/sonymobile/keyguard/plugin/digitalclock/DigitalClockKeyguardComponentFactory;->scaleTextViewsIfNecessary(Landroid/view/ViewGroup;Landroid/content/Context;)V

    .line 48
    return-object v0
.end method

.method public createKeyguardClockView(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/ViewGroup;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 35
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 37
    .local v0, "inflater":Landroid/view/LayoutInflater;
    sget v2, Lcom/android/keyguard/R$layout;->somc_digital_clock_view:I

    const/4 v3, 0x0

    invoke-virtual {v0, v2, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 39
    .local v1, "result":Landroid/view/ViewGroup;
    return-object v1
.end method
