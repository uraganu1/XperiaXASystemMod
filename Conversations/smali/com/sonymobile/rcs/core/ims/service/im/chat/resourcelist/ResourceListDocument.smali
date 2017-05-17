.class public Lcom/sonymobile/rcs/core/ims/service/im/chat/resourcelist/ResourceListDocument;
.super Ljava/lang/Object;
.source "ResourceListDocument.java"


# instance fields
.field private entries:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/resourcelist/ResourceListDocument;->entries:Ljava/util/Vector;

    .line 32
    return-void
.end method


# virtual methods
.method public addEntry(Ljava/lang/String;)V
    .locals 1
    .param p1, "uri"    # Ljava/lang/String;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/resourcelist/ResourceListDocument;->entries:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 36
    return-void
.end method

.method public getEntries()Ljava/util/Vector;
    .locals 1
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
    .line 39
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/resourcelist/ResourceListDocument;->entries:Ljava/util/Vector;

    return-object v0
.end method
