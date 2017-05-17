.class Lcom/sonyericsson/conversations/ui/TextInputInfoBoxHandler$SizeFilter;
.super Ljava/lang/Object;
.source "TextInputInfoBoxHandler.java"

# interfaces
.implements Landroid/text/InputFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/conversations/ui/TextInputInfoBoxHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SizeFilter"
.end annotation


# instance fields
.field private mCharset:Ljava/nio/charset/Charset;

.field private mMaxSize:I


# direct methods
.method public constructor <init>(ILjava/nio/charset/Charset;)V
    .locals 0
    .param p1, "maxSize"    # I
    .param p2, "charset"    # Ljava/nio/charset/Charset;

    .prologue
    .line 732
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 733
    iput p1, p0, Lcom/sonyericsson/conversations/ui/TextInputInfoBoxHandler$SizeFilter;->mMaxSize:I

    .line 734
    iput-object p2, p0, Lcom/sonyericsson/conversations/ui/TextInputInfoBoxHandler$SizeFilter;->mCharset:Ljava/nio/charset/Charset;

    .line 732
    return-void
.end method

.method private getCharSequenceSize(Ljava/lang/CharSequence;)I
    .locals 2
    .param p1, "charSequence"    # Ljava/lang/CharSequence;

    .prologue
    .line 768
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/TextInputInfoBoxHandler$SizeFilter;->mCharset:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    array-length v0, v0

    return v0
.end method


# virtual methods
.method public filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .locals 7
    .param p1, "source"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "dest"    # Landroid/text/Spanned;
    .param p5, "dStart"    # I
    .param p6, "dEnd"    # I

    .prologue
    const/4 v6, 0x0

    .line 740
    if-ne p2, p3, :cond_0

    .line 741
    return-object v6

    .line 744
    :cond_0
    iget v3, p0, Lcom/sonyericsson/conversations/ui/TextInputInfoBoxHandler$SizeFilter;->mMaxSize:I

    .line 745
    invoke-direct {p0, p4}, Lcom/sonyericsson/conversations/ui/TextInputInfoBoxHandler$SizeFilter;->getCharSequenceSize(Ljava/lang/CharSequence;)I

    move-result v4

    invoke-interface {p4, p5, p6}, Landroid/text/Spanned;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/sonyericsson/conversations/ui/TextInputInfoBoxHandler$SizeFilter;->getCharSequenceSize(Ljava/lang/CharSequence;)I

    move-result v5

    sub-int/2addr v4, v5

    .line 744
    sub-int v1, v3, v4

    .line 748
    .local v1, "maxAddSize":I
    if-gtz v1, :cond_1

    .line 749
    const-string/jumbo v3, ""

    return-object v3

    .line 753
    :cond_1
    invoke-interface {p1, p2, p3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/sonyericsson/conversations/ui/TextInputInfoBoxHandler$SizeFilter;->getCharSequenceSize(Ljava/lang/CharSequence;)I

    move-result v3

    if-le v3, v1, :cond_3

    .line 754
    move v0, p2

    .line 755
    .local v0, "currEnd":I
    move v2, p2

    .line 756
    .local v2, "prevEnd":I
    :goto_0
    invoke-interface {p1, p2, v0}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/sonyericsson/conversations/ui/TextInputInfoBoxHandler$SizeFilter;->getCharSequenceSize(Ljava/lang/CharSequence;)I

    move-result v3

    if-gt v3, v1, :cond_2

    .line 757
    move v2, v0

    .line 759
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/String;->codePointAt(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->charCount(I)I

    move-result v3

    add-int/2addr v0, v3

    goto :goto_0

    .line 761
    :cond_2
    invoke-interface {p1, p2, v2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v3

    return-object v3

    .line 764
    .end local v0    # "currEnd":I
    .end local v2    # "prevEnd":I
    :cond_3
    return-object v6
.end method
