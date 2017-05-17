.class public Lcom/sonyericsson/android/socialphonebook/util/formatting/phonenumber/PhoneNumberFormatter;
.super Ljava/lang/Object;
.source "PhoneNumberFormatter.java"

# interfaces
.implements Lcom/sonyericsson/android/socialphonebook/util/formatting/phonenumber/Formatter;


# instance fields
.field private final mEditable:Landroid/text/SpannableStringBuilder;

.field private final mTextWatcher:Landroid/text/TextWatcher;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1}, Landroid/text/SpannableStringBuilder;-><init>()V

    iput-object v1, p0, Lcom/sonyericsson/android/socialphonebook/util/formatting/phonenumber/PhoneNumberFormatter;->mEditable:Landroid/text/SpannableStringBuilder;

    .line 33
    const-string/jumbo v1, "country_detector"

    .line 32
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/CountryDetector;

    .line 34
    .local v0, "countryDetector":Landroid/location/CountryDetector;
    new-instance v1, Lcom/sonyericsson/android/socialphonebook/util/formatting/phonenumber/PhoneNumberTextWatcher;

    invoke-virtual {v0}, Landroid/location/CountryDetector;->detectCountry()Landroid/location/Country;

    move-result-object v2

    invoke-virtual {v2}, Landroid/location/Country;->getCountryIso()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/sonyericsson/android/socialphonebook/util/formatting/phonenumber/PhoneNumberTextWatcher;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/sonyericsson/android/socialphonebook/util/formatting/phonenumber/PhoneNumberFormatter;->mTextWatcher:Landroid/text/TextWatcher;

    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/text/TextWatcher;)V
    .locals 1
    .param p1, "textWatcher"    # Landroid/text/TextWatcher;

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/util/formatting/phonenumber/PhoneNumberFormatter;->mEditable:Landroid/text/SpannableStringBuilder;

    .line 28
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/util/formatting/phonenumber/PhoneNumberFormatter;->mTextWatcher:Landroid/text/TextWatcher;

    .line 27
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "countryCode"    # Ljava/lang/String;

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/util/formatting/phonenumber/PhoneNumberFormatter;->mEditable:Landroid/text/SpannableStringBuilder;

    .line 24
    new-instance v0, Lcom/sonyericsson/android/socialphonebook/util/formatting/phonenumber/PhoneNumberTextWatcher;

    invoke-direct {v0, p1}, Lcom/sonyericsson/android/socialphonebook/util/formatting/phonenumber/PhoneNumberTextWatcher;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/util/formatting/phonenumber/PhoneNumberFormatter;->mTextWatcher:Landroid/text/TextWatcher;

    .line 23
    return-void
.end method


# virtual methods
.method public formatPhoneNumber(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    .line 39
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 40
    const-string/jumbo v0, ""

    return-object v0

    .line 43
    :cond_0
    invoke-static {p1}, Lcom/sonyericsson/android/socialphonebook/util/StringUtil;->isUriNumber(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 46
    return-object p1

    .line 49
    :cond_1
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 51
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/util/formatting/phonenumber/PhoneNumberFormatter;->mEditable:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->clear()V

    .line 52
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/util/formatting/phonenumber/PhoneNumberFormatter;->mEditable:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 53
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/util/formatting/phonenumber/PhoneNumberFormatter;->mTextWatcher:Landroid/text/TextWatcher;

    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/util/formatting/phonenumber/PhoneNumberFormatter;->mEditable:Landroid/text/SpannableStringBuilder;

    invoke-interface {v0, v1}, Landroid/text/TextWatcher;->afterTextChanged(Landroid/text/Editable;)V

    .line 54
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/util/formatting/phonenumber/PhoneNumberFormatter;->mEditable:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
