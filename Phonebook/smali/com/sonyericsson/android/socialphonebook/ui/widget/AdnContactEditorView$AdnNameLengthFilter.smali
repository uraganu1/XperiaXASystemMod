.class Lcom/sonyericsson/android/socialphonebook/ui/widget/AdnContactEditorView$AdnNameLengthFilter;
.super Ljava/lang/Object;
.source "AdnContactEditorView.java"

# interfaces
.implements Landroid/text/InputFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/socialphonebook/ui/widget/AdnContactEditorView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AdnNameLengthFilter"
.end annotation


# instance fields
.field private final mMax:I


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "maxLength"    # I

    .prologue
    .line 330
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 331
    iput p1, p0, Lcom/sonyericsson/android/socialphonebook/ui/widget/AdnContactEditorView$AdnNameLengthFilter;->mMax:I

    .line 330
    return-void
.end method


# virtual methods
.method public filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .locals 6
    .param p1, "source"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "dest"    # Landroid/text/Spanned;
    .param p5, "dstart"    # I
    .param p6, "dend"    # I

    .prologue
    .line 337
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/sonyericsson/android/socialphonebook/util/AdnHelper;->containUnicode(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 338
    invoke-interface {p4}, Landroid/text/Spanned;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/sonyericsson/android/socialphonebook/util/AdnHelper;->containUnicode(Ljava/lang/String;)Z

    move-result v0

    .line 341
    :goto_0
    if-eqz v0, :cond_1

    iget v4, p0, Lcom/sonyericsson/android/socialphonebook/ui/widget/AdnContactEditorView$AdnNameLengthFilter;->mMax:I

    div-int/lit8 v4, v4, 0x2

    add-int/lit8 v3, v4, -0x1

    .line 344
    .local v3, "max":I
    :goto_1
    invoke-interface {p4}, Landroid/text/Spanned;->length()I

    move-result v4

    sub-int v5, p6, p5

    sub-int/2addr v4, v5

    sub-int v1, v3, v4

    .line 346
    .local v1, "keep":I
    if-gtz v1, :cond_2

    .line 347
    const-string/jumbo v4, ""

    return-object v4

    .line 337
    .end local v1    # "keep":I
    .end local v3    # "max":I
    :cond_0
    const/4 v0, 0x1

    .local v0, "containsUnicode":Z
    goto :goto_0

    .line 341
    .end local v0    # "containsUnicode":Z
    :cond_1
    iget v3, p0, Lcom/sonyericsson/android/socialphonebook/ui/widget/AdnContactEditorView$AdnNameLengthFilter;->mMax:I

    .restart local v3    # "max":I
    goto :goto_1

    .line 348
    .restart local v1    # "keep":I
    :cond_2
    sub-int v4, p3, p2

    if-lt v1, v4, :cond_3

    .line 349
    const/4 v4, 0x0

    return-object v4

    .line 351
    :cond_3
    add-int v2, p2, v1

    .line 352
    .local v2, "keepEnd":I
    add-int/lit8 v4, v2, -0x1

    invoke-interface {p1, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 353
    add-int/lit8 v2, v2, -0x1

    .line 354
    if-ne v2, p2, :cond_4

    .line 355
    const-string/jumbo v4, ""

    return-object v4

    .line 358
    :cond_4
    invoke-interface {p1, p2, v2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v4

    return-object v4
.end method
