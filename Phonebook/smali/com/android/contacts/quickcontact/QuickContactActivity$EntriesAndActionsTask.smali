.class Lcom/android/contacts/quickcontact/QuickContactActivity$EntriesAndActionsTask;
.super Landroid/os/AsyncTask;
.source "QuickContactActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/quickcontact/QuickContactActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EntriesAndActionsTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Lcom/android/contacts/common/model/Contact;",
        "Ljava/lang/Void;",
        "Lcom/android/contacts/quickcontact/QuickContactActivity$Cp2DataCardModel;",
        ">;"
    }
.end annotation


# instance fields
.field private mContact:Lcom/android/contacts/common/model/Contact;

.field private mExcludedMimes:[Ljava/lang/String;

.field final synthetic this$0:Lcom/android/contacts/quickcontact/QuickContactActivity;


# direct methods
.method public constructor <init>(Lcom/android/contacts/quickcontact/QuickContactActivity;[Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/contacts/quickcontact/QuickContactActivity;
    .param p2, "mimes"    # [Ljava/lang/String;

    .prologue
    .line 2706
    iput-object p1, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$EntriesAndActionsTask;->this$0:Lcom/android/contacts/quickcontact/QuickContactActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 2707
    iput-object p2, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$EntriesAndActionsTask;->mExcludedMimes:[Ljava/lang/String;

    .line 2706
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Lcom/android/contacts/common/model/Contact;)Lcom/android/contacts/quickcontact/QuickContactActivity$Cp2DataCardModel;
    .locals 3
    .param p1, "params"    # [Lcom/android/contacts/common/model/Contact;

    .prologue
    .line 2712
    const/4 v0, 0x0

    aget-object v0, p1, v0

    iput-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$EntriesAndActionsTask;->mContact:Lcom/android/contacts/common/model/Contact;

    .line 2713
    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$EntriesAndActionsTask;->this$0:Lcom/android/contacts/quickcontact/QuickContactActivity;

    iget-object v1, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$EntriesAndActionsTask;->mContact:Lcom/android/contacts/common/model/Contact;

    iget-object v2, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$EntriesAndActionsTask;->mExcludedMimes:[Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/android/contacts/quickcontact/QuickContactActivity;->-wrap9(Lcom/android/contacts/quickcontact/QuickContactActivity;Lcom/android/contacts/common/model/Contact;[Ljava/lang/String;)Lcom/android/contacts/quickcontact/QuickContactActivity$Cp2DataCardModel;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "params"    # [Ljava/lang/Object;

    .prologue
    .line 2711
    check-cast p1, [Lcom/android/contacts/common/model/Contact;

    .end local p1    # "params":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/contacts/quickcontact/QuickContactActivity$EntriesAndActionsTask;->doInBackground([Lcom/android/contacts/common/model/Contact;)Lcom/android/contacts/quickcontact/QuickContactActivity$Cp2DataCardModel;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lcom/android/contacts/quickcontact/QuickContactActivity$Cp2DataCardModel;)V
    .locals 3
    .param p1, "cardDataModel"    # Lcom/android/contacts/quickcontact/QuickContactActivity$Cp2DataCardModel;

    .prologue
    .line 2721
    iget-object v1, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$EntriesAndActionsTask;->mContact:Lcom/android/contacts/common/model/Contact;

    iget-object v2, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$EntriesAndActionsTask;->this$0:Lcom/android/contacts/quickcontact/QuickContactActivity;

    invoke-static {v2}, Lcom/android/contacts/quickcontact/QuickContactActivity;->-get4(Lcom/android/contacts/quickcontact/QuickContactActivity;)Lcom/android/contacts/common/model/Contact;

    move-result-object v2

    if-ne v1, v2, :cond_0

    invoke-virtual {p0}, Lcom/android/contacts/quickcontact/QuickContactActivity$EntriesAndActionsTask;->isCancelled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2717
    :cond_0
    :goto_0
    return-void

    .line 2722
    :cond_1
    iget-object v1, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$EntriesAndActionsTask;->this$0:Lcom/android/contacts/quickcontact/QuickContactActivity;

    iget-object v2, p1, Lcom/android/contacts/quickcontact/QuickContactActivity$Cp2DataCardModel;->uniquePhoneNumbers:Ljava/util/Set;

    invoke-static {v1, v2}, Lcom/android/contacts/quickcontact/QuickContactActivity;->-set16(Lcom/android/contacts/quickcontact/QuickContactActivity;Ljava/util/Set;)Ljava/util/Set;

    .line 2723
    iget-object v1, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$EntriesAndActionsTask;->this$0:Lcom/android/contacts/quickcontact/QuickContactActivity;

    invoke-static {v1}, Lcom/android/contacts/quickcontact/QuickContactActivity;->-get20(Lcom/android/contacts/quickcontact/QuickContactActivity;)Lcom/sonyericsson/android/socialphonebook/vilte/ViltePlugin;

    move-result-object v1

    iget-object v2, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$EntriesAndActionsTask;->this$0:Lcom/android/contacts/quickcontact/QuickContactActivity;

    invoke-static {v2}, Lcom/android/contacts/quickcontact/QuickContactActivity;->-get19(Lcom/android/contacts/quickcontact/QuickContactActivity;)Ljava/util/Set;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/sonyericsson/android/socialphonebook/vilte/ViltePlugin;->registerForVideoCallEntityStatus(Ljava/util/Set;)V

    .line 2724
    iget-object v1, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$EntriesAndActionsTask;->this$0:Lcom/android/contacts/quickcontact/QuickContactActivity;

    invoke-static {v1, p1}, Lcom/android/contacts/quickcontact/QuickContactActivity;->-wrap12(Lcom/android/contacts/quickcontact/QuickContactActivity;Lcom/android/contacts/quickcontact/QuickContactActivity$Cp2DataCardModel;)V

    .line 2725
    iget-object v1, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$EntriesAndActionsTask;->this$0:Lcom/android/contacts/quickcontact/QuickContactActivity;

    invoke-static {v1}, Lcom/android/contacts/quickcontact/QuickContactActivity;->-wrap17(Lcom/android/contacts/quickcontact/QuickContactActivity;)V

    .line 2727
    iget-object v1, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$EntriesAndActionsTask;->this$0:Lcom/android/contacts/quickcontact/QuickContactActivity;

    invoke-static {v1}, Lcom/android/contacts/quickcontact/QuickContactActivity;->-get16(Lcom/android/contacts/quickcontact/QuickContactActivity;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2728
    iget-object v1, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$EntriesAndActionsTask;->this$0:Lcom/android/contacts/quickcontact/QuickContactActivity;

    invoke-static {v1}, Lcom/android/contacts/quickcontact/QuickContactActivity;->-get19(Lcom/android/contacts/quickcontact/QuickContactActivity;)Ljava/util/Set;

    move-result-object v1

    invoke-static {v1}, Lcom/google/common/collect/Lists;->newArrayList(Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object v0

    .line 2729
    .local v0, "numbersList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$EntriesAndActionsTask;->this$0:Lcom/android/contacts/quickcontact/QuickContactActivity;

    invoke-static {v1}, Lcom/android/contacts/quickcontact/QuickContactActivity;->-get17(Lcom/android/contacts/quickcontact/QuickContactActivity;)Lcom/sonyericsson/android/socialphonebook/rcs/RcsConnector;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/sonyericsson/android/socialphonebook/rcs/RcsConnector;->requestCapabilitiesRefresh(Ljava/util/ArrayList;)V

    .line 2730
    iget-object v1, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$EntriesAndActionsTask;->this$0:Lcom/android/contacts/quickcontact/QuickContactActivity;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/android/contacts/quickcontact/QuickContactActivity;->-set15(Lcom/android/contacts/quickcontact/QuickContactActivity;Z)Z

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "cardDataModel"    # Ljava/lang/Object;

    .prologue
    .line 2717
    check-cast p1, Lcom/android/contacts/quickcontact/QuickContactActivity$Cp2DataCardModel;

    .end local p1    # "cardDataModel":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/contacts/quickcontact/QuickContactActivity$EntriesAndActionsTask;->onPostExecute(Lcom/android/contacts/quickcontact/QuickContactActivity$Cp2DataCardModel;)V

    return-void
.end method
