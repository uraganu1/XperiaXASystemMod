.class public Lcom/sonyericsson/android/socialphonebook/widget/AbbreviatedTextView;
.super Landroid/widget/TextView;
.source "AbbreviatedTextView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/socialphonebook/widget/AbbreviatedTextView$TextAbbreviator;
    }
.end annotation


# static fields
.field public static final TAG_ABBREVIATION_ARRAY:I


# instance fields
.field private mAbbreviator:Lcom/sonyericsson/android/socialphonebook/widget/AbbreviatedTextView$TextAbbreviator;

.field private mBiDiFormatter:Landroid/text/BidiFormatter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const-class v0, Lcom/sonyericsson/android/socialphonebook/widget/AbbreviatedTextView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    sput v0, Lcom/sonyericsson/android/socialphonebook/widget/AbbreviatedTextView;->TAG_ABBREVIATION_ARRAY:I

    .line 18
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 30
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 25
    new-instance v0, Lcom/sonyericsson/android/socialphonebook/widget/AbbreviatedTextView$TextAbbreviator;

    invoke-direct {v0}, Lcom/sonyericsson/android/socialphonebook/widget/AbbreviatedTextView$TextAbbreviator;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/widget/AbbreviatedTextView;->mAbbreviator:Lcom/sonyericsson/android/socialphonebook/widget/AbbreviatedTextView$TextAbbreviator;

    .line 27
    invoke-static {}, Landroid/text/BidiFormatter;->getInstance()Landroid/text/BidiFormatter;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/widget/AbbreviatedTextView;->mBiDiFormatter:Landroid/text/BidiFormatter;

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 34
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 25
    new-instance v0, Lcom/sonyericsson/android/socialphonebook/widget/AbbreviatedTextView$TextAbbreviator;

    invoke-direct {v0}, Lcom/sonyericsson/android/socialphonebook/widget/AbbreviatedTextView$TextAbbreviator;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/widget/AbbreviatedTextView;->mAbbreviator:Lcom/sonyericsson/android/socialphonebook/widget/AbbreviatedTextView$TextAbbreviator;

    .line 27
    invoke-static {}, Landroid/text/BidiFormatter;->getInstance()Landroid/text/BidiFormatter;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/widget/AbbreviatedTextView;->mBiDiFormatter:Landroid/text/BidiFormatter;

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 38
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 25
    new-instance v0, Lcom/sonyericsson/android/socialphonebook/widget/AbbreviatedTextView$TextAbbreviator;

    invoke-direct {v0}, Lcom/sonyericsson/android/socialphonebook/widget/AbbreviatedTextView$TextAbbreviator;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/widget/AbbreviatedTextView;->mAbbreviator:Lcom/sonyericsson/android/socialphonebook/widget/AbbreviatedTextView$TextAbbreviator;

    .line 27
    invoke-static {}, Landroid/text/BidiFormatter;->getInstance()Landroid/text/BidiFormatter;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/widget/AbbreviatedTextView;->mBiDiFormatter:Landroid/text/BidiFormatter;

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    .line 43
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 25
    new-instance v0, Lcom/sonyericsson/android/socialphonebook/widget/AbbreviatedTextView$TextAbbreviator;

    invoke-direct {v0}, Lcom/sonyericsson/android/socialphonebook/widget/AbbreviatedTextView$TextAbbreviator;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/widget/AbbreviatedTextView;->mAbbreviator:Lcom/sonyericsson/android/socialphonebook/widget/AbbreviatedTextView$TextAbbreviator;

    .line 27
    invoke-static {}, Landroid/text/BidiFormatter;->getInstance()Landroid/text/BidiFormatter;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/widget/AbbreviatedTextView;->mBiDiFormatter:Landroid/text/BidiFormatter;

    .line 42
    return-void
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .locals 5
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 48
    sget v2, Lcom/sonyericsson/android/socialphonebook/widget/AbbreviatedTextView;->TAG_ABBREVIATION_ARRAY:I

    invoke-virtual {p0, v2}, Lcom/sonyericsson/android/socialphonebook/widget/AbbreviatedTextView;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    .line 50
    .local v1, "abbreviationArray":[Ljava/lang/String;
    if-eqz v1, :cond_0

    array-length v2, v1

    if-lez v2, :cond_0

    .line 51
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/widget/AbbreviatedTextView;->mAbbreviator:Lcom/sonyericsson/android/socialphonebook/widget/AbbreviatedTextView$TextAbbreviator;

    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/widget/AbbreviatedTextView;->getWidth()I

    move-result v3

    .line 52
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/widget/AbbreviatedTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v4

    .line 51
    invoke-virtual {v2, v1, v3, v4}, Lcom/sonyericsson/android/socialphonebook/widget/AbbreviatedTextView$TextAbbreviator;->getAbbreviatedText([Ljava/lang/String;ILandroid/graphics/Paint;)Ljava/lang/String;

    move-result-object v0

    .line 53
    .local v0, "abbreviation":Ljava/lang/String;
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/widget/AbbreviatedTextView;->mBiDiFormatter:Landroid/text/BidiFormatter;

    invoke-virtual {v2, v0}, Landroid/text/BidiFormatter;->unicodeWrap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/sonyericsson/android/socialphonebook/widget/AbbreviatedTextView;->setText(Ljava/lang/CharSequence;)V

    .line 56
    .end local v0    # "abbreviation":Ljava/lang/String;
    :cond_0
    invoke-super/range {p0 .. p5}, Landroid/widget/TextView;->onLayout(ZIIII)V

    .line 47
    return-void
.end method
