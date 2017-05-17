.class public Lgov2/nist/javax2/sip/header/AcceptLanguageList;
.super Lgov2/nist/javax2/sip/header/SIPHeaderList;
.source "AcceptLanguageList.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgov2/nist/javax2/sip/header/SIPHeaderList",
        "<",
        "Lgov2/nist/javax2/sip/header/AcceptLanguage;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x2da707f5d2dc9048L


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const-class v0, Lgov2/nist/javax2/sip/header/AcceptLanguage;

    const-string/jumbo v1, "Accept-Language"

    .line 53
    invoke-direct {p0, v0, v1}, Lgov2/nist/javax2/sip/header/SIPHeaderList;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    .line 54
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 47
    new-instance v0, Lgov2/nist/javax2/sip/header/AcceptLanguageList;

    invoke-direct {v0}, Lgov2/nist/javax2/sip/header/AcceptLanguageList;-><init>()V

    .line 48
    .local v0, "retval":Lgov2/nist/javax2/sip/header/AcceptLanguageList;
    iget-object v1, p0, Lgov2/nist/javax2/sip/header/AcceptLanguageList;->hlist:Ljava/util/List;

    invoke-virtual {v0, v1}, Lgov2/nist/javax2/sip/header/AcceptLanguageList;->clonehlist(Ljava/util/List;)Lgov2/nist/javax2/sip/header/SIPHeaderList;

    .line 49
    return-object v0
.end method

.method public getFirst()Lgov2/nist/javax2/sip/header/AcceptLanguage;
    .locals 2

    .prologue
    .line 57
    invoke-super {p0}, Lgov2/nist/javax2/sip/header/SIPHeaderList;->getFirst()Ljavax2/sip/header/Header;

    move-result-object v0

    check-cast v0, Lgov2/nist/javax2/sip/header/AcceptLanguage;

    .line 58
    .local v0, "retval":Lgov2/nist/javax2/sip/header/AcceptLanguage;
    if-nez v0, :cond_0

    .line 61
    new-instance v1, Lgov2/nist/javax2/sip/header/AcceptLanguage;

    invoke-direct {v1}, Lgov2/nist/javax2/sip/header/AcceptLanguage;-><init>()V

    return-object v1

    .line 59
    :cond_0
    return-object v0
.end method

.method public bridge synthetic getFirst()Ljavax2/sip/header/Header;
    .locals 1

    .prologue
    .line 41
    invoke-virtual {p0}, Lgov2/nist/javax2/sip/header/AcceptLanguageList;->getFirst()Lgov2/nist/javax2/sip/header/AcceptLanguage;

    move-result-object v0

    return-object v0
.end method
