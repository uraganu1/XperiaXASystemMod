.class public Lcom/android/common/Rfc822Validator;
.super Ljava/lang/Object;
.source "Rfc822Validator.java"

# interfaces
.implements Landroid/widget/AutoCompleteTextView$Validator;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final DOMAIN_REGEXP:Ljava/lang/String; = "(([a-zA-Z0-9\u00a0-\ud7ff\uf900-\ufdcf\ufdf0-\uffef][a-zA-Z0-9\u00a0-\ud7ff\uf900-\ufdcf\ufdf0-\uffef\\-]{0,61})?[a-zA-Z0-9\u00a0-\ud7ff\uf900-\ufdcf\ufdf0-\uffef]\\.)+[a-zA-Z0-9\u00a0-\ud7ff\uf900-\ufdcf\ufdf0-\uffef][a-zA-Z0-9\u00a0-\ud7ff\uf900-\ufdcf\ufdf0-\uffef\\-]{0,61}[a-zA-Z0-9\u00a0-\ud7ff\uf900-\ufdcf\ufdf0-\uffef]"

.field private static final EMAIL_ADDRESS_LOCALPART_REGEXP:Ljava/lang/String; = "((?!\\s)[\\.\\w!#$%&\'*+\\-/=?^`{|}~\u0080-\ufffe])+"

.field private static final EMAIL_ADDRESS_PATTERN:Ljava/util/regex/Pattern;

.field private static final GOOD_IRI_CHAR:Ljava/lang/String; = "a-zA-Z0-9\u00a0-\ud7ff\uf900-\ufdcf\ufdf0-\uffef"

.field private static final LABEL_REGEXP:Ljava/lang/String; = "([a-zA-Z0-9\u00a0-\ud7ff\uf900-\ufdcf\ufdf0-\uffef][a-zA-Z0-9\u00a0-\ud7ff\uf900-\ufdcf\ufdf0-\uffef\\-]{0,61})?[a-zA-Z0-9\u00a0-\ud7ff\uf900-\ufdcf\ufdf0-\uffef]"


# instance fields
.field private mDomain:Ljava/lang/String;

.field private mRemoveInvalid:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 80
    const-string/jumbo v0, "((?!\\s)[\\.\\w!#$%&\'*+\\-/=?^`{|}~\u0080-\ufffe])+@(([a-zA-Z0-9\u00a0-\ud7ff\uf900-\ufdcf\ufdf0-\uffef][a-zA-Z0-9\u00a0-\ud7ff\uf900-\ufdcf\ufdf0-\uffef\\-]{0,61})?[a-zA-Z0-9\u00a0-\ud7ff\uf900-\ufdcf\ufdf0-\uffef]\\.)+[a-zA-Z0-9\u00a0-\ud7ff\uf900-\ufdcf\ufdf0-\uffef][a-zA-Z0-9\u00a0-\ud7ff\uf900-\ufdcf\ufdf0-\uffef\\-]{0,61}[a-zA-Z0-9\u00a0-\ud7ff\uf900-\ufdcf\ufdf0-\uffef]"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 79
    sput-object v0, Lcom/android/common/Rfc822Validator;->EMAIL_ADDRESS_PATTERN:Ljava/util/regex/Pattern;

    .line 41
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "domain"    # Ljava/lang/String;

    .prologue
    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/common/Rfc822Validator;->mRemoveInvalid:Z

    .line 90
    iput-object p1, p0, Lcom/android/common/Rfc822Validator;->mDomain:Ljava/lang/String;

    .line 89
    return-void
.end method

