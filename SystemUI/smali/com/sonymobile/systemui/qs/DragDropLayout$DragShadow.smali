.class Lcom/sonymobile/systemui/qs/DragDropLayout$DragShadow;
.super Landroid/view/View$DragShadowBuilder;
.source "DragDropLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/systemui/qs/DragDropLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DragShadow"
.end annotation


# instance fields
.field private mBitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;

.field private mHeight:I

.field private mWidth:I

.field final synthetic this$0:Lcom/sonymobile/systemui/qs/DragDropLayout;


# direct methods
.method public constructor <init>(Lcom/sonymobile/systemui/qs/DragDropLayout;Landroid/content/Context;Landroid/view/View;)V
    .locals 1
    .param p1, "this$0"    # Lcom/sonymobile/systemui/qs/DragDropLayout;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "view"    # Landroid/view/View;

    .prologue
    .line 406
    iput-object p1, p0, Lcom/sonymobile/systemui/qs/DragDropLayout$DragShadow;->this$0:Lcom/sonymobile/systemui/qs/DragDropLayout;

    .line 407
    invoke-direct {p0, p3}, Landroid/view/View$DragShadowBuilder;-><init>(Landroid/view/View;)V

    .line 408
    invoke-virtual {p3}, Landroid/view/View;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/sonymobile/systemui/qs/DragDropLayout$DragShadow;->mWidth:I

    .line 409
    invoke-virtual {p3}, Landroid/view/View;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/sonymobile/systemui/qs/DragDropLayout$DragShadow;->mHeight:I

    .line 410
    invoke-direct {p0, p3}, Lcom/sonymobile/systemui/qs/DragDropLayout$DragShadow;->createBitmapDrawable(Landroid/view/View;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/systemui/qs/DragDropLayout$DragShadow;->mBitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;

    .line 406
    return-void
.end method

.method private createBitmap(Landroid/view/View;)Landroid/graphics/Bitmap;
    .locals 9
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 433
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v4

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v5

    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 432
    invoke-static {v4, v5, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 434
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 436
    .local v1, "canvas":Landroid/graphics/Canvas;
    new-instance v3, Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v4

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v5

    invoke-direct {v3, v7, v7, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 437
    .local v3, "rect":Landroid/graphics/Rect;
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    .line 438
    .local v2, "paint":Landroid/graphics/Paint;
    invoke-virtual {v2, v8}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 439
    iget-object v4, p0, Lcom/sonymobile/systemui/qs/DragDropLayout$DragShadow;->this$0:Lcom/sonymobile/systemui/qs/DragDropLayout;

    invoke-virtual {v4}, Lcom/sonymobile/systemui/qs/DragDropLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b004b

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 440
    sget-object v4, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 441
    invoke-virtual {v1, v3, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 443
    new-instance v2, Landroid/graphics/Paint;

    .end local v2    # "paint":Landroid/graphics/Paint;
    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    .line 444
    .restart local v2    # "paint":Landroid/graphics/Paint;
    invoke-virtual {v2, v8}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 445
    const v4, -0x777778

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 446
    sget-object v4, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 447
    const/high16 v4, 0x40400000    # 3.0f

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 448
    invoke-virtual {v1, v3, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 450
    invoke-virtual {p1, v1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 451
    return-object v0
.end method

.method private createBitmapDrawable(Landroid/view/View;)Landroid/graphics/drawable/BitmapDrawable;
    .locals 5
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x0

    .line 425
    invoke-direct {p0, p1}, Lcom/sonymobile/systemui/qs/DragDropLayout$DragShadow;->createBitmap(Landroid/view/View;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 426
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 427
    .local v1, "drawable":Landroid/graphics/drawable/BitmapDrawable;
    iget v2, p0, Lcom/sonymobile/systemui/qs/DragDropLayout$DragShadow;->mWidth:I

    iget v3, p0, Lcom/sonymobile/systemui/qs/DragDropLayout$DragShadow;->mHeight:I

    invoke-virtual {v1, v4, v4, v2, v3}, Landroid/graphics/drawable/BitmapDrawable;->setBounds(IIII)V

    .line 428
    return-object v1
.end method


# virtual methods
.method public onDrawShadow(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 421
    iget-object v0, p0, Lcom/sonymobile/systemui/qs/DragDropLayout$DragShadow;->mBitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/BitmapDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 420
    return-void
.end method

.method public onProvideShadowMetrics(Landroid/graphics/Point;Landroid/graphics/Point;)V
    .locals 2
    .param p1, "size"    # Landroid/graphics/Point;
    .param p2, "touch"    # Landroid/graphics/Point;

    .prologue
    .line 415
    iget v0, p0, Lcom/sonymobile/systemui/qs/DragDropLayout$DragShadow;->mWidth:I

    iget v1, p0, Lcom/sonymobile/systemui/qs/DragDropLayout$DragShadow;->mHeight:I

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Point;->set(II)V

    .line 416
    iget-object v0, p0, Lcom/sonymobile/systemui/qs/DragDropLayout$DragShadow;->this$0:Lcom/sonymobile/systemui/qs/DragDropLayout;

    invoke-static {v0}, Lcom/sonymobile/systemui/qs/DragDropLayout;->-get12(Lcom/sonymobile/systemui/qs/DragDropLayout;)F

    move-result v0

    float-to-int v0, v0

    iget-object v1, p0, Lcom/sonymobile/systemui/qs/DragDropLayout$DragShadow;->this$0:Lcom/sonymobile/systemui/qs/DragDropLayout;

    invoke-static {v1}, Lcom/sonymobile/systemui/qs/DragDropLayout;->-get13(Lcom/sonymobile/systemui/qs/DragDropLayout;)F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p2, v0, v1}, Landroid/graphics/Point;->set(II)V

    .line 414
    return-void
.end method
