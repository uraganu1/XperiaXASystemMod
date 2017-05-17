.class public Lcom/sonyericsson/conversations/ui/ToastLengthFilter;
.super Landroid/text/InputFilter$LengthFilter;
.source "ToastLengthFilter.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mMaxLength:I

.field private mTextLimitReachedWarning:Ljava/lang/String;

.field private mToast:Landroid/widget/Toast;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "maxLength"    # I

    .prologue
    .line 22
    invoke-direct {p0, p2}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    .line 23
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/ToastLengthFilter;->mContext:Landroid/content/Context;

    .line 24
    iput p2, p0, Lcom/sonyericsson/conversations/ui/ToastLengthFilter;->mMaxLength:I

    .line 25
    new-instance v0, Landroid/widget/Toast;

    invoke-direct {v0, p1}, Landroid/widget/Toast;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/ToastLengthFilter;->mToast:Landroid/widget/Toast;

    .line 26
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 27
    const v1, 0x7f0b0135

    .line 26
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/ToastLengthFilter;->mTextLimitReachedWarning:Ljava/lang/String;

    .line 21
    return-void
.end method

.method private showToast(Ljava/lang/String;I)Landroid/widget/Toast;
    .locals 2
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "duration"    # I

    .prologue
    .line 45
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/ToastLengthFilter;->mContext:Landroid/content/Context;

    invoke-static {v1, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 46
    .local v0, "toast":Landroid/widget/Toast;
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 47
    return-object v0
.end method


# virtual methods
.method public filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .locals 5
    .param p1, "source"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "dest"    # Landroid/text/Spanned;
    .param p5, "dstart"    # I
    .param p6, "dend"    # I

    .prologue
    .line 34
    iget v2, p0, Lcom/sonyericsson/conversations/ui/ToastLengthFilter;->mMaxLength:I

    invoke-interface {p4}, Landroid/text/Spanned;->length()I

    move-result v3

    sub-int v4, p6, p5

    sub-int/2addr v3, v4

    sub-int v1, v2, v3

    .line 35
    .local v1, "spaceLeft":I
    sub-int v0, p3, p2

    .line 36
    .local v0, "inputLength":I
    if-ge v1, v0, :cond_0

    .line 37
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/ToastLengthFilter;->mToast:Landroid/widget/Toast;

    invoke-virtual {v2}, Landroid/widget/Toast;->cancel()V

    .line 38
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/ToastLengthFilter;->mTextLimitReachedWarning:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-direct {p0, v2, v3}, Lcom/sonyericsson/conversations/ui/ToastLengthFilter;->showToast(Ljava/lang/String;I)Landroid/widget/Toast;

    move-result-object v2

    iput-object v2, p0, Lcom/sonyericsson/conversations/ui/ToastLengthFilter;->mToast:Landroid/widget/Toast;

    .line 41
    :cond_0
    invoke-super/range {p0 .. p6}, Landroid/text/InputFilter$LengthFilter;->filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;

    move-result-object v2

    return-object v2
.end method
