.class public Lcom/sonymobile/rcs/utils/MimeManager;
.super Ljava/lang/Object;
.source "MimeManager.java"


# static fields
.field private static mimeTable:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 38
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcom/sonymobile/rcs/utils/MimeManager;->mimeTable:Ljava/util/Hashtable;

    .line 41
    sget-object v0, Lcom/sonymobile/rcs/utils/MimeManager;->mimeTable:Ljava/util/Hashtable;

    const-string/jumbo v1, "jpg"

    const-string/jumbo v2, "image/jpeg"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    sget-object v0, Lcom/sonymobile/rcs/utils/MimeManager;->mimeTable:Ljava/util/Hashtable;

    const-string/jumbo v1, "jpeg"

    const-string/jumbo v2, "image/jpeg"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    sget-object v0, Lcom/sonymobile/rcs/utils/MimeManager;->mimeTable:Ljava/util/Hashtable;

    const-string/jumbo v1, "png"

    const-string/jumbo v2, "image/png"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    sget-object v0, Lcom/sonymobile/rcs/utils/MimeManager;->mimeTable:Ljava/util/Hashtable;

    const-string/jumbo v1, "bmp"

    const-string/jumbo v2, "image/bmp"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    sget-object v0, Lcom/sonymobile/rcs/utils/MimeManager;->mimeTable:Ljava/util/Hashtable;

    const-string/jumbo v1, "3gp"

    const-string/jumbo v2, "video/3gpp"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    sget-object v0, Lcom/sonymobile/rcs/utils/MimeManager;->mimeTable:Ljava/util/Hashtable;

    const-string/jumbo v1, "mp4"

    const-string/jumbo v2, "video/mp4"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    sget-object v0, Lcom/sonymobile/rcs/utils/MimeManager;->mimeTable:Ljava/util/Hashtable;

    const-string/jumbo v1, "mp4a"

    const-string/jumbo v2, "video/mp4"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    sget-object v0, Lcom/sonymobile/rcs/utils/MimeManager;->mimeTable:Ljava/util/Hashtable;

    const-string/jumbo v1, "mpeg4"

    const-string/jumbo v2, "video/mp4"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    sget-object v0, Lcom/sonymobile/rcs/utils/MimeManager;->mimeTable:Ljava/util/Hashtable;

    const-string/jumbo v1, "mpeg"

    const-string/jumbo v2, "video/mpeg"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    sget-object v0, Lcom/sonymobile/rcs/utils/MimeManager;->mimeTable:Ljava/util/Hashtable;

    const-string/jumbo v1, "mpg"

    const-string/jumbo v2, "video/mpeg"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    sget-object v0, Lcom/sonymobile/rcs/utils/MimeManager;->mimeTable:Ljava/util/Hashtable;

    const-string/jumbo v1, "vcf"

    const-string/jumbo v2, "text/vcard"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    sget-object v0, Lcom/sonymobile/rcs/utils/MimeManager;->mimeTable:Ljava/util/Hashtable;

    const-string/jumbo v1, "xml"

    const-string/jumbo v2, "application/vnd.gsma.rcspushlocation+xml"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getSupportedImageMimeTypes()Ljava/util/Vector;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 95
    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    .line 96
    .local v2, "result":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/String;>;"
    sget-object v3, Lcom/sonymobile/rcs/utils/MimeManager;->mimeTable:Ljava/util/Hashtable;

    invoke-virtual {v3}, Ljava/util/Hashtable;->elements()Ljava/util/Enumeration;

    move-result-object v0

    .local v0, "e":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-nez v3, :cond_1

    .line 102
    return-object v2

    .line 97
    :cond_1
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .local v1, "mime":Ljava/lang/String;
    const-string/jumbo v3, "image"

    .line 98
    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2, v1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 99
    invoke-virtual {v2, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static isMimeTypeSupported(Ljava/lang/String;)Z
    .locals 1
    .param p0, "mime"    # Ljava/lang/String;

    .prologue
    const-string/jumbo v0, "*"

    .line 68
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 71
    sget-object v0, Lcom/sonymobile/rcs/utils/MimeManager;->mimeTable:Ljava/util/Hashtable;

    invoke-virtual {v0, p0}, Ljava/util/Hashtable;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 69
    :cond_0
    const/4 v0, 0x1

    return v0
.end method
