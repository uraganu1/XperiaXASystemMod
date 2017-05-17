.class public Lcom/sonyericsson/android/socialphonebook/util/formatting/phonenumber/PhoneNumberTextWatcher;
.super Landroid/telephony/PhoneNumberFormattingTextWatcher;
.source "PhoneNumberTextWatcher.java"


# static fields
.field private static final MIN_FORMAT_LENGTH:I = 0x6


# instance fields
.field private mIgnoreChanged:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "countryCode"    # Ljava/lang/String;

    .prologue
    .line 22
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/telephony/PhoneNumberFormattingTextWatcher;-><init>(Ljava/lang/String;)V

    .line 21
    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 5
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 49
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 50
    iget-boolean v1, p0, Lcom/sonyericsson/android/socialphonebook/util/formatting/phonenumber/PhoneNumberTextWatcher;->mIgnoreChanged:Z

    if-eqz v1, :cond_0

    .line 52
    return-void

    .line 54
    :cond_0
    invoke-interface {p1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 55
    .local v0, "str":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x6

    if-ge v1, v2, :cond_1

    .line 57
    iput-boolean v4, p0, Lcom/sonyericsson/android/socialphonebook/util/formatting/phonenumber/PhoneNumberTextWatcher;->mIgnoreChanged:Z

    .line 58
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-interface {p1, v3, v1, v0}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 59
    iput-boolean v3, p0, Lcom/sonyericsson/android/socialphonebook/util/formatting/phonenumber/PhoneNumberTextWatcher;->mIgnoreChanged:Z

    .line 60
    return-void

    .line 66
    .end local v0    # "str":Ljava/lang/String;
    :cond_1
    iput-boolean v4, p0, Lcom/sonyericsson/android/socialphonebook/util/formatting/phonenumber/PhoneNumberTextWatcher;->mIgnoreChanged:Z

    .line 67
    invoke-super {p0, p1}, Landroid/telephony/PhoneNumberFormattingTextWatcher;->afterTextChanged(Landroid/text/Editable;)V

    .line 68
    iput-boolean v3, p0, Lcom/sonyericsson/android/socialphonebook/util/formatting/phonenumber/PhoneNumberTextWatcher;->mIgnoreChanged:Z

    .line 48
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 1
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 31
    iget-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/util/formatting/phonenumber/PhoneNumberTextWatcher;->mIgnoreChanged:Z

    if-nez v0, :cond_0

    .line 32
    invoke-super {p0, p1, p2, p3, p4}, Landroid/telephony/PhoneNumberFormattingTextWatcher;->beforeTextChanged(Ljava/lang/CharSequence;III)V

    .line 30
    :cond_0
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 1
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 42
    iget-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/util/formatting/phonenumber/PhoneNumberTextWatcher;->mIgnoreChanged:Z

    if-nez v0, :cond_0

    .line 43
    invoke-super {p0, p1, p2, p3, p4}, Landroid/telephony/PhoneNumberFormattingTextWatcher;->onTextChanged(Ljava/lang/CharSequence;III)V

    .line 41
    :cond_0
    return-void
.end method

.method public shouldIgnoreChange()Z
    .locals 1

    .prologue
    .line 72
    iget-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/util/formatting/phonenumber/PhoneNumberTextWatcher;->mIgnoreChanged:Z

    return v0
.end method
