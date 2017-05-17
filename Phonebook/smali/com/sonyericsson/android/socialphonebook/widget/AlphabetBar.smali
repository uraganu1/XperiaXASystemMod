.class public Lcom/sonyericsson/android/socialphonebook/widget/AlphabetBar;
.super Lcom/sonyericsson/android/socialphonebook/widget/AnimatedIndexedScrollBar;
.source "AlphabetBar.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/socialphonebook/widget/AnimatedIndexedScrollBar;-><init>(Landroid/content/Context;)V

    .line 24
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/android/socialphonebook/widget/AnimatedIndexedScrollBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 34
    return-void
.end method


# virtual methods
.method protected init(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 40
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 42
    .local v1, "rs":Landroid/content/res/Resources;
    const/high16 v2, 0x7f0c0000

    .line 41
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 43
    .local v0, "labels":[Ljava/lang/String;
    const/high16 v2, 0x7f0b0000

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 44
    new-instance v2, Lcom/sonyericsson/android/socialphonebook/widget/CollapsibleSection;

    invoke-direct {v2, v0}, Lcom/sonyericsson/android/socialphonebook/widget/CollapsibleSection;-><init>([Ljava/lang/String;)V

    iput-object v2, p0, Lcom/sonyericsson/android/socialphonebook/widget/AlphabetBar;->mSection:Lcom/sonyericsson/android/socialphonebook/widget/IndexedScrollBarSection;

    .line 48
    :goto_0
    invoke-super {p0, p1}, Lcom/sonyericsson/android/socialphonebook/widget/AnimatedIndexedScrollBar;->init(Landroid/content/Context;)V

    .line 39
    return-void

    .line 46
    :cond_0
    new-instance v2, Lcom/sonyericsson/android/socialphonebook/widget/SimpleSection;

    invoke-direct {v2, v0}, Lcom/sonyericsson/android/socialphonebook/widget/SimpleSection;-><init>([Ljava/lang/String;)V

    iput-object v2, p0, Lcom/sonyericsson/android/socialphonebook/widget/AlphabetBar;->mSection:Lcom/sonyericsson/android/socialphonebook/widget/IndexedScrollBarSection;

    goto :goto_0
.end method
