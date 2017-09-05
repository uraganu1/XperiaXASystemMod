.class public Lcom/sonymobile/keyguard/plugin/analogclock/SecondDotHand;
.super Lcom/sonymobile/keyguard/plugin/analogclock/ClockPart;
.source "SecondDotHand.java"


# instance fields
.field private final mBounds:Landroid/graphics/RectF;

.field private mDiameter:F

.field private final mDiameterResourceId:I


# direct methods
.method public constructor <init>(II)V
    .locals 1
    .param p1, "diameterResourceId"    # I
    .param p2, "colorResourceId"    # I

    .prologue
    .line 26
    invoke-direct {p0, p2}, Lcom/sonymobile/keyguard/plugin/analogclock/ClockPart;-><init>(I)V

    .line 23
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/keyguard/plugin/analogclock/SecondDotHand;->mBounds:Landroid/graphics/RectF;

    .line 28
    iput p1, p0, Lcom/sonymobile/keyguard/plugin/analogclock/SecondDotHand;->mDiameterResourceId:I

    .line 25
    return-void
.end method


# virtual methods
.method public applyAttributes(Landroid/content/res/TypedArray;)V
    .locals 3
    .param p1, "attr"    # Landroid/content/res/TypedArray;

    .prologue
    .line 33
    iget v0, p0, Lcom/sonymobile/keyguard/plugin/analogclock/SecondDotHand;->mDiameterResourceId:I

    const/high16 v1, 0x41a00000    # 20.0f

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    iput v0, p0, Lcom/sonymobile/keyguard/plugin/analogclock/SecondDotHand;->mDiameter:F

    .line 34
    invoke-virtual {p0}, Lcom/sonymobile/keyguard/plugin/analogclock/SecondDotHand;->getPaint()Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sonymobile/keyguard/plugin/analogclock/SecondDotHand;->getColorResourceId()I

    move-result v1

    const v2, -0xff0100

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 32
    return-void
.end method

.method public calculateSecondsDotPosition(FFFF)V
    .locals 10
    .param p1, "radians"    # F
    .param p2, "orbitRadiusOffset"    # F
    .param p3, "centerX"    # F
    .param p4, "centerY"    # F

    .prologue
    .line 39
    iget v3, p0, Lcom/sonymobile/keyguard/plugin/analogclock/SecondDotHand;->mDiameter:F

    const/high16 v4, 0x40000000    # 2.0f

    div-float v0, v3, v4

    .line 40
    .local v0, "dotRadius":F
    float-to-double v4, p3

    float-to-double v6, p2

    float-to-double v8, p1

    invoke-static {v8, v9}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    double-to-float v1, v4

    .line 41
    .local v1, "x":F
    float-to-double v4, p4

    float-to-double v6, p2

    float-to-double v8, p1

    invoke-static {v8, v9}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    mul-double/2addr v6, v8

    sub-double/2addr v4, v6

    double-to-float v2, v4

    .line 42
    .local v2, "y":F
    iget-object v3, p0, Lcom/sonymobile/keyguard/plugin/analogclock/SecondDotHand;->mBounds:Landroid/graphics/RectF;

    sub-float v4, v1, v0

    sub-float v5, v2, v0

    add-float v6, v1, v0

    add-float v7, v2, v0

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/graphics/RectF;->set(FFFF)V

    .line 38
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/sonymobile/keyguard/plugin/analogclock/SecondDotHand;->mBounds:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/sonymobile/keyguard/plugin/analogclock/SecondDotHand;->getPaint()Landroid/graphics/Paint;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 49
    return-void
.end method

.method public getBounds(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/sonymobile/keyguard/plugin/analogclock/SecondDotHand;->mBounds:Landroid/graphics/RectF;

    invoke-virtual {v0, p1}, Landroid/graphics/RectF;->round(Landroid/graphics/Rect;)V

    .line 45
    return-void
.end method
