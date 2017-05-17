.class Landroid/support/v7/widget/CardViewEclairMr1$1;
.super Ljava/lang/Object;
.source "CardViewEclairMr1.java"

# interfaces
.implements Landroid/support/v7/widget/RoundRectDrawableWithShadow$RoundRectHelper;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v7/widget/CardViewEclairMr1;->initStatic()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v7/widget/CardViewEclairMr1;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/CardViewEclairMr1;)V
    .locals 0
    .param p1, "this$0"    # Landroid/support/v7/widget/CardViewEclairMr1;

    .prologue
    .line 35
    iput-object p1, p0, Landroid/support/v7/widget/CardViewEclairMr1$1;->this$0:Landroid/support/v7/widget/CardViewEclairMr1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public drawRoundRect(Landroid/graphics/Canvas;Landroid/graphics/RectF;FLandroid/graphics/Paint;)V
    .locals 9
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "bounds"    # Landroid/graphics/RectF;
    .param p3, "cornerRadius"    # F
    .param p4, "paint"    # Landroid/graphics/Paint;

    .prologue
    .line 39
    const/high16 v0, 0x40000000    # 2.0f

    mul-float v8, p3, v0

    .line 40
    .local v8, "twoRadius":F
    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    move-result v0

    sub-float v7, v0, v8

    .line 41
    .local v7, "innerWidth":F
    invoke-virtual {p2}, Landroid/graphics/RectF;->height()F

    move-result v0

    sub-float v6, v0, v8

    .line 42
    .local v6, "innerHeight":F
    iget-object v0, p0, Landroid/support/v7/widget/CardViewEclairMr1$1;->this$0:Landroid/support/v7/widget/CardViewEclairMr1;

    iget-object v0, v0, Landroid/support/v7/widget/CardViewEclairMr1;->sCornerRect:Landroid/graphics/RectF;

    iget v1, p2, Landroid/graphics/RectF;->left:F

    iget v2, p2, Landroid/graphics/RectF;->top:F

    .line 43
    iget v3, p2, Landroid/graphics/RectF;->left:F

    const/high16 v4, 0x40000000    # 2.0f

    mul-float/2addr v4, p3

    add-float/2addr v3, v4

    iget v4, p2, Landroid/graphics/RectF;->top:F

    const/high16 v5, 0x40000000    # 2.0f

    mul-float/2addr v5, p3

    add-float/2addr v4, v5

    .line 42
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 45
    iget-object v0, p0, Landroid/support/v7/widget/CardViewEclairMr1$1;->this$0:Landroid/support/v7/widget/CardViewEclairMr1;

    iget-object v1, v0, Landroid/support/v7/widget/CardViewEclairMr1;->sCornerRect:Landroid/graphics/RectF;

    const/high16 v2, 0x43340000    # 180.0f

    const/high16 v3, 0x42b40000    # 90.0f

    const/4 v4, 0x1

    move-object v0, p1

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 46
    iget-object v0, p0, Landroid/support/v7/widget/CardViewEclairMr1$1;->this$0:Landroid/support/v7/widget/CardViewEclairMr1;

    iget-object v0, v0, Landroid/support/v7/widget/CardViewEclairMr1;->sCornerRect:Landroid/graphics/RectF;

    const/4 v1, 0x0

    invoke-virtual {v0, v7, v1}, Landroid/graphics/RectF;->offset(FF)V

    .line 47
    iget-object v0, p0, Landroid/support/v7/widget/CardViewEclairMr1$1;->this$0:Landroid/support/v7/widget/CardViewEclairMr1;

    iget-object v1, v0, Landroid/support/v7/widget/CardViewEclairMr1;->sCornerRect:Landroid/graphics/RectF;

    const/high16 v2, 0x43870000    # 270.0f

    const/high16 v3, 0x42b40000    # 90.0f

    const/4 v4, 0x1

    move-object v0, p1

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 48
    iget-object v0, p0, Landroid/support/v7/widget/CardViewEclairMr1$1;->this$0:Landroid/support/v7/widget/CardViewEclairMr1;

    iget-object v0, v0, Landroid/support/v7/widget/CardViewEclairMr1;->sCornerRect:Landroid/graphics/RectF;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v6}, Landroid/graphics/RectF;->offset(FF)V

    .line 49
    iget-object v0, p0, Landroid/support/v7/widget/CardViewEclairMr1$1;->this$0:Landroid/support/v7/widget/CardViewEclairMr1;

    iget-object v1, v0, Landroid/support/v7/widget/CardViewEclairMr1;->sCornerRect:Landroid/graphics/RectF;

    const/4 v2, 0x0

    const/high16 v3, 0x42b40000    # 90.0f

    const/4 v4, 0x1

    move-object v0, p1

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 50
    iget-object v0, p0, Landroid/support/v7/widget/CardViewEclairMr1$1;->this$0:Landroid/support/v7/widget/CardViewEclairMr1;

    iget-object v0, v0, Landroid/support/v7/widget/CardViewEclairMr1;->sCornerRect:Landroid/graphics/RectF;

    neg-float v1, v7

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/graphics/RectF;->offset(FF)V

    .line 51
    iget-object v0, p0, Landroid/support/v7/widget/CardViewEclairMr1$1;->this$0:Landroid/support/v7/widget/CardViewEclairMr1;

    iget-object v1, v0, Landroid/support/v7/widget/CardViewEclairMr1;->sCornerRect:Landroid/graphics/RectF;

    const/high16 v2, 0x42b40000    # 90.0f

    const/high16 v3, 0x42b40000    # 90.0f

    const/4 v4, 0x1

    move-object v0, p1

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 54
    iget v0, p2, Landroid/graphics/RectF;->left:F

    add-float v1, v0, p3

    iget v2, p2, Landroid/graphics/RectF;->top:F

    .line 55
    iget v0, p2, Landroid/graphics/RectF;->right:F

    sub-float v3, v0, p3

    iget v0, p2, Landroid/graphics/RectF;->top:F

    add-float v4, v0, p3

    move-object v0, p1

    move-object v5, p4

    .line 54
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 57
    iget v0, p2, Landroid/graphics/RectF;->left:F

    add-float v1, v0, p3

    .line 58
    iget v0, p2, Landroid/graphics/RectF;->bottom:F

    sub-float v2, v0, p3

    iget v0, p2, Landroid/graphics/RectF;->right:F

    sub-float v3, v0, p3

    .line 59
    iget v4, p2, Landroid/graphics/RectF;->bottom:F

    move-object v0, p1

    move-object v5, p4

    .line 57
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 62
    iget v1, p2, Landroid/graphics/RectF;->left:F

    iget v0, p2, Landroid/graphics/RectF;->top:F

    add-float v2, v0, p3

    .line 63
    iget v3, p2, Landroid/graphics/RectF;->right:F

    iget v0, p2, Landroid/graphics/RectF;->bottom:F

    sub-float v4, v0, p3

    move-object v0, p1

    move-object v5, p4

    .line 62
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 38
    return-void
.end method
