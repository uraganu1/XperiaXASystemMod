.class Lcom/sonyericsson/conversations/util/ContactLookup$LoadContactInformationAndResolveContactUpdatesTask;
.super Landroid/os/AsyncTask;
.source "ContactLookup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/conversations/util/ContactLookup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoadContactInformationAndResolveContactUpdatesTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lcom/sonyericsson/conversations/util/ContactLookup$ContactsAddress;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/conversations/util/ContactLookup;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/conversations/util/ContactLookup;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/conversations/util/ContactLookup;

    .prologue
    .line 406
    iput-object p1, p0, Lcom/sonyericsson/conversations/util/ContactLookup$LoadContactInformationAndResolveContactUpdatesTask;->this$0:Lcom/sonyericsson/conversations/util/ContactLookup;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/conversations/util/ContactLookup;Lcom/sonyericsson/conversations/util/ContactLookup$LoadContactInformationAndResolveContactUpdatesTask;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/conversations/util/ContactLookup;

    .prologue
    invoke-direct {p0, p1}, Lcom/sonyericsson/conversations/util/ContactLookup$LoadContactInformationAndResolveContactUpdatesTask;-><init>(Lcom/sonyericsson/conversations/util/ContactLookup;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Lcom/sonyericsson/conversations/util/ContactLookup$ContactsAddress;
    .locals 6
    .param p1, "voids"    # [Ljava/lang/Void;

    .prologue
    .line 420
    iget-object v4, p0, Lcom/sonyericsson/conversations/util/ContactLookup$LoadContactInformationAndResolveContactUpdatesTask;->this$0:Lcom/sonyericsson/conversations/util/ContactLookup;

    invoke-static {v4}, Lcom/sonyericsson/conversations/util/ContactLookup;->-wrap1(Lcom/sonyericsson/conversations/util/ContactLookup;)Landroid/util/SparseArray;

    move-result-object v1

    .line 421
    .local v1, "currentContactVersions":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/sonyericsson/conversations/util/ContactLookup$ContactVersion;>;"
    iget-object v4, p0, Lcom/sonyericsson/conversations/util/ContactLookup$LoadContactInformationAndResolveContactUpdatesTask;->this$0:Lcom/sonyericsson/conversations/util/ContactLookup;

    iget-object v5, p0, Lcom/sonyericsson/conversations/util/ContactLookup$LoadContactInformationAndResolveContactUpdatesTask;->this$0:Lcom/sonyericsson/conversations/util/ContactLookup;

    invoke-static {v5}, Lcom/sonyericsson/conversations/util/ContactLookup;->-get2(Lcom/sonyericsson/conversations/util/ContactLookup;)Landroid/util/SparseArray;

    move-result-object v5

    invoke-static {v4, v5, v1}, Lcom/sonyericsson/conversations/util/ContactLookup;->-wrap6(Lcom/sonyericsson/conversations/util/ContactLookup;Landroid/util/SparseArray;Landroid/util/SparseArray;)Ljava/util/List;

    move-result-object v3

    .line 423
    .local v3, "latestUpdatedContacts":Ljava/util/List;, "Ljava/util/List<Lcom/sonyericsson/conversations/util/ContactLookup$ContactVersion;>;"
    iget-object v4, p0, Lcom/sonyericsson/conversations/util/ContactLookup$LoadContactInformationAndResolveContactUpdatesTask;->this$0:Lcom/sonyericsson/conversations/util/ContactLookup;

    invoke-static {v4, v1}, Lcom/sonyericsson/conversations/util/ContactLookup;->-set0(Lcom/sonyericsson/conversations/util/ContactLookup;Landroid/util/SparseArray;)Landroid/util/SparseArray;

    .line 426
    iget-object v4, p0, Lcom/sonyericsson/conversations/util/ContactLookup$LoadContactInformationAndResolveContactUpdatesTask;->this$0:Lcom/sonyericsson/conversations/util/ContactLookup;

    invoke-static {v4}, Lcom/sonyericsson/conversations/util/ContactLookup;->-wrap3(Lcom/sonyericsson/conversations/util/ContactLookup;)I

    move-result v2

    .line 427
    .local v2, "currentProfileVersion":I
    iget-object v4, p0, Lcom/sonyericsson/conversations/util/ContactLookup$LoadContactInformationAndResolveContactUpdatesTask;->this$0:Lcom/sonyericsson/conversations/util/ContactLookup;

    invoke-static {v4}, Lcom/sonyericsson/conversations/util/ContactLookup;->-get6(Lcom/sonyericsson/conversations/util/ContactLookup;)I

    move-result v4

    if-eq v4, v2, :cond_0

    .line 428
    iget-object v4, p0, Lcom/sonyericsson/conversations/util/ContactLookup$LoadContactInformationAndResolveContactUpdatesTask;->this$0:Lcom/sonyericsson/conversations/util/ContactLookup;

    const/4 v5, 0x1

    invoke-static {v4, v5}, Lcom/sonyericsson/conversations/util/ContactLookup;->-set1(Lcom/sonyericsson/conversations/util/ContactLookup;Z)Z

    .line 429
    iget-object v4, p0, Lcom/sonyericsson/conversations/util/ContactLookup$LoadContactInformationAndResolveContactUpdatesTask;->this$0:Lcom/sonyericsson/conversations/util/ContactLookup;

    invoke-static {v4, v2}, Lcom/sonyericsson/conversations/util/ContactLookup;->-set4(Lcom/sonyericsson/conversations/util/ContactLookup;I)I

    .line 432
    :cond_0
    new-instance v0, Lcom/sonyericsson/conversations/util/ContactLookup$ContactsAddress;

    const/4 v4, 0x0

    invoke-direct {v0, v4}, Lcom/sonyericsson/conversations/util/ContactLookup$ContactsAddress;-><init>(Lcom/sonyericsson/conversations/util/ContactLookup$ContactsAddress;)V

    .line 433
    .local v0, "address":Lcom/sonyericsson/conversations/util/ContactLookup$ContactsAddress;
    iget-object v4, p0, Lcom/sonyericsson/conversations/util/ContactLookup$LoadContactInformationAndResolveContactUpdatesTask;->this$0:Lcom/sonyericsson/conversations/util/ContactLookup;

    invoke-static {v4, v3}, Lcom/sonyericsson/conversations/util/ContactLookup;->-wrap5(Lcom/sonyericsson/conversations/util/ContactLookup;Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    iput-object v4, v0, Lcom/sonyericsson/conversations/util/ContactLookup$ContactsAddress;->mContactsAddress:Ljava/util/List;

    .line 434
    iget-object v4, p0, Lcom/sonyericsson/conversations/util/ContactLookup$LoadContactInformationAndResolveContactUpdatesTask;->this$0:Lcom/sonyericsson/conversations/util/ContactLookup;

    invoke-static {v4}, Lcom/sonyericsson/conversations/util/ContactLookup;->-wrap4(Lcom/sonyericsson/conversations/util/ContactLookup;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/sonyericsson/conversations/util/ContactLookup$ContactsAddress;->mProfileAddress:Ljava/lang/String;

    .line 436
    iget-object v4, p0, Lcom/sonyericsson/conversations/util/ContactLookup$LoadContactInformationAndResolveContactUpdatesTask;->this$0:Lcom/sonyericsson/conversations/util/ContactLookup;

    invoke-static {v4}, Lcom/sonyericsson/conversations/util/ContactLookup;->-get5(Lcom/sonyericsson/conversations/util/ContactLookup;)Landroid/util/LruCache;

    move-result-object v4

    invoke-virtual {v4}, Landroid/util/LruCache;->evictAll()V

    .line 437
    iget-object v4, p0, Lcom/sonyericsson/conversations/util/ContactLookup$LoadContactInformationAndResolveContactUpdatesTask;->this$0:Lcom/sonyericsson/conversations/util/ContactLookup;

    invoke-static {v4}, Lcom/sonyericsson/conversations/util/ContactLookup;->-wrap7(Lcom/sonyericsson/conversations/util/ContactLookup;)V

    .line 438
    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "voids"    # [Ljava/lang/Object;

    .prologue
    .line 418
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "voids":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/sonyericsson/conversations/util/ContactLookup$LoadContactInformationAndResolveContactUpdatesTask;->doInBackground([Ljava/lang/Void;)Lcom/sonyericsson/conversations/util/ContactLookup$ContactsAddress;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lcom/sonyericsson/conversations/util/ContactLookup$ContactsAddress;)V
    .locals 4
    .param p1, "contactsAddress"    # Lcom/sonyericsson/conversations/util/ContactLookup$ContactsAddress;

    .prologue
    .line 443
    iget-object v3, p0, Lcom/sonyericsson/conversations/util/ContactLookup$LoadContactInformationAndResolveContactUpdatesTask;->this$0:Lcom/sonyericsson/conversations/util/ContactLookup;

    invoke-static {v3}, Lcom/sonyericsson/conversations/util/ContactLookup;->-get4(Lcom/sonyericsson/conversations/util/ContactLookup;)Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "listener$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/conversations/util/ContactLookup$ContactLookupListener;

    .line 444
    .local v1, "listener":Lcom/sonyericsson/conversations/util/ContactLookup$ContactLookupListener;
    invoke-interface {v1}, Lcom/sonyericsson/conversations/util/ContactLookup$ContactLookupListener;->onContactLookupChanged()V

    goto :goto_0

    .line 446
    .end local v1    # "listener":Lcom/sonyericsson/conversations/util/ContactLookup$ContactLookupListener;
    :cond_0
    iget-object v3, p0, Lcom/sonyericsson/conversations/util/ContactLookup$LoadContactInformationAndResolveContactUpdatesTask;->this$0:Lcom/sonyericsson/conversations/util/ContactLookup;

    invoke-static {v3}, Lcom/sonyericsson/conversations/util/ContactLookup;->-get0(Lcom/sonyericsson/conversations/util/ContactLookup;)Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/conversations/util/ContactLookup$ContactInformationChangeListener;

    .line 447
    .local v0, "listener":Lcom/sonyericsson/conversations/util/ContactLookup$ContactInformationChangeListener;
    iget-object v3, p1, Lcom/sonyericsson/conversations/util/ContactLookup$ContactsAddress;->mContactsAddress:Ljava/util/List;

    invoke-interface {v0, v3}, Lcom/sonyericsson/conversations/util/ContactLookup$ContactInformationChangeListener;->onContactInformationChanged(Ljava/util/List;)V

    .line 448
    iget-object v3, p1, Lcom/sonyericsson/conversations/util/ContactLookup$ContactsAddress;->mProfileAddress:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 449
    iget-object v3, p1, Lcom/sonyericsson/conversations/util/ContactLookup$ContactsAddress;->mProfileAddress:Ljava/lang/String;

    invoke-interface {v0, v3}, Lcom/sonyericsson/conversations/util/ContactLookup$ContactInformationChangeListener;->onProfileInformationChanged(Ljava/lang/String;)V

    goto :goto_1

    .line 442
    .end local v0    # "listener":Lcom/sonyericsson/conversations/util/ContactLookup$ContactInformationChangeListener;
    :cond_2
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "contactsAddress"    # Ljava/lang/Object;

    .prologue
    .line 442
    check-cast p1, Lcom/sonyericsson/conversations/util/ContactLookup$ContactsAddress;

    .end local p1    # "contactsAddress":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/sonyericsson/conversations/util/ContactLookup$LoadContactInformationAndResolveContactUpdatesTask;->onPostExecute(Lcom/sonyericsson/conversations/util/ContactLookup$ContactsAddress;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    .prologue
    .line 411
    iget-object v0, p0, Lcom/sonyericsson/conversations/util/ContactLookup$LoadContactInformationAndResolveContactUpdatesTask;->this$0:Lcom/sonyericsson/conversations/util/ContactLookup;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/sonyericsson/conversations/util/ContactLookup;->-set2(Lcom/sonyericsson/conversations/util/ContactLookup;Z)Z

    .line 412
    invoke-static {}, Lcom/sonymobile/forklift/Forklift;->getInstance()Lcom/sonymobile/forklift/Forklift;

    move-result-object v0

    invoke-static {}, Lcom/sonyericsson/conversations/model/Participant;->getMySelfParticipant()Lcom/sonymobile/forklift/HeavyProperty;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonymobile/forklift/Forklift;->invalidateProperty(Lcom/sonymobile/forklift/HeavyProperty;)V

    .line 413
    iget-object v0, p0, Lcom/sonyericsson/conversations/util/ContactLookup$LoadContactInformationAndResolveContactUpdatesTask;->this$0:Lcom/sonyericsson/conversations/util/ContactLookup;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sonyericsson/conversations/util/ContactLookup;->-set3(Lcom/sonyericsson/conversations/util/ContactLookup;Ljava/lang/String;)Ljava/lang/String;

    .line 414
    iget-object v0, p0, Lcom/sonyericsson/conversations/util/ContactLookup$LoadContactInformationAndResolveContactUpdatesTask;->this$0:Lcom/sonyericsson/conversations/util/ContactLookup;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sonyericsson/conversations/util/ContactLookup;->-set1(Lcom/sonyericsson/conversations/util/ContactLookup;Z)Z

    .line 410
    return-void
.end method
