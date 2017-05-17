.class final Lcom/sonyericsson/conversations/util/ImageHandler$3;
.super Lcom/sonymobile/forklift/HeavyTask;
.source "ImageHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/conversations/util/ImageHandler;->removeImageFromCache(Ljava/util/Collection;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$contactsAddress:Ljava/util/Collection;


# direct methods
.method constructor <init>(Ljava/util/Collection;)V
    .locals 0

    .prologue
    .line 201
    .local p1, "val$contactsAddress":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/sonyericsson/conversations/util/ImageHandler$3;->val$contactsAddress:Ljava/util/Collection;

    invoke-direct {p0}, Lcom/sonymobile/forklift/HeavyTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected onBackground()V
    .locals 4

    .prologue
    .line 204
    iget-object v3, p0, Lcom/sonyericsson/conversations/util/ImageHandler$3;->val$contactsAddress:Ljava/util/Collection;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "address$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 205
    .local v0, "address":Ljava/lang/String;
    new-instance v2, Lcom/sonyericsson/conversations/model/Participant;

    invoke-direct {v2, v0}, Lcom/sonyericsson/conversations/model/Participant;-><init>(Ljava/lang/String;)V

    .line 206
    .local v2, "p":Lcom/sonyericsson/conversations/model/Participant;
    invoke-static {v2}, Lcom/sonyericsson/conversations/util/ImageHandler;->-wrap4(Lcom/sonyericsson/conversations/model/Participant;)V

    .line 207
    invoke-static {v0}, Lcom/sonyericsson/conversations/util/ImageHandler;->-wrap2(Ljava/lang/String;)V

    goto :goto_0

    .line 203
    .end local v0    # "address":Ljava/lang/String;
    .end local v2    # "p":Lcom/sonyericsson/conversations/model/Participant;
    :cond_0
    return-void
.end method
