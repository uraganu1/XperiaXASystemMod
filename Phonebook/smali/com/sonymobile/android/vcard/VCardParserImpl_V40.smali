.class Lcom/sonymobile/android/vcard/VCardParserImpl_V40;
.super Lcom/sonymobile/android/vcard/VCardParserImpl_V30;
.source "VCardParserImpl_V40.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/sonymobile/android/vcard/VCardParserImpl_V30;-><init>()V

    .line 39
    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/sonymobile/android/vcard/VCardParserImpl_V30;-><init>(I)V

    .line 43
    return-void
.end method

.method public static unescapeCharacter(C)Ljava/lang/String;
    .locals 1

    .prologue
    const/16 v0, 0x6e

    .line 87
    if-ne p0, v0, :cond_1

    :cond_0
    const-string/jumbo v0, "\n"

    .line 88
    return-object v0

    :cond_1
    const/16 v0, 0x4e

    .line 87
    if-eq p0, v0, :cond_0

    const/16 v0, 0x72

    .line 89
    if-ne p0, v0, :cond_3

    :cond_2
    const-string/jumbo v0, "\r"

    .line 90
    return-object v0

    :cond_3
    const/16 v0, 0x52

    .line 89
    if-eq p0, v0, :cond_2

    .line 92
    invoke-static {p0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static unescapeText(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .prologue
    .line 66
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 67
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v0, 0x0

    .line 68
    :goto_0
    if-lt v0, v2, :cond_0

    .line 83
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 69
    :cond_0
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    int-to-char v3, v3

    const/16 v4, 0x5c

    .line 70
    if-eq v3, v4, :cond_2

    .line 80
    :cond_1
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 68
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 70
    :cond_2
    add-int/lit8 v4, v2, -0x1

    if-ge v0, v4, :cond_1

    .line 71
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    int-to-char v3, v3

    const/16 v4, 0x6e

    .line 72
    if-ne v3, v4, :cond_4

    :cond_3
    const-string/jumbo v3, "\n"

    .line 73
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_4
    const/16 v4, 0x4e

    .line 72
    if-eq v3, v4, :cond_3

    const/16 v4, 0x72

    .line 74
    if-ne v3, v4, :cond_6

    :cond_5
    const-string/jumbo v3, "\r"

    .line 75
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_6
    const/16 v4, 0x52

    .line 74
    if-eq v3, v4, :cond_5

    .line 77
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1
.end method


# virtual methods
.method protected getKnownPropertyNameSet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 98
    sget-object v0, Lcom/sonymobile/android/vcard/VCardParser_V40;->sKnownPropertyNameSet:Ljava/util/Set;

    return-object v0
.end method

.method protected getVersion()I
    .locals 1

    .prologue
    const/4 v0, 0x2

    .line 47
    return v0
.end method

.method protected getVersionString()Ljava/lang/String;
    .locals 1

    .prologue
    const-string/jumbo v0, "4.0"

    .line 52
    return-object v0
.end method

.method protected maybeUnescapeText(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    invoke-static {p1}, Lcom/sonymobile/android/vcard/VCardParserImpl_V40;->unescapeText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
