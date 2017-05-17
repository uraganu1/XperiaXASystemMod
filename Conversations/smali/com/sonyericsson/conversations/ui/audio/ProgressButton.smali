.class public Lcom/sonyericsson/conversations/ui/audio/ProgressButton;
.super Landroid/widget/ImageButton;
.source "ProgressButton.java"


# instance fields
.field private mAngle:F

.field private final mDrawArea:Landroid/graphics/RectF;

.field private final mPaint:Landroid/graphics/Paint;

.field private final mStrokeWidth:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "attribSet"    # Landroid/util/AttributeSet;

    .prologue
    .line 34
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/sonyericsson/conversations/ui/audio/ProgressButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "attribSet"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 38
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 27
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/sonyericsson/conversations/ui/audio/ProgressButton;->mPaint:Landroid/graphics/Paint;

    .line 29
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    iput-object v2, p0, Lcom/sonyericsson/conversations/ui/audio/ProgressButton;->mDrawArea:Landroid/graphics/RectF;

    .line 40
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/audio/ProgressButton;->mPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 41
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/audio/ProgressButton;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 43
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    .line 44
    sget-object v3, Lcom/sonyericsson/conversations/R$styleable;->PlayProgress:[I

    .line 43
    invoke-virtual {v2, p2, v3, p3, v4}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 45
    .local v0, "attribs":Landroid/content/res/TypedArray;
    const v2, -0xffff01

    invoke-virtual {v0, v4, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    .line 46
    .local v1, "strokeColor":I
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/audio/ProgressButton;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 48
    const/high16 v2, 0x40c00000    # 6.0f

    .line 47
    invoke-virtual {v0, v5, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    iput v2, p0, Lcom/sonyericsson/conversations/ui/audio/ProgressButton;->mStrokeWidth:F

    .line 49
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/audio/ProgressButton;->mPaint:Landroid/graphics/Paint;

    iget v3, p0, Lcom/sonyericsson/conversations/ui/audio/ProgressButton;->mStrokeWidth:F

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 50
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 37
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 67
    invoke-super {p0, p1}, Landroid/widget/ImageButton;->onDraw(Landroid/graphics/Canvas;)V

    .line 68
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/audio/ProgressButton;->mDrawArea:Landroid/graphics/RectF;

    const/4 v2, 0x0

    iget v3, p0, Lcom/sonyericsson/conversations/ui/audio/ProgressButton;->mAngle:F

    iget-object v5, p0, Lcom/sonyericsson/conversations/ui/audio/ProgressButton;->mPaint:Landroid/graphics/Paint;

    const/4 v4, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 66
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 4
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "oldWidth"    # I
    .param p4, "oldHeight"    # I

    .prologue
    .line 60
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ImageButton;->onSizeChanged(IIII)V

    .line 61
    iget v1, p0, Lcom/sonyericsson/conversations/ui/audio/ProgressButton;->mStrokeWidth:F

    const/high16 v2, 0x3f000000    # 0.5f

    mul-float v0, v2, v1

    .line 62
    .local v0, "halfStroke":F
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/audio/ProgressButton;->mDrawArea:Landroid/graphics/RectF;

    int-to-float v2, p1

    sub-float/2addr v2, v0

    int-to-float v3, p2

    sub-float/2addr v3, v0

    invoke-virtual {v1, v0, v0, v2, v3}, Landroid/graphics/RectF;->set(FFFF)V

    .line 59
    return-void
.end method
