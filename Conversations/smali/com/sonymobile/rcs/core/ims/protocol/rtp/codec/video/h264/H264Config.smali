.class public Lcom/sonymobile/rcs/core/ims/protocol/rtp/codec/video/h264/H264Config;
.super Ljava/lang/Object;
.source "H264Config.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCodecProfileLevelId(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "codecParams"    # Ljava/lang/String;

    .prologue
    const-string/jumbo v0, "profile-level-id"

    .line 129
    invoke-static {v0, p0}, Lcom/sonymobile/rcs/core/ims/protocol/rtp/codec/video/h264/H264Config;->getParameterValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getParameterValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "paramKey"    # Ljava/lang/String;
    .param p1, "params"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 143
    .local v2, "value":Ljava/lang/String;
    if-nez p1, :cond_1

    .line 154
    .end local v2    # "value":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v2

    .line 143
    .restart local v2    # "value":Ljava/lang/String;
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 145
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "(?<="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "=).*?(?=;|$)"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 146
    .local v1, "p":Ljava/util/regex/Pattern;
    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 147
    .local v0, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x0

    .line 148
    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/util/regex/PatternSyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .local v2, "value":Ljava/lang/String;
    goto :goto_0

    .line 152
    .end local v0    # "m":Ljava/util/regex/Matcher;
    .end local v1    # "p":Ljava/util/regex/Pattern;
    .local v2, "value":Ljava/lang/String;
    :catch_0
    move-exception v3

    goto :goto_0
.end method
