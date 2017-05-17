.class public final Lgov2/nist/javax2/sip/header/AcceptLanguage;
.super Lgov2/nist/javax2/sip/header/ParametersHeader;
.source "AcceptLanguage.java"

# interfaces
.implements Ljavax2/sip/header/Header;
.implements Ljavax2/sip/header/Parameters;


# static fields
.field private static final serialVersionUID:J = -0x3e16c6fcfe290177L


# instance fields
.field protected languageRange:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const-string/jumbo v0, "Accept-Language"

    .line 71
    invoke-direct {p0, v0}, Lgov2/nist/javax2/sip/header/ParametersHeader;-><init>(Ljava/lang/String;)V

    .line 72
    return-void
.end method


# virtual methods
.method protected encodeBody()Ljava/lang/String;
    .locals 3

    .prologue
    .line 80
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 81
    .local v0, "encoding":Ljava/lang/StringBuffer;
    iget-object v1, p0, Lgov2/nist/javax2/sip/header/AcceptLanguage;->languageRange:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 84
    :goto_0
    iget-object v1, p0, Lgov2/nist/javax2/sip/header/AcceptLanguage;->parameters:Lgov2/nist/core/NameValueList;

    invoke-virtual {v1}, Lgov2/nist/core/NameValueList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 87
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 82
    :cond_0
    iget-object v1, p0, Lgov2/nist/javax2/sip/header/AcceptLanguage;->languageRange:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_1
    const-string/jumbo v1, ";"

    .line 85
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lgov2/nist/javax2/sip/header/AcceptLanguage;->parameters:Lgov2/nist/core/NameValueList;

    invoke-virtual {v2}, Lgov2/nist/core/NameValueList;->encode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1
.end method

.method public setLanguageRange(Ljava/lang/String;)V
    .locals 1
    .param p1, "languageRange"    # Ljava/lang/String;

    .prologue
    .line 135
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lgov2/nist/javax2/sip/header/AcceptLanguage;->languageRange:Ljava/lang/String;

    .line 136
    return-void
.end method

.method public setQValue(F)V
    .locals 4
    .param p1, "q"    # F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax2/sip/InvalidArgumentException;
        }
    .end annotation

    .prologue
    .line 150
    float-to-double v0, p1

    const-wide/16 v2, 0x0

    cmpg-double v0, v0, v2

    if-gez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    if-nez v0, :cond_0

    float-to-double v0, p1

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    cmpl-double v0, v0, v2

    if-lez v0, :cond_2

    :cond_0
    new-instance v0, Ljavax2/sip/InvalidArgumentException;

    const-string/jumbo v1, "qvalue out of range!"

    invoke-direct {v0, v1}, Ljavax2/sip/InvalidArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    const/high16 v0, -0x40800000    # -1.0f

    .line 151
    cmpl-float v0, p1, v0

    if-nez v0, :cond_3

    const-string/jumbo v0, "q"

    .line 152
    invoke-virtual {p0, v0}, Lgov2/nist/javax2/sip/header/AcceptLanguage;->removeParameter(Ljava/lang/String;)V

    .line 155
    :goto_1
    return-void

    .line 154
    :cond_3
    new-instance v0, Lgov2/nist/core/NameValue;

    const-string/jumbo v1, "q"

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lgov2/nist/core/NameValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lgov2/nist/javax2/sip/header/AcceptLanguage;->setParameter(Lgov2/nist/core/NameValue;)V

    goto :goto_1
.end method
