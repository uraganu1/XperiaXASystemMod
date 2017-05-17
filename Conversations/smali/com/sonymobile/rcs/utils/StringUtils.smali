.class public Lcom/sonymobile/rcs/utils/StringUtils;
.super Ljava/lang/Object;
.source "StringUtils.java"


# static fields
.field public static final UTF8:Ljava/nio/charset/Charset;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const-string/jumbo v0, "UTF-8"

    .line 42
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/rcs/utils/StringUtils;->UTF8:Ljava/nio/charset/Charset;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decodeIso(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 115
    if-eqz p0, :cond_0

    :try_start_0
    const-string/jumbo v1, "iso-8859-1"

    .line 119
    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-static {v1}, Lcom/sonymobile/rcs/utils/StringUtils;->decodeUTF8([B)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 116
    :cond_0
    return-object v2

    .line 119
    :catch_0
    move-exception v0

    .line 121
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    return-object v2
.end method

.method public static decodeUTF8(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 102
    if-eqz p0, :cond_0

    .line 105
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lcom/sonymobile/rcs/utils/StringUtils;->decodeUTF8([B)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 103
    :cond_0
    return-object v0
.end method

.method public static decodeUTF8([B)Ljava/lang/String;
    .locals 4
    .param p0, "b"    # [B

    .prologue
    const/4 v3, 0x0

    .line 85
    if-eqz p0, :cond_0

    .line 89
    :try_start_0
    new-instance v1, Ljava/lang/String;

    const-string/jumbo v2, "UTF-8"

    invoke-direct {v1, p0, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 86
    :cond_0
    return-object v3

    .line 89
    :catch_0
    move-exception v0

    .line 91
    .local v0, "e":Ljava/lang/Exception;
    return-object v3
.end method

.method public static decodeXML(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "text"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 173
    if-eqz p0, :cond_0

    const-string/jumbo v0, "&lt;"

    const-string/jumbo v1, "<"

    .line 177
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v0, "&gt;"

    const-string/jumbo v1, ">"

    .line 178
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v0, "&quot;"

    const-string/jumbo v1, "\""

    .line 179
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v0, "&#039;"

    const-string/jumbo v1, "\'"

    .line 180
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v0, "&amp;"

    const-string/jumbo v1, "&"

    .line 181
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 183
    return-object p0

    .line 174
    :cond_0
    return-object v0
.end method

.method public static encodeUTF8(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 51
    if-eqz p0, :cond_0

    .line 55
    :try_start_0
    new-instance v1, Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    const-string/jumbo v3, "UTF-8"

    invoke-direct {v1, v2, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 52
    :cond_0
    return-object v4

    .line 55
    :catch_0
    move-exception v0

    .line 57
    .local v0, "e":Ljava/lang/Exception;
    return-object v4
.end method

.method public static encodeXML(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "text"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 138
    if-eqz p0, :cond_0

    .line 142
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 143
    .local v2, "result":Ljava/lang/StringBuilder;
    new-instance v1, Ljava/text/StringCharacterIterator;

    invoke-direct {v1, p0}, Ljava/text/StringCharacterIterator;-><init>(Ljava/lang/String;)V

    .line 144
    .local v1, "iterator":Ljava/text/StringCharacterIterator;
    invoke-virtual {v1}, Ljava/text/StringCharacterIterator;->current()C

    move-result v3

    int-to-char v0, v3

    .local v0, "character":C
    :goto_0
    const v3, 0xffff

    .line 145
    if-ne v0, v3, :cond_1

    .line 163
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 139
    .end local v0    # "character":C
    .end local v1    # "iterator":Ljava/text/StringCharacterIterator;
    .end local v2    # "result":Ljava/lang/StringBuilder;
    :cond_0
    return-object v3

    .restart local v0    # "character":C
    .restart local v1    # "iterator":Ljava/text/StringCharacterIterator;
    .restart local v2    # "result":Ljava/lang/StringBuilder;
    :cond_1
    const/16 v3, 0x3c

    .line 146
    if-eq v0, v3, :cond_2

    const/16 v3, 0x3e

    .line 148
    if-eq v0, v3, :cond_3

    const/16 v3, 0x22

    .line 150
    if-eq v0, v3, :cond_4

    const/16 v3, 0x27

    .line 152
    if-eq v0, v3, :cond_5

    const/16 v3, 0x26

    .line 154
    if-eq v0, v3, :cond_6

    .line 159
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 161
    :goto_1
    invoke-virtual {v1}, Ljava/text/StringCharacterIterator;->next()C

    move-result v3

    int-to-char v0, v3

    goto :goto_0

    :cond_2
    const-string/jumbo v3, "&lt;"

    .line 147
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_3
    const-string/jumbo v3, "&gt;"

    .line 149
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_4
    const-string/jumbo v3, "&quot;"

    .line 151
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_5
    const-string/jumbo v3, "&#039;"

    .line 153
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_6
    const-string/jumbo v3, "&amp;"

    .line 155
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method public static isEmpty(Ljava/lang/String;)Z
    .locals 2
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 227
    if-nez p0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0
.end method

.method public static removeQuotes(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "input"    # Ljava/lang/String;

    .prologue
    .line 214
    if-nez p0, :cond_1

    .line 217
    :cond_0
    :goto_0
    return-object p0

    :cond_1
    const-string/jumbo v0, "\""

    .line 214
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "\""

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 215
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method
