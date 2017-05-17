.class public Lcom/sonyericsson/android/socialphonebook/smartsearch/SearchInfo;
.super Ljava/lang/Object;
.source "SearchInfo.java"


# static fields
.field private static final INTERNATIONAL_CALL_PREFIXES:C = '+'


# instance fields
.field private mHasCCC:Z

.field private mIsInvalid:Z

.field private mKey:Ljava/lang/String;

.field private mListener:Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper$OnQueryCompleteListener;

.field private mNumber:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 35
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sonyericsson/android/socialphonebook/smartsearch/SearchInfo;-><init>(Ljava/lang/String;Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper$OnQueryCompleteListener;)V

    .line 34
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper$OnQueryCompleteListener;)V
    .locals 1
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "listener"    # Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper$OnQueryCompleteListener;

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SearchInfo;->mKey:Ljava/lang/String;

    .line 40
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SearchInfo;->mKey:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SearchInfo;->mIsInvalid:Z

    .line 41
    iget-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SearchInfo;->mIsInvalid:Z

    if-nez v0, :cond_0

    .line 42
    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/smartsearch/SearchInfo;->parse()V

    .line 44
    :cond_0
    iput-object p2, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SearchInfo;->mListener:Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper$OnQueryCompleteListener;

    .line 38
    return-void
.end method

.method private parse()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 93
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SearchInfo;->mKey:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v4, :cond_1

    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SearchInfo;->mKey:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x2b

    if-ne v2, v3, :cond_1

    .line 94
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SearchInfo;->mKey:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 95
    .local v1, "tmp":Ljava/lang/String;
    invoke-static {v1}, Lcom/sonyericsson/android/socialphonebook/util/CountryCodesUtil;->getCountryCodes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 96
    .local v0, "codes":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-le v2, v3, :cond_0

    .line 97
    iput-boolean v4, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SearchInfo;->mHasCCC:Z

    .line 98
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SearchInfo;->mNumber:Ljava/lang/String;

    .line 92
    .end local v0    # "codes":Ljava/lang/String;
    .end local v1    # "tmp":Ljava/lang/String;
    :goto_0
    return-void

    .line 100
    .restart local v0    # "codes":Ljava/lang/String;
    .restart local v1    # "tmp":Ljava/lang/String;
    :cond_0
    iput-object v1, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SearchInfo;->mNumber:Ljava/lang/String;

    goto :goto_0

    .line 103
    .end local v0    # "codes":Ljava/lang/String;
    .end local v1    # "tmp":Ljava/lang/String;
    :cond_1
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SearchInfo;->mKey:Ljava/lang/String;

    iput-object v2, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SearchInfo;->mNumber:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public getKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SearchInfo;->mKey:Ljava/lang/String;

    return-object v0
.end method

.method public getListener()Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper$OnQueryCompleteListener;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SearchInfo;->mListener:Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper$OnQueryCompleteListener;

    return-object v0
.end method

.method public getNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SearchInfo;->mNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getSearchNumberSQLStatement(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "columnName"    # Ljava/lang/String;

    .prologue
    .line 64
    iget-boolean v2, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SearchInfo;->mIsInvalid:Z

    if-nez v2, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 66
    :cond_0
    const-string/jumbo v2, "0"

    return-object v2

    .line 69
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 70
    .local v1, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " LIKE \'%"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SearchInfo;->mKey:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "%\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    iget-boolean v2, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SearchInfo;->mHasCCC:Z

    if-eqz v2, :cond_2

    .line 75
    const-string/jumbo v2, " OR "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SearchInfo;->mNumber:Ljava/lang/String;

    .line 77
    .local v0, "number":Ljava/lang/String;
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " LIKE \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "%\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .end local v0    # "number":Ljava/lang/String;
    :cond_2
    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public hasCountryCode()Z
    .locals 1

    .prologue
    .line 52
    iget-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SearchInfo;->mHasCCC:Z

    return v0
.end method

.method public isInvalid()Z
    .locals 1

    .prologue
    .line 48
    iget-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SearchInfo;->mIsInvalid:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SearchInfo;->mKey:Ljava/lang/String;

    return-object v0
.end method
