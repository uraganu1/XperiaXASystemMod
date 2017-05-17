.class Lcom/android/contacts/quickcontact/QuickContactActivity$CallPlusCapabilityChecker;
.super Landroid/os/AsyncTask;
.source "QuickContactActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/quickcontact/QuickContactActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CallPlusCapabilityChecker"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/util/List",
        "<",
        "Ljava/lang/String;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/quickcontact/QuickContactActivity;


# direct methods
.method private constructor <init>(Lcom/android/contacts/quickcontact/QuickContactActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/contacts/quickcontact/QuickContactActivity;

    .prologue
    .line 2749
    iput-object p1, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$CallPlusCapabilityChecker;->this$0:Lcom/android/contacts/quickcontact/QuickContactActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/contacts/quickcontact/QuickContactActivity;Lcom/android/contacts/quickcontact/QuickContactActivity$CallPlusCapabilityChecker;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/contacts/quickcontact/QuickContactActivity;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/contacts/quickcontact/QuickContactActivity$CallPlusCapabilityChecker;-><init>(Lcom/android/contacts/quickcontact/QuickContactActivity;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "params"    # [Ljava/lang/Object;

    .prologue
    .line 2753
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "params":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/contacts/quickcontact/QuickContactActivity$CallPlusCapabilityChecker;->doInBackground([Ljava/lang/Void;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/util/List;
    .locals 8
    .param p1, "params"    # [Ljava/lang/Void;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Void;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2754
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 2755
    .local v0, "capableNumbers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v7, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$CallPlusCapabilityChecker;->this$0:Lcom/android/contacts/quickcontact/QuickContactActivity;

    invoke-static {v7}, Lcom/android/contacts/quickcontact/QuickContactActivity;->-get4(Lcom/android/contacts/quickcontact/QuickContactActivity;)Lcom/android/contacts/common/model/Contact;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/contacts/common/model/Contact;->getRawContacts()Lcom/google/common/collect/ImmutableList;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "rawContact$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/contacts/common/model/RawContact;

    .line 2756
    .local v5, "rawContact":Lcom/android/contacts/common/model/RawContact;
    invoke-virtual {v5}, Lcom/android/contacts/common/model/RawContact;->getDataItems()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "dataItem$iterator":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/common/model/dataitem/DataItem;

    .line 2757
    .local v1, "dataItem":Lcom/android/contacts/common/model/dataitem/DataItem;
    instance-of v7, v1, Lcom/android/contacts/common/model/dataitem/PhoneDataItem;

    if-eqz v7, :cond_1

    .line 2758
    check-cast v1, Lcom/android/contacts/common/model/dataitem/PhoneDataItem;

    .end local v1    # "dataItem":Lcom/android/contacts/common/model/dataitem/DataItem;
    invoke-virtual {v1}, Lcom/android/contacts/common/model/dataitem/PhoneDataItem;->getNumber()Ljava/lang/String;

    move-result-object v4

    .line 2759
    .local v4, "phoneNumber":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 2760
    invoke-virtual {p0}, Lcom/android/contacts/quickcontact/QuickContactActivity$CallPlusCapabilityChecker;->isCancelled()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 2761
    return-object v0

    .line 2763
    :cond_2
    iget-object v7, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$CallPlusCapabilityChecker;->this$0:Lcom/android/contacts/quickcontact/QuickContactActivity;

    invoke-static {v7}, Lcom/android/contacts/quickcontact/QuickContactActivity;->-get2(Lcom/android/contacts/quickcontact/QuickContactActivity;)Lcom/sonyericsson/android/socialphonebook/util/CallPlusConnector;

    move-result-object v7

    invoke-virtual {v7, v4}, Lcom/sonyericsson/android/socialphonebook/util/CallPlusConnector;->getCachedCapability(Ljava/lang/String;)Z

    move-result v3

    .line 2765
    .local v3, "hasCapability":Z
    if-eqz v3, :cond_1

    .line 2766
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2772
    .end local v2    # "dataItem$iterator":Ljava/util/Iterator;
    .end local v3    # "hasCapability":Z
    .end local v4    # "phoneNumber":Ljava/lang/String;
    .end local v5    # "rawContact":Lcom/android/contacts/common/model/RawContact;
    :cond_3
    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "result"    # Ljava/lang/Object;

    .prologue
    .line 2776
    check-cast p1, Ljava/util/List;

    .end local p1    # "result":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/contacts/quickcontact/QuickContactActivity$CallPlusCapabilityChecker;->onPostExecute(Ljava/util/List;)V

    return-void
.end method

.method protected onPostExecute(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v4, 0x1

    .line 2777
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 2778
    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$CallPlusCapabilityChecker;->this$0:Lcom/android/contacts/quickcontact/QuickContactActivity;

    invoke-static {v0}, Lcom/android/contacts/quickcontact/QuickContactActivity;->-get3(Lcom/android/contacts/quickcontact/QuickContactActivity;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 2779
    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$CallPlusCapabilityChecker;->this$0:Lcom/android/contacts/quickcontact/QuickContactActivity;

    invoke-static {v0}, Lcom/android/contacts/quickcontact/QuickContactActivity;->-get3(Lcom/android/contacts/quickcontact/QuickContactActivity;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 2780
    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$CallPlusCapabilityChecker;->this$0:Lcom/android/contacts/quickcontact/QuickContactActivity;

    invoke-static {v0}, Lcom/android/contacts/quickcontact/QuickContactActivity;->-wrap18(Lcom/android/contacts/quickcontact/QuickContactActivity;)V

    .line 2782
    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$CallPlusCapabilityChecker;->this$0:Lcom/android/contacts/quickcontact/QuickContactActivity;

    invoke-static {v0}, Lcom/android/contacts/quickcontact/QuickContactActivity;->-get5(Lcom/android/contacts/quickcontact/QuickContactActivity;)Lcom/android/contacts/quickcontact/QuickContactActivity$EntriesAndActionsTask;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2783
    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$CallPlusCapabilityChecker;->this$0:Lcom/android/contacts/quickcontact/QuickContactActivity;

    invoke-static {v0}, Lcom/android/contacts/quickcontact/QuickContactActivity;->-get5(Lcom/android/contacts/quickcontact/QuickContactActivity;)Lcom/android/contacts/quickcontact/QuickContactActivity$EntriesAndActionsTask;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/contacts/quickcontact/QuickContactActivity$EntriesAndActionsTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-eq v0, v1, :cond_0

    .line 2784
    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$CallPlusCapabilityChecker;->this$0:Lcom/android/contacts/quickcontact/QuickContactActivity;

    invoke-static {v0}, Lcom/android/contacts/quickcontact/QuickContactActivity;->-get5(Lcom/android/contacts/quickcontact/QuickContactActivity;)Lcom/android/contacts/quickcontact/QuickContactActivity$EntriesAndActionsTask;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/android/contacts/quickcontact/QuickContactActivity$EntriesAndActionsTask;->cancel(Z)Z

    .line 2786
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$CallPlusCapabilityChecker;->this$0:Lcom/android/contacts/quickcontact/QuickContactActivity;

    new-instance v1, Lcom/android/contacts/quickcontact/QuickContactActivity$EntriesAndActionsTask;

    iget-object v2, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$CallPlusCapabilityChecker;->this$0:Lcom/android/contacts/quickcontact/QuickContactActivity;

    iget-object v3, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$CallPlusCapabilityChecker;->this$0:Lcom/android/contacts/quickcontact/QuickContactActivity;

    invoke-static {v3}, Lcom/android/contacts/quickcontact/QuickContactActivity;->-get6(Lcom/android/contacts/quickcontact/QuickContactActivity;)[Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/android/contacts/quickcontact/QuickContactActivity$EntriesAndActionsTask;-><init>(Lcom/android/contacts/quickcontact/QuickContactActivity;[Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/android/contacts/quickcontact/QuickContactActivity;->-set2(Lcom/android/contacts/quickcontact/QuickContactActivity;Lcom/android/contacts/quickcontact/QuickContactActivity$EntriesAndActionsTask;)Lcom/android/contacts/quickcontact/QuickContactActivity$EntriesAndActionsTask;

    .line 2787
    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$CallPlusCapabilityChecker;->this$0:Lcom/android/contacts/quickcontact/QuickContactActivity;

    invoke-static {v0}, Lcom/android/contacts/quickcontact/QuickContactActivity;->-get5(Lcom/android/contacts/quickcontact/QuickContactActivity;)Lcom/android/contacts/quickcontact/QuickContactActivity$EntriesAndActionsTask;

    move-result-object v0

    new-array v1, v4, [Lcom/android/contacts/common/model/Contact;

    iget-object v2, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$CallPlusCapabilityChecker;->this$0:Lcom/android/contacts/quickcontact/QuickContactActivity;

    invoke-static {v2}, Lcom/android/contacts/quickcontact/QuickContactActivity;->-get4(Lcom/android/contacts/quickcontact/QuickContactActivity;)Lcom/android/contacts/common/model/Contact;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/android/contacts/quickcontact/QuickContactActivity$EntriesAndActionsTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 2776
    return-void
.end method