.method private removeIllegalCharacters(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 120
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 121
    .local v3, "result":Ljava/lang/StringBuilder;
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    .line 122
    .local v2, "length":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_2

    .line 123
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 132
    .local v0, "c":C
    const/16 v4, 0x20

    if-le v0, v4, :cond_0

    const/16 v4, 0x7e

    if-le v0, v4, :cond_1

    .line 122
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 136
    :cond_1
    const/16 v4, 0x28

    if-eq v0, v4, :cond_0

    const/16 v4, 0x29

    if-eq v0, v4, :cond_0

    const/16 v4, 0x3c

    if-eq v0, v4, :cond_0

    const/16 v4, 0x3e

    if-eq v0, v4, :cond_0

    .line 137
    const/16 v4, 0x40

    if-eq v0, v4, :cond_0

    const/16 v4, 0x2c

    if-eq v0, v4, :cond_0

    const/16 v4, 0x3b

    if-eq v0, v4, :cond_0

    const/16 v4, 0x3a

    if-eq v0, v4, :cond_0

    .line 138
    const/16 v4, 0x5c

    if-eq v0, v4, :cond_0

    const/16 v4, 0x22

    if-eq v0, v4, :cond_0

    const/16 v4, 0x5b

    if-eq v0, v4, :cond_0

    const/16 v4, 0x5d

    if-eq v0, v4, :cond_0

    .line 142
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 144
    .end local v0    # "c":C
    :cond_2
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method


# virtual methods
.method public fixText(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 12
    .param p1, "cs"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v11, 0x0

    .line 152
    invoke-static {p1}, Landroid/text/TextUtils;->getTrimmedLength(Ljava/lang/CharSequence;)I

    move-result v8

    if-nez v8, :cond_0

    const-string/jumbo v8, ""

    return-object v8

    .line 154
    :cond_0
    invoke-static {p1}, Landroid/text/util/Rfc822Tokenizer;->tokenize(Ljava/lang/CharSequence;)[Landroid/text/util/Rfc822Token;

    move-result-object v7

    .line 155
    .local v7, "tokens":[Landroid/text/util/Rfc822Token;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 157
    .local v5, "sb":Ljava/lang/StringBuilder;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v8, v7

    if-ge v3, v8, :cond_8

    .line 158
    aget-object v8, v7, v3

    invoke-virtual {v8}, Landroid/text/util/Rfc822Token;->getAddress()Ljava/lang/String;

    move-result-object v6

    .line 160
    .local v6, "text":Ljava/lang/String;
    iget-boolean v8, p0, Lcom/android/common/Rfc822Validator;->mRemoveInvalid:Z

    if-eqz v8, :cond_1

    invoke-virtual {p0, v6}, Lcom/android/common/Rfc822Validator;->isValid(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 163
    :cond_1
    const/16 v8, 0x40

    invoke-virtual {v6, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    .line 164
    .local v4, "index":I
    if-gez v4, :cond_4

    .line 166
    iget-object v8, p0, Lcom/android/common/Rfc822Validator;->mDomain:Ljava/lang/String;

    if-eqz v8, :cond_2

    .line 167
    aget-object v8, v7, v3

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0, v6}, Lcom/android/common/Rfc822Validator;->removeIllegalCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "@"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/common/Rfc822Validator;->mDomain:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/text/util/Rfc822Token;->setAddress(Ljava/lang/String;)V

    .line 184
    :cond_2
    :goto_1
    aget-object v8, v7, v3

    invoke-virtual {v8}, Landroid/text/util/Rfc822Token;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    add-int/lit8 v8, v3, 0x1

    array-length v9, v7

    if-ge v8, v9, :cond_3

    .line 186
    const-string/jumbo v8, ", "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    .end local v4    # "index":I
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 171
    .restart local v4    # "index":I
    :cond_4
    invoke-virtual {v6, v11, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/common/Rfc822Validator;->removeIllegalCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 172
    .local v2, "fix":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 177
    add-int/lit8 v8, v4, 0x1

    invoke-virtual {v6, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/common/Rfc822Validator;->removeIllegalCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 178
    .local v0, "domain":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v8

    if-nez v8, :cond_6

    const/4 v1, 0x1

    .line 179
    .local v1, "emptyDomain":Z
    :goto_2
    if-eqz v1, :cond_5

    iget-object v8, p0, Lcom/android/common/Rfc822Validator;->mDomain:Ljava/lang/String;

    if-eqz v8, :cond_2

    .line 180
    :cond_5
    aget-object v8, v7, v3

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "@"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    if-nez v1, :cond_7

    .end local v0    # "domain":Ljava/lang/String;
    :goto_3
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/text/util/Rfc822Token;->setAddress(Ljava/lang/String;)V

    goto :goto_1

    .line 178
    .end local v1    # "emptyDomain":Z
    .restart local v0    # "domain":Ljava/lang/String;
    :cond_6
    const/4 v1, 0x0

    .restart local v1    # "emptyDomain":Z
    goto :goto_2

    .line 180
    :cond_7
    iget-object v0, p0, Lcom/android/common/Rfc822Validator;->mDomain:Ljava/lang/String;

    goto :goto_3

    .line 190
    .end local v0    # "domain":Ljava/lang/String;
    .end local v1    # "emptyDomain":Z
    .end local v2    # "fix":Ljava/lang/String;
    .end local v4    # "index":I
    .end local v6    # "text":Ljava/lang/String;
    :cond_8
    return-object v5
.end method

.method public isValid(Ljava/lang/CharSequence;)Z
    .locals 4
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v1, 0x0

    .line 97
    invoke-static {p1}, Landroid/text/util/Rfc822Tokenizer;->tokenize(Ljava/lang/CharSequence;)[Landroid/text/util/Rfc822Token;

    move-result-object v0

    .line 98
    .local v0, "tokens":[Landroid/text/util/Rfc822Token;
    array-length v2, v0

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 99
    sget-object v2, Lcom/android/common/Rfc822Validator;->EMAIL_ADDRESS_PATTERN:Ljava/util/regex/Pattern;

    .line 100
    aget-object v1, v0, v1

    invoke-virtual {v1}, Landroid/text/util/Rfc822Token;->getAddress()Ljava/lang/String;

    move-result-object v1

    .line 99
    invoke-virtual {v2, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    .line 98
    :cond_0
    return v1
.end method

.method public setRemoveInvalid(Z)V
    .locals 0
    .param p1, "remove"    # Z

    .prologue
    .line 112
    iput-boolean p1, p0, Lcom/android/common/Rfc822Validator;->mRemoveInvalid:Z

    .line 111
    return-void
.end method
