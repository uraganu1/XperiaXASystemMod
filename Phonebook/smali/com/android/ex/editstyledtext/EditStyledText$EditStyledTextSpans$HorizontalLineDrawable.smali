.class public Lcom/android/ex/editstyledtext/EditStyledText$EditStyledTextSpans$HorizontalLineDrawable;
.super Landroid/graphics/drawable/ShapeDrawable;
.source "EditStyledText.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ex/editstyledtext/EditStyledText$EditStyledTextSpans;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HorizontalLineDrawable"
.end annotation


# static fields
.field private static DBG_HL:Z


# instance fields
.field private mSpannable:Landroid/text/Spannable;

.field private mWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 2701
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/ex/editstyledtext/EditStyledText$EditStyledTextSpans$HorizontalLineDrawable;->DBG_HL:Z

    .line 2698
    return-void
.end method

.method public constructor <init>(IILandroid/text/Spannable;)V
    .locals 1
    .param p1, "color"    # I
    .param p2, "width"    # I
    .param p3, "spannable"    # Landroid/text/Spannable;

    .prologue
    .line 2704
    new-instance v0, Landroid/graphics/drawable/shapes/RectShape;

    invoke-direct {v0}, Landroid/graphics/drawable/shapes/RectShape;-><init>()V

    invoke-direct {p0, v0}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    .line 2705
    iput-object p3, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditStyledTextSpans$HorizontalLineDrawable;->mSpannable:Landroid/text/Spannable;

    .line 2706
    iput p2, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditStyledTextSpans$HorizontalLineDrawable;->mWidth:I

    .line 2707
    invoke-direct {p0, p1}, Lcom/android/ex/editstyledtext/EditStyledText$EditStyledTextSpans$HorizontalLineDrawable;->renewColor(I)V

    .line 2708
    invoke-virtual {p0, p2}, Lcom/android/ex/editstyledtext/EditStyledText$EditStyledTextSpans$HorizontalLineDrawable;->renewBounds(I)V

    .line 2703
    return-void
.end method

