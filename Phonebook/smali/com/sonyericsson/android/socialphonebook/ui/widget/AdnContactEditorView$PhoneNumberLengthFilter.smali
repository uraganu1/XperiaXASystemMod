.class Lcom/sonyericsson/android/socialphonebook/ui/widget/AdnContactEditorView$PhoneNumberLengthFilter;
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
    name = "PhoneNumberLengthFilter"
.end annotation


# instance fields
.field private final mMax:I


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "maxLength"    # I

    .prologue
    .line 370
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 371
    iput p1, p0, Lcom/sonyericsson/android/socialphonebook/ui/widget/AdnContactEditorView$PhoneNumberLengthFilter;->mMax:I

    .line 370
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
    .line 377
    invoke-interface {p4}, Landroid/text/Spanned;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 380
    .local v2, "sDest":Ljava/lang/String;
    iget v3, p0, Lcom/sonyericsson/android/socialphonebook/ui/widget/AdnContactEditorView$PhoneNumberLengthFilter;->mMax:I

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    sub-int v5, p6, p5

    sub-int/2addr v4, v5

    sub-int v0, v3, v4

    .line 382
    .local v0, "keep":I
    if-gtz v0, :cond_0

    .line 383
    const-string/jumbo v3, ""

    return-object v3

    .line 384
    :cond_0
    sub-int v3, p3, p2

    if-lt v0, v3, :cond_1

    .line 385
    const/4 v3, 0x0

    return-object v3

    .line 387
    :cond_1
    add-int v1, p2, v0

    .line 388
    .local v1, "keepEnd":I
    add-int/lit8 v3, v1, -0x1

    invoke-interface {p1, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 389
    add-int/lit8 v1, v1, -0x1

    .line 390
    if-ne v1, p2, :cond_2

    .line 391
    const-string/jumbo v3, ""

    return-object v3

    .line 394
    :cond_2
    invoke-interface {p1, p2, v1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method
