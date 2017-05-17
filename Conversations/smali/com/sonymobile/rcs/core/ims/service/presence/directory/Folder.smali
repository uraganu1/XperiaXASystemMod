.class public Lcom/sonymobile/rcs/core/ims/service/presence/directory/Folder;
.super Ljava/lang/Object;
.source "Folder.java"


# instance fields
.field private auid:Ljava/lang/String;

.field private entry:Lcom/sonymobile/rcs/core/ims/service/presence/directory/Entry;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "auid"    # Ljava/lang/String;

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/sonymobile/rcs/core/ims/service/presence/directory/Folder;->auid:Ljava/lang/String;

    .line 28
    return-void
.end method


# virtual methods
.method public getAuid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/presence/directory/Folder;->auid:Ljava/lang/String;

    return-object v0
.end method

.method public getEntry()Lcom/sonymobile/rcs/core/ims/service/presence/directory/Entry;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/presence/directory/Folder;->entry:Lcom/sonymobile/rcs/core/ims/service/presence/directory/Entry;

    return-object v0
.end method

.method public setEntry(Lcom/sonymobile/rcs/core/ims/service/presence/directory/Entry;)V
    .locals 0
    .param p1, "entry"    # Lcom/sonymobile/rcs/core/ims/service/presence/directory/Entry;

    .prologue
    .line 39
    iput-object p1, p0, Lcom/sonymobile/rcs/core/ims/service/presence/directory/Folder;->entry:Lcom/sonymobile/rcs/core/ims/service/presence/directory/Entry;

    .line 40
    return-void
.end method