.method private getParentSpan()Lcom/android/ex/editstyledtext/EditStyledText$EditStyledTextSpans$HorizontalLineSpan;
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 2754
    iget-object v2, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditStyledTextSpans$HorizontalLineDrawable;->mSpannable:Landroid/text/Spannable;

    .line 2756
    .local v2, "text":Landroid/text/Spannable;
    invoke-interface {v2}, Landroid/text/Spannable;->length()I

    move-result v4

    const-class v5, Lcom/android/ex/editstyledtext/EditStyledText$EditStyledTextSpans$HorizontalLineSpan;

    invoke-interface {v2, v3, v4, v5}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/android/ex/editstyledtext/EditStyledText$EditStyledTextSpans$HorizontalLineSpan;

    .line 2757
    .local v1, "images":[Lcom/android/ex/editstyledtext/EditStyledText$EditStyledTextSpans$HorizontalLineSpan;
    array-length v4, v1

    if-lez v4, :cond_1

    .line 2758
    array-length v4, v1

    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v0, v1, v3

    .line 2759
    .local v0, "image":Lcom/android/ex/editstyledtext/EditStyledText$EditStyledTextSpans$HorizontalLineSpan;
    invoke-virtual {v0}, Lcom/android/ex/editstyledtext/EditStyledText$EditStyledTextSpans$HorizontalLineSpan;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    if-ne v5, p0, :cond_0

    .line 2760
    return-object v0

    .line 2758
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2764
    .end local v0    # "image":Lcom/android/ex/editstyledtext/EditStyledText$EditStyledTextSpans$HorizontalLineSpan;
    :cond_1
    const-string/jumbo v3, "EditStyledTextSpan"

    const-string/jumbo v4, "---renewBounds: Couldn\'t find"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2765
    const/4 v3, 0x0

    return-object v3
.end method

.method private renewColor()V
    .locals 8

    .prologue
    .line 2739
    invoke-direct {p0}, Lcom/android/ex/editstyledtext/EditStyledText$EditStyledTextSpans$HorizontalLineDrawable;->getParentSpan()Lcom/android/ex/editstyledtext/EditStyledText$EditStyledTextSpans$HorizontalLineSpan;

    move-result-object v1

    .line 2740
    .local v1, "parent":Lcom/android/ex/editstyledtext/EditStyledText$EditStyledTextSpans$HorizontalLineSpan;
    iget-object v4, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditStyledTextSpans$HorizontalLineDrawable;->mSpannable:Landroid/text/Spannable;

    .line 2741
    .local v4, "text":Landroid/text/Spannable;
    invoke-interface {v4, v1}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v3

    .line 2742
    .local v3, "start":I
    invoke-interface {v4, v1}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v0

    .line 2744
    .local v0, "end":I
    const-class v5, Landroid/text/style/ForegroundColorSpan;

    invoke-interface {v4, v3, v0, v5}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/text/style/ForegroundColorSpan;

    .line 2745
    .local v2, "spans":[Landroid/text/style/ForegroundColorSpan;
    sget-boolean v5, Lcom/android/ex/editstyledtext/EditStyledText$EditStyledTextSpans$HorizontalLineDrawable;->DBG_HL:Z

    if-eqz v5, :cond_0

    .line 2746
    const-string/jumbo v5, "EditStyledTextSpan"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "--- renewColor:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    array-length v7, v2

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2748
    :cond_0
    array-length v5, v2

    if-lez v5, :cond_1

    .line 2749
    array-length v5, v2

    add-int/lit8 v5, v5, -0x1

    aget-object v5, v2, v5

    invoke-virtual {v5}, Landroid/text/style/ForegroundColorSpan;->getForegroundColor()I

    move-result v5

    invoke-direct {p0, v5}, Lcom/android/ex/editstyledtext/EditStyledText$EditStyledTextSpans$HorizontalLineDrawable;->renewColor(I)V

    .line 2738
    :cond_1
    return-void
.end method

.method private renewColor(I)V
    .locals 3
    .param p1, "color"    # I

    .prologue
    .line 2732
    sget-boolean v0, Lcom/android/ex/editstyledtext/EditStyledText$EditStyledTextSpans$HorizontalLineDrawable;->DBG_HL:Z

    if-eqz v0, :cond_0

    .line 2733
    const-string/jumbo v0, "EditStyledTextSpan"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "--- renewColor:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2735
    :cond_0
    invoke-virtual {p0}, Lcom/android/ex/editstyledtext/EditStyledText$EditStyledTextSpans$HorizontalLineDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 2731
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 2713
    invoke-direct {p0}, Lcom/android/ex/editstyledtext/EditStyledText$EditStyledTextSpans$HorizontalLineDrawable;->renewColor()V

    .line 2714
    new-instance v0, Landroid/graphics/Rect;

    iget v1, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditStyledTextSpans$HorizontalLineDrawable;->mWidth:I

    const/4 v2, 0x0

    const/16 v3, 0x9

    const/16 v4, 0xb

    invoke-direct {v0, v2, v3, v1, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 2715
    .local v0, "rect":Landroid/graphics/Rect;
    invoke-virtual {p0}, Lcom/android/ex/editstyledtext/EditStyledText$EditStyledTextSpans$HorizontalLineDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 2712
    return-void
.end method

.method public renewBounds(I)V
    .locals 5
    .param p1, "width"    # I

    .prologue
    const/4 v4, 0x0

    .line 2720
    const/16 v0, 0x14

    .line 2721
    .local v0, "HEIGHT":I
    sget-boolean v1, Lcom/android/ex/editstyledtext/EditStyledText$EditStyledTextSpans$HorizontalLineDrawable;->DBG_HL:Z

    if-eqz v1, :cond_0

    .line 2722
    const-string/jumbo v1, "EditStyledTextSpan"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "--- renewBounds:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2719
    :cond_0
    const/16 v1, 0x14

    .line 2724
    if-le p1, v1, :cond_1

    .line 2725
    add-int/lit8 p1, p1, -0x14

    .line 2727
    :cond_1
    iput p1, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditStyledTextSpans$HorizontalLineDrawable;->mWidth:I

    .line 2728
    invoke-virtual {p0, v4, v4, p1, v0}, Lcom/android/ex/editstyledtext/EditStyledText$EditStyledTextSpans$HorizontalLineDrawable;->setBounds(IIII)V

    .line 2718
    return-void
.end method
