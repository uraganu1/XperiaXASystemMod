.class public Lcom/sonymobile/generativeartwork/language/LanguageData;
.super Ljava/lang/Object;
.source "LanguageData.java"


# instance fields
.field public isLanguageAllowed:Z

.field public final mCharacter:[C

.field public final mOriginalChars:[C

.field public numSkippedLetters:I


# direct methods
.method public constructor <init>(CC)V
    .locals 4
    .param p1, "letter1"    # C
    .param p2, "letter2"    # C

    .prologue
    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-array v0, v1, [C

    iput-object v0, p0, Lcom/sonymobile/generativeartwork/language/LanguageData;->mCharacter:[C

    .line 27
    new-array v0, v1, [C

    iput-object v0, p0, Lcom/sonymobile/generativeartwork/language/LanguageData;->mOriginalChars:[C

    .line 32
    iput-boolean v2, p0, Lcom/sonymobile/generativeartwork/language/LanguageData;->isLanguageAllowed:Z

    .line 37
    iput v3, p0, Lcom/sonymobile/generativeartwork/language/LanguageData;->numSkippedLetters:I

    .line 45
    iget-object v0, p0, Lcom/sonymobile/generativeartwork/language/LanguageData;->mCharacter:[C

    int-to-char v1, p1

    aput-char v1, v0, v3

    .line 46
    iget-object v0, p0, Lcom/sonymobile/generativeartwork/language/LanguageData;->mCharacter:[C

    int-to-char v1, p2

    aput-char v1, v0, v2

    .line 47
    iget-object v0, p0, Lcom/sonymobile/generativeartwork/language/LanguageData;->mCharacter:[C

    iget-object v1, p0, Lcom/sonymobile/generativeartwork/language/LanguageData;->mOriginalChars:[C

    iget-object v2, p0, Lcom/sonymobile/generativeartwork/language/LanguageData;->mCharacter:[C

    array-length v2, v2

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 48
    invoke-static {p0}, Lcom/sonymobile/generativeartwork/language/LanguageRules;->apply(Lcom/sonymobile/generativeartwork/language/LanguageData;)V

    .line 49
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 56
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "CharacterData [mCharacter1="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/generativeartwork/language/LanguageData;->mCharacter:[C

    const/4 v2, 0x0

    aget-char v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mCharacter2="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/generativeartwork/language/LanguageData;->mCharacter:[C

    const/4 v2, 0x1

    aget-char v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", isLanguageAllowed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/sonymobile/generativeartwork/language/LanguageData;->isLanguageAllowed:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
