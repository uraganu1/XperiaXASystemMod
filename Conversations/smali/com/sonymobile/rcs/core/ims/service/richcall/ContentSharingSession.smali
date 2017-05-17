.class public abstract Lcom/sonymobile/rcs/core/ims/service/richcall/ContentSharingSession;
.super Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;
.source "ContentSharingSession.java"


# instance fields
.field private content:Lcom/sonymobile/rcs/core/content/MmContent;


# direct methods
.method public constructor <init>(Lcom/sonymobile/rcs/core/ims/service/ImsService;Lcom/sonymobile/rcs/core/content/MmContent;Ljava/lang/String;)V
    .locals 0
    .param p1, "parent"    # Lcom/sonymobile/rcs/core/ims/service/ImsService;
    .param p2, "content"    # Lcom/sonymobile/rcs/core/content/MmContent;
    .param p3, "contact"    # Ljava/lang/String;

    .prologue
    .line 45
    invoke-direct {p0, p1, p3}, Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;-><init>(Lcom/sonymobile/rcs/core/ims/service/ImsService;Ljava/lang/String;)V

    .line 47
    iput-object p2, p0, Lcom/sonymobile/rcs/core/ims/service/richcall/ContentSharingSession;->content:Lcom/sonymobile/rcs/core/content/MmContent;

    .line 48
    return-void
.end method


# virtual methods
.method public getContent()Lcom/sonymobile/rcs/core/content/MmContent;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/richcall/ContentSharingSession;->content:Lcom/sonymobile/rcs/core/content/MmContent;

    return-object v0
.end method

.method public getFileLocationAttribute()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 84
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/richcall/ContentSharingSession;->content:Lcom/sonymobile/rcs/core/content/MmContent;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/core/content/MmContent;->getUrl()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 87
    :cond_0
    return-object v2

    .line 84
    :cond_1
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/richcall/ContentSharingSession;->content:Lcom/sonymobile/rcs/core/content/MmContent;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/core/content/MmContent;->getUrl()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "http"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 85
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/richcall/ContentSharingSession;->content:Lcom/sonymobile/rcs/core/content/MmContent;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/core/content/MmContent;->getUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFileSelectorAttribute()Ljava/lang/String;
    .locals 4

    .prologue
    .line 74
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "name:\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/richcall/ContentSharingSession;->content:Lcom/sonymobile/rcs/core/content/MmContent;

    invoke-virtual {v1}, Lcom/sonymobile/rcs/core/content/MmContent;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " type:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/richcall/ContentSharingSession;->content:Lcom/sonymobile/rcs/core/content/MmContent;

    invoke-virtual {v1}, Lcom/sonymobile/rcs/core/content/MmContent;->getEncoding()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " size:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/richcall/ContentSharingSession;->content:Lcom/sonymobile/rcs/core/content/MmContent;

    invoke-virtual {v1}, Lcom/sonymobile/rcs/core/content/MmContent;->getSize()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFileTransferId()Ljava/lang/String;
    .locals 4

    .prologue
    .line 97
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "CSh"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/sonymobile/rcs/utils/IdGenerator;->getIdentifier()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x5f

    const/16 v3, 0x2d

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
