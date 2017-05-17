.class Lcom/sonyericsson/android/socialphonebook/conferencecall/fragments/ConferenceParticipantsFragment$ParticipantsLoaderListener;
.super Ljava/lang/Object;
.source "ConferenceParticipantsFragment.java"

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/socialphonebook/conferencecall/fragments/ConferenceParticipantsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ParticipantsLoaderListener"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/app/LoaderManager$LoaderCallbacks",
        "<",
        "Lcom/sonyericsson/android/socialphonebook/conferencecall/model/ConferenceCallData;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/socialphonebook/conferencecall/fragments/ConferenceParticipantsFragment;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/android/socialphonebook/conferencecall/fragments/ConferenceParticipantsFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/android/socialphonebook/conferencecall/fragments/ConferenceParticipantsFragment;

    .prologue
    .line 285
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/conferencecall/fragments/ConferenceParticipantsFragment$ParticipantsLoaderListener;->this$0:Lcom/sonyericsson/android/socialphonebook/conferencecall/fragments/ConferenceParticipantsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/socialphonebook/conferencecall/fragments/ConferenceParticipantsFragment;Lcom/sonyericsson/android/socialphonebook/conferencecall/fragments/ConferenceParticipantsFragment$ParticipantsLoaderListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/android/socialphonebook/conferencecall/fragments/ConferenceParticipantsFragment;

    .prologue
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/socialphonebook/conferencecall/fragments/ConferenceParticipantsFragment$ParticipantsLoaderListener;-><init>(Lcom/sonyericsson/android/socialphonebook/conferencecall/fragments/ConferenceParticipantsFragment;)V

    return-void
.end method


