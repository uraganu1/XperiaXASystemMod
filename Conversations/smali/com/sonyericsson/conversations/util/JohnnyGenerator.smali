.class public Lcom/sonyericsson/conversations/util/JohnnyGenerator;
.super Ljava/lang/Object;
.source "JohnnyGenerator.java"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mDefaultColor:I

.field private final mDefaultJohnnyAvatar:Landroid/graphics/drawable/Drawable;

.field private final mPaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/sonyericsson/conversations/util/JohnnyGenerator;->mContext:Landroid/content/Context;

    .line 38
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/conversations/util/JohnnyGenerator;->mPaint:Landroid/graphics/Paint;

    .line 39
    iget-object v0, p0, Lcom/sonyericsson/conversations/util/JohnnyGenerator;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setDither(Z)V

    .line 40
    iget-object v0, p0, Lcom/sonyericsson/conversations/util/JohnnyGenerator;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 41
    iget-object v0, p0, Lcom/sonyericsson/conversations/util/JohnnyGenerator;->mPaint:Landroid/graphics/Paint;

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 43
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/util/JohnnyGenerator;->initializeDefaultColor()V

    .line 46
    const v0, 0x7f02012f

    .line 45
    invoke-virtual {p1, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/conversations/util/JohnnyGenerator;->mDefaultJohnnyAvatar:Landroid/graphics/drawable/Drawable;

    .line 36
    return-void
.end method

.method private drawInnerDrawable(Landroid/graphics/drawable/Drawable;Landroid/graphics/Canvas;Landroid/graphics/Rect;)V
    .locals 6
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p2, "canvas"    # Landroid/graphics/Canvas;
    .param p3, "bounds"    # Landroid/graphics/Rect;

    .prologue
    .line 114
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p3}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 117
    .local v0, "destRect":Landroid/graphics/Rect;
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    div-int/lit8 v1, v2, 0x2

    .line 119
    .local v1, "halfLength":I
    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v2

    sub-int/2addr v2, v1

    .line 120
    invoke-virtual {v0}, Landroid/graphics/Rect;->centerY()I

    move-result v3

    sub-int/2addr v3, v1

    .line 121
    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v4

    add-int/2addr v4, v1

    .line 122
    invoke-virtual {v0}, Landroid/graphics/Rect;->centerY()I

    move-result v5

    add-int/2addr v5, v1

    .line 119
    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 124
    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Landroid/graphics/drawable/Drawable;->setFilterBitmap(Z)V

    .line 125
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 126
    iget-object v2, p0, Lcom/sonyericsson/conversations/util/JohnnyGenerator;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getAlpha()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 127
    invoke-virtual {p1, p2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 111
    return-void
.end method


# virtual methods
.method public generateJohnny(II)Landroid/graphics/Bitmap;
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 57
    iget v0, p0, Lcom/sonyericsson/conversations/util/JohnnyGenerator;->mDefaultColor:I

    invoke-virtual {p0, p1, p2, v0}, Lcom/sonyericsson/conversations/util/JohnnyGenerator;->generateJohnny(III)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public generateJohnny(III)Landroid/graphics/Bitmap;
    .locals 5
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "color"    # I

    .prologue
    const/4 v4, 0x0

    .line 68
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1, v4, v4, p1, p2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 69
    .local v1, "bounds":Landroid/graphics/Rect;
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 70
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 73
    .local v2, "canvas":Landroid/graphics/Canvas;
    iget-object v4, p0, Lcom/sonyericsson/conversations/util/JohnnyGenerator;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v4, p3}, Landroid/graphics/Paint;->setColor(I)V

    .line 74
    iget-object v4, p0, Lcom/sonyericsson/conversations/util/JohnnyGenerator;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v1, v4}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 77
    iget-object v3, p0, Lcom/sonyericsson/conversations/util/JohnnyGenerator;->mDefaultJohnnyAvatar:Landroid/graphics/drawable/Drawable;

    .line 78
    .local v3, "innerDrawable":Landroid/graphics/drawable/Drawable;
    invoke-direct {p0, v3, v2, v1}, Lcom/sonyericsson/conversations/util/JohnnyGenerator;->drawInnerDrawable(Landroid/graphics/drawable/Drawable;Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    .line 79
    return-object v0
.end method

.method public initializeDefaultColor()V
    .locals 4

    .prologue
    .line 101
    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    .line 102
    .local v1, "typedValue":Landroid/util/TypedValue;
    iget-object v2, p0, Lcom/sonyericsson/conversations/util/JohnnyGenerator;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    .line 103
    .local v0, "theme":Landroid/content/res/Resources$Theme;
    const v2, 0x1010433

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v1, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 104
    iget v2, v1, Landroid/util/TypedValue;->data:I

    iput v2, p0, Lcom/sonyericsson/conversations/util/JohnnyGenerator;->mDefaultColor:I

    .line 100
    return-void
.end method
