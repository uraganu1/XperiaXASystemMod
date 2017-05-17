.class public Lcom/sonyericsson/android/socialphonebook/widget/SimpleSection;
.super Lcom/sonyericsson/android/socialphonebook/widget/IndexedScrollBarSection;
.source "SimpleSection.java"


# instance fields
.field private mLabels:[Ljava/lang/String;

.field private mLongestLabelIndex:I

.field private mTextScaleXs:[F

.field private mTextWidths:[F


# direct methods
.method constructor <init>([Ljava/lang/String;)V
    .locals 5
    .param p1, "labels"    # [Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 18
    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/widget/IndexedScrollBarSection;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/widget/SimpleSection;->mLabels:[Ljava/lang/String;

    .line 20
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/widget/SimpleSection;->mLabels:[Ljava/lang/String;

    array-length v2, v2

    new-array v2, v2, [F

    iput-object v2, p0, Lcom/sonyericsson/android/socialphonebook/widget/SimpleSection;->mTextScaleXs:[F

    .line 21
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/widget/SimpleSection;->mTextScaleXs:[F

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v2, v3}, Ljava/util/Arrays;->fill([FF)V

    .line 22
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/widget/SimpleSection;->mLabels:[Ljava/lang/String;

    array-length v2, v2

    new-array v2, v2, [F

    iput-object v2, p0, Lcom/sonyericsson/android/socialphonebook/widget/SimpleSection;->mTextWidths:[F

    .line 24
    iput v4, p0, Lcom/sonyericsson/android/socialphonebook/widget/SimpleSection;->mLongestLabelIndex:I

    .line 25
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/widget/SimpleSection;->mLabels:[Ljava/lang/String;

    aget-object v1, v2, v4

    .line 26
    .local v1, "max":Ljava/lang/String;
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/widget/SimpleSection;->mLabels:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 27
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/widget/SimpleSection;->mLabels:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 28
    iput v0, p0, Lcom/sonyericsson/android/socialphonebook/widget/SimpleSection;->mLongestLabelIndex:I

    .line 29
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/widget/SimpleSection;->mLabels:[Ljava/lang/String;

    aget-object v1, v2, v0

    .line 26
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 18
    :cond_1
    return-void
.end method


# virtual methods
.method public changeIfNecessary(I)Z
    .locals 1
    .param p1, "sectIdx"    # I

    .prologue
    .line 86
    const/4 v0, 0x0

    return v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/widget/SimpleSection;->mLabels:[Ljava/lang/String;

    array-length v0, v0

    return v0
.end method

.method public getCountForFontSizeCalculation()I
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/widget/SimpleSection;->mLabels:[Ljava/lang/String;

    array-length v0, v0

    return v0
.end method

.method public getLabel(I)Ljava/lang/String;
    .locals 1
    .param p1, "sectIdx"    # I

    .prologue
    .line 35
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/widget/SimpleSection;->mLabels:[Ljava/lang/String;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getLongestLabelIndex()I
    .locals 1

    .prologue
    .line 66
    iget v0, p0, Lcom/sonyericsson/android/socialphonebook/widget/SimpleSection;->mLongestLabelIndex:I

    return v0
.end method

.method public getLongestLabelString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 70
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/widget/SimpleSection;->mLabels:[Ljava/lang/String;

    iget v1, p0, Lcom/sonyericsson/android/socialphonebook/widget/SimpleSection;->mLongestLabelIndex:I

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getLongestLabelTextWidth()F
    .locals 2

    .prologue
    .line 74
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/widget/SimpleSection;->mTextWidths:[F

    iget v1, p0, Lcom/sonyericsson/android/socialphonebook/widget/SimpleSection;->mLongestLabelIndex:I

    aget v0, v0, v1

    return v0
.end method

.method public getPositionCount()I
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/widget/SimpleSection;->mLabels:[Ljava/lang/String;

    array-length v0, v0

    return v0
.end method

.method public getPositionFromSection(I)I
    .locals 0
    .param p1, "sectIdx"    # I

    .prologue
    .line 82
    return p1
.end method

.method public getPositionLabel(I)Ljava/lang/String;
    .locals 1
    .param p1, "posIdx"    # I

    .prologue
    .line 38
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/widget/SimpleSection;->mLabels:[Ljava/lang/String;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getPositionTextScaleXs(I)F
    .locals 1
    .param p1, "posIdx"    # I

    .prologue
    .line 62
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/widget/SimpleSection;->mTextScaleXs:[F

    aget v0, v0, p1

    return v0
.end method

.method public getSectionFromPosition(I)I
    .locals 0
    .param p1, "posIdx"    # I

    .prologue
    .line 78
    return p1
.end method

.method public getTextScaleXs(I)F
    .locals 1
    .param p1, "sectIdx"    # I

    .prologue
    .line 54
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/widget/SimpleSection;->mTextScaleXs:[F

    aget v0, v0, p1

    return v0
.end method

.method public getTextWidth(I)F
    .locals 1
    .param p1, "sectIdx"    # I

    .prologue
    .line 93
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/widget/SimpleSection;->mTextWidths:[F

    aget v0, v0, p1

    return v0
.end method

.method public setBoxHeight(F)V
    .locals 0
    .param p1, "boxHeight"    # F

    .prologue
    .line 100
    return-void
.end method

.method public setTextScaleXs(IF)V
    .locals 1
    .param p1, "sectIdx"    # I
    .param p2, "scale"    # F

    .prologue
    .line 58
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/widget/SimpleSection;->mTextScaleXs:[F

    aput p2, v0, p1

    .line 57
    return-void
.end method

.method public setTextWidth(IF)V
    .locals 1
    .param p1, "sectIdx"    # I
    .param p2, "width"    # F

    .prologue
    .line 97
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/widget/SimpleSection;->mTextWidths:[F

    aput p2, v0, p1

    .line 96
    return-void
.end method

.method public stateChangePostProcessing()V
    .locals 0

    .prologue
    .line 89
    return-void
.end method