# virtual methods
.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 4
    .param p1, "id"    # I
    .param p2, "bundle"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/content/Loader",
            "<",
            "Lcom/sonyericsson/android/socialphonebook/conferencecall/model/ConferenceCallData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 289
    new-instance v0, Lcom/sonyericsson/android/socialphonebook/conferencecall/loaders/ConferenceCallDetailsLoader;

    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/conferencecall/fragments/ConferenceParticipantsFragment$ParticipantsLoaderListener;->this$0:Lcom/sonyericsson/android/socialphonebook/conferencecall/fragments/ConferenceParticipantsFragment;

    invoke-static {v1}, Lcom/sonyericsson/android/socialphonebook/conferencecall/fragments/ConferenceParticipantsFragment;->-get0(Lcom/sonyericsson/android/socialphonebook/conferencecall/fragments/ConferenceParticipantsFragment;)Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/conferencecall/fragments/ConferenceParticipantsFragment$ParticipantsLoaderListener;->this$0:Lcom/sonyericsson/android/socialphonebook/conferencecall/fragments/ConferenceParticipantsFragment;

    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/conferencecall/fragments/ConferenceParticipantsFragment$ParticipantsLoaderListener;->this$0:Lcom/sonyericsson/android/socialphonebook/conferencecall/fragments/ConferenceParticipantsFragment;

    invoke-static {v3}, Lcom/sonyericsson/android/socialphonebook/conferencecall/fragments/ConferenceParticipantsFragment;->-get3(Lcom/sonyericsson/android/socialphonebook/conferencecall/fragments/ConferenceParticipantsFragment;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sonyericsson/android/socialphonebook/conferencecall/fragments/ConferenceParticipantsFragment;->-wrap0(Lcom/sonyericsson/android/socialphonebook/conferencecall/fragments/ConferenceParticipantsFragment;Ljava/util/List;)[Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/android/socialphonebook/conferencecall/loaders/ConferenceCallDetailsLoader;-><init>(Landroid/content/Context;[Ljava/lang/String;)V

    return-object v0
.end method

.method public onLoadFinished(Landroid/content/Loader;Lcom/sonyericsson/android/socialphonebook/conferencecall/model/ConferenceCallData;)V
    .locals 3
    .param p2, "data"    # Lcom/sonyericsson/android/socialphonebook/conferencecall/model/ConferenceCallData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Lcom/sonyericsson/android/socialphonebook/conferencecall/model/ConferenceCallData;",
            ">;",
            "Lcom/sonyericsson/android/socialphonebook/conferencecall/model/ConferenceCallData;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, "loader":Landroid/content/Loader;, "Landroid/content/Loader<Lcom/sonyericsson/android/socialphonebook/conferencecall/model/ConferenceCallData;>;"
    const/4 v2, 0x0

    .line 294
    invoke-virtual {p1}, Landroid/content/Loader;->getId()I

    move-result v0

    const/16 v1, 0x3e9

    if-ne v1, v0, :cond_0

    if-eqz p2, :cond_0

    .line 295
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/conferencecall/fragments/ConferenceParticipantsFragment$ParticipantsLoaderListener;->this$0:Lcom/sonyericsson/android/socialphonebook/conferencecall/fragments/ConferenceParticipantsFragment;

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/conferencecall/fragments/ConferenceParticipantsFragment;->-get1(Lcom/sonyericsson/android/socialphonebook/conferencecall/fragments/ConferenceParticipantsFragment;)Lcom/sonyericsson/android/socialphonebook/conferencecall/adapters/ParticipantsAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/socialphonebook/conferencecall/adapters/ParticipantsAdapter;->clear()V

    .line 296
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/conferencecall/fragments/ConferenceParticipantsFragment$ParticipantsLoaderListener;->this$0:Lcom/sonyericsson/android/socialphonebook/conferencecall/fragments/ConferenceParticipantsFragment;

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/conferencecall/fragments/ConferenceParticipantsFragment;->-get1(Lcom/sonyericsson/android/socialphonebook/conferencecall/fragments/ConferenceParticipantsFragment;)Lcom/sonyericsson/android/socialphonebook/conferencecall/adapters/ParticipantsAdapter;

    move-result-object v0

    invoke-virtual {p2}, Lcom/sonyericsson/android/socialphonebook/conferencecall/model/ConferenceCallData;->getParticipants()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/socialphonebook/conferencecall/adapters/ParticipantsAdapter;->addAll(Ljava/util/Collection;)V

    .line 297
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/conferencecall/fragments/ConferenceParticipantsFragment$ParticipantsLoaderListener;->this$0:Lcom/sonyericsson/android/socialphonebook/conferencecall/fragments/ConferenceParticipantsFragment;

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/conferencecall/fragments/ConferenceParticipantsFragment;->-get1(Lcom/sonyericsson/android/socialphonebook/conferencecall/fragments/ConferenceParticipantsFragment;)Lcom/sonyericsson/android/socialphonebook/conferencecall/adapters/ParticipantsAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/socialphonebook/conferencecall/adapters/ParticipantsAdapter;->notifyDataSetChanged()V

    .line 298
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/conferencecall/fragments/ConferenceParticipantsFragment$ParticipantsLoaderListener;->this$0:Lcom/sonyericsson/android/socialphonebook/conferencecall/fragments/ConferenceParticipantsFragment;

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/conferencecall/fragments/ConferenceParticipantsFragment;->-get0(Lcom/sonyericsson/android/socialphonebook/conferencecall/fragments/ConferenceParticipantsFragment;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 300
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/conferencecall/fragments/ConferenceParticipantsFragment$ParticipantsLoaderListener;->this$0:Lcom/sonyericsson/android/socialphonebook/conferencecall/fragments/ConferenceParticipantsFragment;

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/conferencecall/fragments/ConferenceParticipantsFragment;->-get4(Lcom/sonyericsson/android/socialphonebook/conferencecall/fragments/ConferenceParticipantsFragment;)Landroid/os/Parcelable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 301
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/conferencecall/fragments/ConferenceParticipantsFragment$ParticipantsLoaderListener;->this$0:Lcom/sonyericsson/android/socialphonebook/conferencecall/fragments/ConferenceParticipantsFragment;

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/conferencecall/fragments/ConferenceParticipantsFragment;->-get2(Lcom/sonyericsson/android/socialphonebook/conferencecall/fragments/ConferenceParticipantsFragment;)Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/conferencecall/fragments/ConferenceParticipantsFragment$ParticipantsLoaderListener;->this$0:Lcom/sonyericsson/android/socialphonebook/conferencecall/fragments/ConferenceParticipantsFragment;

    invoke-static {v1}, Lcom/sonyericsson/android/socialphonebook/conferencecall/fragments/ConferenceParticipantsFragment;->-get4(Lcom/sonyericsson/android/socialphonebook/conferencecall/fragments/ConferenceParticipantsFragment;)Landroid/os/Parcelable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 302
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/conferencecall/fragments/ConferenceParticipantsFragment$ParticipantsLoaderListener;->this$0:Lcom/sonyericsson/android/socialphonebook/conferencecall/fragments/ConferenceParticipantsFragment;

    invoke-static {v0, v2}, Lcom/sonyericsson/android/socialphonebook/conferencecall/fragments/ConferenceParticipantsFragment;->-set0(Lcom/sonyericsson/android/socialphonebook/conferencecall/fragments/ConferenceParticipantsFragment;Landroid/os/Parcelable;)Landroid/os/Parcelable;

    .line 293
    :cond_0
    return-void
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0
    .param p1, "loader"    # Landroid/content/Loader;
    .param p2, "data"    # Ljava/lang/Object;

    .prologue
    .line 293
    check-cast p2, Lcom/sonyericsson/android/socialphonebook/conferencecall/model/ConferenceCallData;

    .end local p2    # "data":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/sonyericsson/android/socialphonebook/conferencecall/fragments/ConferenceParticipantsFragment$ParticipantsLoaderListener;->onLoadFinished(Landroid/content/Loader;Lcom/sonyericsson/android/socialphonebook/conferencecall/model/ConferenceCallData;)V

    return-void
.end method

.method public onLoaderReset(Landroid/content/Loader;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Lcom/sonyericsson/android/socialphonebook/conferencecall/model/ConferenceCallData;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 308
    .local p1, "loader":Landroid/content/Loader;, "Landroid/content/Loader<Lcom/sonyericsson/android/socialphonebook/conferencecall/model/ConferenceCallData;>;"
    return-void
.end method
