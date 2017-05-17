.class public Lcom/android/ex/editstyledtext/EditStyledText$EditStyledTextSpans$MarqueeSpan;
.super Landroid/text/style/CharacterStyle;
.source "EditStyledText.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ex/editstyledtext/EditStyledText$EditStyledTextSpans;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MarqueeSpan"
.end annotation


# static fields
.field public static final ALTERNATE:I = 0x1

.field public static final NOTHING:I = 0x2

.field public static final SCROLL:I


# instance fields
.field private mMarqueeColor:I

.field private mType:I


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "type"    # I

    .prologue
    .line 2542
    const v0, 0xffffff

    invoke-direct {p0, p1, v0}, Lcom/android/ex/editstyledtext/EditStyledText$EditStyledTextSpans$MarqueeSpan;-><init>(II)V

    .line 2541
    return-void
.end method

.method public constructor <init>(II)V
    .locals 1
    .param p1, "type"    # I
    .param p2, "bgc"    # I

    .prologue
    .line 2535
    invoke-direct {p0}, Landroid/text/style/CharacterStyle;-><init>()V

    .line 2536
    iput p1, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditStyledTextSpans$MarqueeSpan;->mType:I

    .line 2537
    invoke-direct {p0, p1}, Lcom/android/ex/editstyledtext/EditStyledText$EditStyledTextSpans$MarqueeSpan;->checkType(I)Z

    .line 2538
    invoke-direct {p0, p1, p2}, Lcom/android/ex/editstyledtext/EditStyledText$EditStyledTextSpans$MarqueeSpan;->getMarqueeColor(II)I

    move-result v0

    iput v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditStyledTextSpans$MarqueeSpan;->mMarqueeColor:I

    .line 2535
    return-void
.end method

.method private checkType(I)Z
    .locals 3
    .param p1, "type"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v2, 0x0

    .line 2587
    if-eqz p1, :cond_0

    if-ne p1, v0, :cond_1

    .line 2588
    :cond_0
    return v0

    .line 2590
    :cond_1
    const-string/jumbo v0, "EditStyledTextSpan"

    const-string/jumbo v1, "--- Invalid type of MarqueeSpan"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2591
    return v2
.end method

.method private getMarqueeColor(II)I
    .locals 7
    .param p1, "type"    # I
    .param p2, "bgc"    # I

    .prologue
    const v6, 0xffffff

    const/16 v4, 0x80

    .line 2555
    invoke-static {p2}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    .line 2556
    .local v0, "a":I
    invoke-static {p2}, Landroid/graphics/Color;->red(I)I

    move-result v3

    .line 2557
    .local v3, "r":I
    invoke-static {p2}, Landroid/graphics/Color;->green(I)I

    move-result v2

    .line 2558
    .local v2, "g":I
    invoke-static {p2}, Landroid/graphics/Color;->blue(I)I

    move-result v1

    .line 2559
    .local v1, "b":I
    if-nez v0, :cond_0

    .line 2560
    const/16 v0, 0x80

    .line 2562
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 2580
    const-string/jumbo v4, "EditStyledText"

    const-string/jumbo v5, "--- getMarqueeColor: got illigal marquee ID."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2581
    return v6

    .line 2564
    :pswitch_0
    if-le v3, v4, :cond_1

    .line 2565
    div-int/lit8 v3, v3, 0x2

    .line 2583
    :goto_0
    invoke-static {v0, v3, v2, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v4

    return v4

    .line 2567
    :cond_1
    rsub-int v4, v3, 0xff

    div-int/lit8 v3, v4, 0x2

    goto :goto_0

    .line 2571
    :pswitch_1
    if-le v2, v4, :cond_2

    .line 2572
    div-int/lit8 v2, v2, 0x2

    goto :goto_0

    .line 2574
    :cond_2
    rsub-int v4, v2, 0xff

    div-int/lit8 v2, v4, 0x2

    goto :goto_0

    .line 2578
    :pswitch_2
    return v6

    .line 2562
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public getType()I
    .locals 1

    .prologue
    .line 2546
    iget v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditStyledTextSpans$MarqueeSpan;->mType:I

    return v0
.end method

.method public resetColor(I)V
    .locals 1
    .param p1, "bgc"    # I

    .prologue
    .line 2550
    iget v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditStyledTextSpans$MarqueeSpan;->mType:I

    invoke-direct {p0, v0, p1}, Lcom/android/ex/editstyledtext/EditStyledText$EditStyledTextSpans$MarqueeSpan;->getMarqueeColor(II)I

    move-result v0

    iput v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditStyledTextSpans$MarqueeSpan;->mMarqueeColor:I

    .line 2549
    return-void
.end method

.method public updateDrawState(Landroid/text/TextPaint;)V
    .locals 1
    .param p1, "tp"    # Landroid/text/TextPaint;

    .prologue
    .line 2597
    iget v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditStyledTextSpans$MarqueeSpan;->mMarqueeColor:I

    iput v0, p1, Landroid/text/TextPaint;->bgColor:I

    .line 2596
    return-void
.end method
