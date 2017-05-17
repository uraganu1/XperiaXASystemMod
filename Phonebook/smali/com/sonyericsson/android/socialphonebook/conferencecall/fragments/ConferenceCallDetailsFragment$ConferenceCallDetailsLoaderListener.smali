.class Lcom/sonyericsson/android/socialphonebook/conferencecall/fragments/ConferenceCallDetailsFragment$ConferenceCallDetailsLoaderListener;
.super Ljava/lang/Object;
.source "ConferenceCallDetailsFragment.java"

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/socialphonebook/conferencecall/fragments/ConferenceCallDetailsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ConferenceCallDetailsLoaderListener"
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
.field final synthetic this$0:Lcom/sonyericsson/android/socialphonebook/conferencecall/fragments/ConferenceCallDetailsFragment;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/android/socialphonebook/conferencecall/fragments/ConferenceCallDetailsFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/android/socialphonebook/conferencecall/fragments/ConferenceCallDetailsFragment;

    .prologue
    .line 244
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/conferencecall/fragments/ConferenceCallDetailsFragment$ConferenceCallDetailsLoaderListener;->this$0:Lcom/sonyericsson/android/socialphonebook/conferencecall/fragments/ConferenceCallDetailsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/socialphonebook/conferencecall/fragments/ConferenceCallDetailsFragment;Lcom/sonyericsson/android/socialphonebook/conferencecall/fragments/ConferenceCallDetailsFragment$ConferenceCallDetailsLoaderListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/android/socialphonebook/conferencecall/fragments/ConferenceCallDetailsFragment;

    .prologue
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/socialphonebook/conferencecall/fragments/ConferenceCallDetailsFragment$ConferenceCallDetailsLoaderListener;-><init>(Lcom/sonyericsson/android/socialphonebook/conferencecall/fragments/ConferenceCallDetailsFragment;)V

    return-void
.end method


# virtual methods
.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 4
    .param p1, "id"    # I
    .param p2, "args"    # Landroid/os/Bundle;
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
    .line 248
    new-instance v0, Lcom/sonyericsson/android/socialphonebook/conferencecall/loaders/ConferenceCallDetailsLoader;

    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/conferencecall/fragments/ConferenceCallDetailsFragment$ConferenceCallDetailsLoaderListener;->this$0:Lcom/sonyericsson/android/socialphonebook/conferencecall/fragments/ConferenceCallDetailsFragment;

    invoke-virtual {v1}, Lcom/sonyericsson/android/socialphonebook/conferencecall/fragments/ConferenceCallDetailsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/conferencecall/fragments/ConferenceCallDetailsFragment$ConferenceCallDetailsLoaderListener;->this$0:Lcom/sonyericsson/android/socialphonebook/conferencecall/fragments/ConferenceCallDetailsFragment;

    invoke-static {v2}, Lcom/sonyericsson/android/socialphonebook/conferencecall/fragments/ConferenceCallDetailsFragment;->-get0(Lcom/sonyericsson/android/socialphonebook/conferencecall/fragments/ConferenceCallDetailsFragment;)[I

    move-result-object v2

    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/conferencecall/fragments/ConferenceCallDetailsFragment$ConferenceCallDetailsLoaderListener;->this$0:Lcom/sonyericsson/android/socialphonebook/conferencecall/fragments/ConferenceCallDetailsFragment;

    invoke-static {v3}, Lcom/sonyericsson/android/socialphonebook/conferencecall/fragments/ConferenceCallDetailsFragment;->-get2(Lcom/sonyericsson/android/socialphonebook/conferencecall/fragments/ConferenceCallDetailsFragment;)[Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/sonyericsson/android/socialphonebook/conferencecall/loaders/ConferenceCallDetailsLoader;-><init>(Landroid/content/Context;[I[Ljava/lang/String;)V

    return-object v0
.end method

.method public onLoadFinished(Landroid/content/Loader;Lcom/sonyericsson/android/socialphonebook/conferencecall/model/ConferenceCallData;)V
    .locals 2
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
    .line 253
    .local p1, "loader":Landroid/content/Loader;, "Landroid/content/Loader<Lcom/sonyericsson/android/socialphonebook/conferencecall/model/ConferenceCallData;>;"
    invoke-virtual {p1}, Landroid/content/Loader;->getId()I

    move-result v0

    const/16 v1, 0x3e9

    if-ne v0, v1, :cond_0

    .line 254
    if-eqz p2, :cond_0

    .line 255
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/conferencecall/fragments/ConferenceCallDetailsFragment$ConferenceCallDetailsLoaderListener;->this$0:Lcom/sonyericsson/android/socialphonebook/conferencecall/fragments/ConferenceCallDetailsFragment;

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/conferencecall/fragments/ConferenceCallDetailsFragment;->-get1(Lcom/sonyericsson/android/socialphonebook/conferencecall/fragments/ConferenceCallDetailsFragment;)Lcom/sonyericsson/android/socialphonebook/conferencecall/adapters/ConferenceCallDetailsAdapter;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/sonyericsson/android/socialphonebook/conferencecall/adapters/ConferenceCallDetailsAdapter;->setConferenceCallData(Lcom/sonyericsson/android/socialphonebook/conferencecall/model/ConferenceCallData;)V

    .line 256
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/conferencecall/fragments/ConferenceCallDetailsFragment$ConferenceCallDetailsLoaderListener;->this$0:Lcom/sonyericsson/android/socialphonebook/conferencecall/fragments/ConferenceCallDetailsFragment;

    invoke-virtual {v0}, Lcom/sonyericsson/android/socialphonebook/conferencecall/fragments/ConferenceCallDetailsFragment;->initDurationView()V

    .line 257
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/conferencecall/fragments/ConferenceCallDetailsFragment$ConferenceCallDetailsLoaderListener;->this$0:Lcom/sonyericsson/android/socialphonebook/conferencecall/fragments/ConferenceCallDetailsFragment;

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/conferencecall/fragments/ConferenceCallDetailsFragment;->-get1(Lcom/sonyericsson/android/socialphonebook/conferencecall/fragments/ConferenceCallDetailsFragment;)Lcom/sonyericsson/android/socialphonebook/conferencecall/adapters/ConferenceCallDetailsAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/socialphonebook/conferencecall/adapters/ConferenceCallDetailsAdapter;->notifyDataSetChanged()V

    .line 258
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/conferencecall/fragments/ConferenceCallDetailsFragment$ConferenceCallDetailsLoaderListener;->this$0:Lcom/sonyericsson/android/socialphonebook/conferencecall/fragments/ConferenceCallDetailsFragment;

    invoke-virtual {v0}, Lcom/sonyericsson/android/socialphonebook/conferencecall/fragments/ConferenceCallDetailsFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 252
    :cond_0
    return-void
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0
    .param p1, "loader"    # Landroid/content/Loader;
    .param p2, "data"    # Ljava/lang/Object;

    .prologue
    .line 252
    check-cast p2, Lcom/sonyericsson/android/socialphonebook/conferencecall/model/ConferenceCallData;

    .end local p2    # "data":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/sonyericsson/android/socialphonebook/conferencecall/fragments/ConferenceCallDetailsFragment$ConferenceCallDetailsLoaderListener;->onLoadFinished(Landroid/content/Loader;Lcom/sonyericsson/android/socialphonebook/conferencecall/model/ConferenceCallData;)V

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
    .line 264
    .local p1, "loader":Landroid/content/Loader;, "Landroid/content/Loader<Lcom/sonyericsson/android/socialphonebook/conferencecall/model/ConferenceCallData;>;"
    return-void
.end method
