.class public Lcom/sonymobile/conversations/directshare/DataUsageStatUpdaterTask;
.super Landroid/os/AsyncTask;
.source "DataUsageStatUpdaterTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private mParticipants:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sonyericsson/conversations/model/Participant;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sonyericsson/conversations/model/Participant;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 23
    .local p1, "participants":Ljava/util/List;, "Ljava/util/List<Lcom/sonyericsson/conversations/model/Participant;>;"
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/sonymobile/conversations/directshare/DataUsageStatUpdaterTask;->mParticipants:Ljava/util/List;

    .line 23
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "participants"    # [Ljava/lang/Object;

    .prologue
    .line 28
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "participants":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/sonymobile/conversations/directshare/DataUsageStatUpdaterTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 7
    .param p1, "participants"    # [Ljava/lang/Void;

    .prologue
    .line 30
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 31
    .local v4, "phoneNumber":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 32
    .local v1, "email":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v5, p0, Lcom/sonymobile/conversations/directshare/DataUsageStatUpdaterTask;->mParticipants:Ljava/util/List;

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "p$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonyericsson/conversations/model/Participant;

    .line 33
    .local v2, "p":Lcom/sonyericsson/conversations/model/Participant;
    invoke-virtual {v2}, Lcom/sonyericsson/conversations/model/Participant;->getType()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_1

    .line 34
    invoke-virtual {v2}, Lcom/sonyericsson/conversations/model/Participant;->getAddress()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 35
    :cond_1
    invoke-virtual {v2}, Lcom/sonyericsson/conversations/model/Participant;->getType()I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_0

    .line 36
    invoke-virtual {v2}, Lcom/sonyericsson/conversations/model/Participant;->getAddress()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 39
    .end local v2    # "p":Lcom/sonyericsson/conversations/model/Participant;
    :cond_2
    new-instance v0, Lcom/sonymobile/conversations/directshare/DataUsageStatUpdater;

    invoke-static {}, Lcom/sonyericsson/conversations/ConversationsApp;->getAppContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v0, v5}, Lcom/sonymobile/conversations/directshare/DataUsageStatUpdater;-><init>(Landroid/content/Context;)V

    .line 41
    .local v0, "dataUsageStatUpdater":Lcom/sonymobile/conversations/directshare/DataUsageStatUpdater;
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_3

    .line 42
    invoke-virtual {v0, v4}, Lcom/sonymobile/conversations/directshare/DataUsageStatUpdater;->updateWithPhoneNumber(Ljava/util/Collection;)Z

    .line 44
    :cond_3
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_4

    .line 45
    invoke-virtual {v0, v1}, Lcom/sonymobile/conversations/directshare/DataUsageStatUpdater;->updateWithAddress(Ljava/util/Collection;)Z

    .line 47
    :cond_4
    const/4 v5, 0x0

    return-object v5
.end method
