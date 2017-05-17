.class Lcom/sonyericsson/conversations/ui/util/SmileyParser$CenteredImageSpan;
.super Landroid/text/style/ImageSpan;
.source "SmileyParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/conversations/ui/util/SmileyParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CenteredImageSpan"
.end annotation


# instance fields
.field private mYAdjustment:I


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 329
    invoke-direct {p0, p1}, Landroid/text/style/ImageSpan;-><init>(Landroid/graphics/drawable/Drawable;)V

    .line 328
    return-void
.end method


# virtual methods
.method public adjustYPosition(I)V
    .locals 0
    .param p1, "yAdjustment"    # I

    .prologue
    .line 337
    iput p1, p0, Lcom/sonyericsson/conversations/ui/util/SmileyParser$CenteredImageSpan;->mYAdjustment:I

    .line 336
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;Ljava/lang/CharSequence;IIFIIILandroid/graphics/Paint;)V
    .locals 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "text"    # Ljava/lang/CharSequence;
    .param p3, "start"    # I
    .param p4, "end"    # I
    .param p5, "x"    # F
    .param p6, "top"    # I
    .param p7, "y"    # I
    .param p8, "bottom"    # I
    .param p9, "paint"    # Landroid/graphics/Paint;

    .prologue
    .line 344
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/util/SmileyParser$CenteredImageSpan;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 345
    .local v0, "b":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 347
    sub-int v3, p8, p6

    .line 348
    .local v3, "lineHeight":I
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v5

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v6

    iget v6, v6, Landroid/graphics/Rect;->top:I

    add-int/2addr v5, v6

    iget v6, p0, Lcom/sonyericsson/conversations/ui/util/SmileyParser$CenteredImageSpan;->mYAdjustment:I

    sub-int v2, v5, v6

    .line 349
    .local v2, "heightOfImage":I
    sub-int v1, v3, v2

    .line 350
    .local v1, "diff":I
    div-int/lit8 v5, v1, 0x2

    add-int v4, p6, v5

    .line 352
    .local v4, "transY":I
    int-to-float v5, v4

    invoke-virtual {p1, p5, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 353
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 354
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 343
    return-void
.end method
