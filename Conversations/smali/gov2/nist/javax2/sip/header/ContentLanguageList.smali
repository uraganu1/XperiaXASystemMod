.class public final Lgov2/nist/javax2/sip/header/ContentLanguageList;
.super Lgov2/nist/javax2/sip/header/SIPHeaderList;
.source "ContentLanguageList.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgov2/nist/javax2/sip/header/SIPHeaderList",
        "<",
        "Lgov2/nist/javax2/sip/header/ContentLanguage;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x49956ed2c3a07141L


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const-class v0, Lgov2/nist/javax2/sip/header/ContentLanguage;

    const-string/jumbo v1, "Content-Language"

    .line 55
    invoke-direct {p0, v0, v1}, Lgov2/nist/javax2/sip/header/SIPHeaderList;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    .line 56
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 46
    new-instance v0, Lgov2/nist/javax2/sip/header/ContentLanguageList;

    invoke-direct {v0}, Lgov2/nist/javax2/sip/header/ContentLanguageList;-><init>()V

    .line 47
    .local v0, "retval":Lgov2/nist/javax2/sip/header/ContentLanguageList;
    iget-object v1, p0, Lgov2/nist/javax2/sip/header/ContentLanguageList;->hlist:Ljava/util/List;

    invoke-virtual {v0, v1}, Lgov2/nist/javax2/sip/header/ContentLanguageList;->clonehlist(Ljava/util/List;)Lgov2/nist/javax2/sip/header/SIPHeaderList;

    .line 48
    return-object v0
.end method
