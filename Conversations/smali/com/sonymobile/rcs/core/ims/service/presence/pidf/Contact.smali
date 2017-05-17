.class public Lcom/sonymobile/rcs/core/ims/service/presence/pidf/Contact;
.super Ljava/lang/Object;
.source "Contact.java"


# instance fields
.field private contactType:Ljava/lang/String;

.field private priority:Ljava/lang/String;

.field private uri:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/presence/pidf/Contact;->uri:Ljava/lang/String;

    .line 25
    iput-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/presence/pidf/Contact;->priority:Ljava/lang/String;

    .line 27
    iput-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/presence/pidf/Contact;->contactType:Ljava/lang/String;

    .line 30
    return-void
.end method


# virtual methods
.method public setContactType(Ljava/lang/String;)V
    .locals 0
    .param p1, "contactType"    # Ljava/lang/String;

    .prologue
    .line 57
    iput-object p1, p0, Lcom/sonymobile/rcs/core/ims/service/presence/pidf/Contact;->contactType:Ljava/lang/String;

    .line 58
    return-void
.end method

.method public setPriority(Ljava/lang/String;)V
    .locals 0
    .param p1, "priority"    # Ljava/lang/String;

    .prologue
    .line 41
    iput-object p1, p0, Lcom/sonymobile/rcs/core/ims/service/presence/pidf/Contact;->priority:Ljava/lang/String;

    .line 42
    return-void
.end method

.method public setUri(Ljava/lang/String;)V
    .locals 0
    .param p1, "uri"    # Ljava/lang/String;

    .prologue
    .line 49
    iput-object p1, p0, Lcom/sonymobile/rcs/core/ims/service/presence/pidf/Contact;->uri:Ljava/lang/String;

    .line 50
    return-void
.end method
