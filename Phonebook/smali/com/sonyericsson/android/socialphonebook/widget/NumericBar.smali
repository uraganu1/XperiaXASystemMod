.class public Lcom/sonyericsson/android/socialphonebook/widget/NumericBar;
.super Lcom/sonyericsson/android/socialphonebook/widget/SimpleIndexedScrollBar;
.source "NumericBar.java"


# static fields
.field public static final SHORT_LIST_MAX_COUNT:I = 0x1e

.field public static final SHORT_LIST_STEP:I = 0x5

.field public static final STEP:I = 0xa


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/socialphonebook/widget/SimpleIndexedScrollBar;-><init>(Landroid/content/Context;)V

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 49
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/android/socialphonebook/widget/SimpleIndexedScrollBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 48
    return-void
.end method


# virtual methods
.method protected init(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 54
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a0001

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 56
    .local v1, "maxNumber":I
    const/16 v4, 0x1e

    if-gt v1, v4, :cond_0

    .line 57
    const/4 v3, 0x5

    .line 61
    .local v3, "step":I
    :goto_0
    div-int v4, v1, v3

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/sonyericsson/android/socialphonebook/widget/NumericBar;->mSectionCnt:I

    .line 62
    iget v4, p0, Lcom/sonyericsson/android/socialphonebook/widget/NumericBar;->mSectionCnt:I

    new-array v2, v4, [Ljava/lang/String;

    .line 63
    .local v2, "sections":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget v4, p0, Lcom/sonyericsson/android/socialphonebook/widget/NumericBar;->mSectionCnt:I

    if-ge v0, v4, :cond_2

    .line 64
    if-nez v0, :cond_1

    .line 65
    const-string/jumbo v4, "1"

    aput-object v4, v2, v0

    .line 63
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 59
    .end local v0    # "i":I
    .end local v2    # "sections":[Ljava/lang/String;
    .end local v3    # "step":I
    :cond_0
    const/16 v3, 0xa

    .restart local v3    # "step":I
    goto :goto_0

    .line 67
    .restart local v0    # "i":I
    .restart local v2    # "sections":[Ljava/lang/String;
    :cond_1
    mul-int v4, v0, v3

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v0

    goto :goto_2

    .line 70
    :cond_2
    new-instance v4, Lcom/sonyericsson/android/socialphonebook/widget/SimpleSection;

    invoke-direct {v4, v2}, Lcom/sonyericsson/android/socialphonebook/widget/SimpleSection;-><init>([Ljava/lang/String;)V

    iput-object v4, p0, Lcom/sonyericsson/android/socialphonebook/widget/NumericBar;->mSection:Lcom/sonyericsson/android/socialphonebook/widget/IndexedScrollBarSection;

    .line 71
    invoke-super {p0, p1}, Lcom/sonyericsson/android/socialphonebook/widget/SimpleIndexedScrollBar;->init(Landroid/content/Context;)V

    .line 53
    return-void
.end method
