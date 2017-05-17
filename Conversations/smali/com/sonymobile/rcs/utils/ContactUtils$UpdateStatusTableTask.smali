.class Lcom/sonymobile/rcs/utils/ContactUtils$UpdateStatusTableTask;
.super Landroid/os/AsyncTask;
.source "ContactUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/rcs/utils/ContactUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UpdateStatusTableTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Landroid/content/Context;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field mPresenceStatus:I


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "presenceStatus"    # I

    .prologue
    .line 392
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 393
    iput p1, p0, Lcom/sonymobile/rcs/utils/ContactUtils$UpdateStatusTableTask;->mPresenceStatus:I

    .line 394
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 388
    check-cast p1, [Landroid/content/Context;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/sonymobile/rcs/utils/ContactUtils$UpdateStatusTableTask;->doInBackground([Landroid/content/Context;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Landroid/content/Context;)Ljava/lang/Void;
    .locals 12
    .param p1, "context"    # [Landroid/content/Context;

    .prologue
    const/4 v10, 0x0

    .line 398
    aget-object v10, p1, v10

    invoke-static {v10}, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->createInstance(Landroid/content/Context;)V

    .line 399
    invoke-static {}, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->getInstance()Lcom/sonymobile/rcs/provider/eab/ContactsManager;

    move-result-object v10

    invoke-virtual {v10}, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->getRcsContacts()Ljava/util/List;

    move-result-object v7

    .line 400
    .local v7, "rcseContacts":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-nez v10, :cond_1

    const/4 v10, 0x0

    .line 414
    return-object v10

    .line 400
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 401
    .local v6, "rcseContact":Ljava/lang/String;
    invoke-static {}, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->getInstance()Lcom/sonymobile/rcs/provider/eab/ContactsManager;

    move-result-object v10

    invoke-virtual {v10, v6}, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->getRawContactIdsFromPhoneNumber(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 403
    .local v3, "rawContactIDs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Long;

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 404
    .local v4, "rawContactID":J
    invoke-static {}, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->getInstance()Lcom/sonymobile/rcs/provider/eab/ContactsManager;

    move-result-object v10

    invoke-virtual {v10, v4, v5, v6}, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->getAssociatedRcsRawContact(JLjava/lang/String;)J

    move-result-wide v8

    .line 407
    .local v8, "rcseRawContactID":J
    :try_start_0
    invoke-static {}, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->getInstance()Lcom/sonymobile/rcs/provider/eab/ContactsManager;

    move-result-object v10

    iget v11, p0, Lcom/sonymobile/rcs/utils/ContactUtils$UpdateStatusTableTask;->mPresenceStatus:I

    invoke-virtual {v10, v8, v9, v11}, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->setStatusUpdateTable(JI)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 411
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v10, "ContactUtils"

    const-string/jumbo v11, "Status table could not be updated "

    .line 410
    invoke-static {v10, v11, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
