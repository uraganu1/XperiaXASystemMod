.class public Lcom/sonymobile/keyguard/plugin/analogclock/HorizontalScalingText;
.super Ljava/lang/Object;
.source "HorizontalScalingText.java"


# instance fields
.field private final mBounds:Landroid/graphics/Rect;

.field private final mPaint:Landroid/graphics/Paint;

.field private mSize:F

.field private mText:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/graphics/Paint;)V
    .locals 1
    .param p1, "paint"    # Landroid/graphics/Paint;

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/keyguard/plugin/analogclock/HorizontalScalingText;->mBounds:Landroid/graphics/Rect;

    .line 30
    const/high16 v0, 0x42c80000    # 100.0f

    iput v0, p0, Lcom/sonymobile/keyguard/plugin/analogclock/HorizontalScalingText;->mSize:F

    .line 40
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/sonymobile/keyguard/plugin/analogclock/HorizontalScalingText;->mText:Ljava/lang/String;

    .line 41
    iput-object p1, p0, Lcom/sonymobile/keyguard/plugin/analogclock/HorizontalScalingText;->mPaint:Landroid/graphics/Paint;

    .line 39
    return-void
.end method

.method public static createTextPaint()Landroid/graphics/Paint;
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 45
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 46
    .local v0, "paint":Landroid/graphics/Paint;
    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 47
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setSubpixelText(Z)V

    .line 48
    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 49
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 50
    return-object v0
.end method

.method private getScaleFactor(FF)F
    .locals 6
    .param p1, "wantedWidth"    # F
    .param p2, "boundsWidth"    # F

    .prologue
    const/high16 v5, 0x3f800000    # 1.0f

    const v4, 0x3e19999a    # 0.15f

    const/4 v3, 0x0

    .line 73
    const/high16 v1, 0x3f800000    # 1.0f

    .line 74
    .local v1, "scaleFactor":F
    cmpl-float v2, p1, v3

    if-lez v2, :cond_0

    cmpl-float v2, p2, v3

    if-lez v2, :cond_0

    .line 75
    div-float v1, p1, p2

    .line 76
    sub-float v0, v1, v5

    .line 77
    .local v0, "diff":F
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpl-float v2, v2, v4

    if-lez v2, :cond_0

    .line 79
    invoke-static {v0}, Ljava/lang/Math;->signum(F)F

    move-result v2

    mul-float/2addr v2, v4

    add-float v1, v5, v2

    .line 82
    .end local v0    # "diff":F
    :cond_0
    return v1
.end method


# virtual methods
.method public drawTextScaledToWidth(Landroid/graphics/Canvas;FFF)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "x"    # F
    .param p3, "y"    # F
    .param p4, "wantedWidth"    # F

    .prologue
    .line 65
    iget-object v2, p0, Lcom/sonymobile/keyguard/plugin/analogclock/HorizontalScalingText;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v0

    .line 66
    .local v0, "boundsWidth":I
    int-to-float v2, v0

    invoke-direct {p0, p4, v2}, Lcom/sonymobile/keyguard/plugin/analogclock/HorizontalScalingText;->getScaleFactor(FF)F

    move-result v1

    .line 67
    .local v1, "xScaleFactor":F
    iget-object v2, p0, Lcom/sonymobile/keyguard/plugin/analogclock/HorizontalScalingText;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setTextScaleX(F)V

    .line 68
    iget-object v2, p0, Lcom/sonymobile/keyguard/plugin/analogclock/HorizontalScalingText;->mPaint:Landroid/graphics/Paint;

    iget v3, p0, Lcom/sonymobile/keyguard/plugin/analogclock/HorizontalScalingText;->mSize:F

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 69
    iget-object v2, p0, Lcom/sonymobile/keyguard/plugin/analogclock/HorizontalScalingText;->mText:Ljava/lang/String;

    iget-object v3, p0, Lcom/sonymobile/keyguard/plugin/analogclock/HorizontalScalingText;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, p2, p3, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 64
    return-void
.end method

.method public getBottom()I
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/sonymobile/keyguard/plugin/analogclock/HorizontalScalingText;->mBounds:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    return v0
.end method

.method public getBoundsReadOnly()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/sonymobile/keyguard/plugin/analogclock/HorizontalScalingText;->mBounds:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/sonymobile/keyguard/plugin/analogclock/HorizontalScalingText;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    return v0
.end method

.method public getLeft()I
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/sonymobile/keyguard/plugin/analogclock/HorizontalScalingText;->mBounds:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    return v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/sonymobile/keyguard/plugin/analogclock/HorizontalScalingText;->mText:Ljava/lang/String;

    return-object v0
.end method

.method public getTop()I
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/sonymobile/keyguard/plugin/analogclock/HorizontalScalingText;->mBounds:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/sonymobile/keyguard/plugin/analogclock/HorizontalScalingText;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    return v0
.end method

.method public measureTextBounds()V
    .locals 5

    .prologue
    .line 58
    iget-object v0, p0, Lcom/sonymobile/keyguard/plugin/analogclock/HorizontalScalingText;->mPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextScaleX(F)V

    .line 59
    iget-object v0, p0, Lcom/sonymobile/keyguard/plugin/analogclock/HorizontalScalingText;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/sonymobile/keyguard/plugin/analogclock/HorizontalScalingText;->mSize:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 60
    iget-object v0, p0, Lcom/sonymobile/keyguard/plugin/analogclock/HorizontalScalingText;->mPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/sonymobile/keyguard/plugin/analogclock/HorizontalScalingText;->mText:Ljava/lang/String;

    iget-object v2, p0, Lcom/sonymobile/keyguard/plugin/analogclock/HorizontalScalingText;->mText:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    iget-object v3, p0, Lcom/sonymobile/keyguard/plugin/analogclock/HorizontalScalingText;->mBounds:Landroid/graphics/Rect;

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 57
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 0
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 110
    iput-object p1, p0, Lcom/sonymobile/keyguard/plugin/analogclock/HorizontalScalingText;->mText:Ljava/lang/String;

    .line 109
    return-void
.end method

.method public setTextSize(F)V
    .locals 0
    .param p1, "size"    # F

    .prologue
    .line 54
    iput p1, p0, Lcom/sonymobile/keyguard/plugin/analogclock/HorizontalScalingText;->mSize:F

    .line 53
    return-void
.end method
