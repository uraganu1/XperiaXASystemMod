.class Lcom/sonyericsson/android/socialphonebook/smartsearch/SearchContactsAdapter$1;
.super Landroid/os/AsyncTask;
.source "SearchContactsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/socialphonebook/smartsearch/SearchContactsAdapter;->updateComposeCallIfHasCapabilities(Lcom/sonyericsson/android/socialphonebook/smartsearch/SearchContactsAdapter$SearchContactItemView;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Object;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field mViewHolder:Lcom/sonyericsson/android/socialphonebook/smartsearch/SearchContactsAdapter$SearchContactItemView;

.field final synthetic this$0:Lcom/sonyericsson/android/socialphonebook/smartsearch/SearchContactsAdapter;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/socialphonebook/smartsearch/SearchContactsAdapter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/android/socialphonebook/smartsearch/SearchContactsAdapter;

    .prologue
    .line 208
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SearchContactsAdapter$1;->this$0:Lcom/sonyericsson/android/socialphonebook/smartsearch/SearchContactsAdapter;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Object;)Ljava/lang/Boolean;
    .locals 3
    .param p1, "args"    # [Ljava/lang/Object;

    .prologue
    const/4 v2, 0x0

    .line 213
    aget-object v0, p1, v2

    check-cast v0, Ljava/lang/String;

    .line 214
    .local v0, "number":Ljava/lang/String;
    const/4 v1, 0x1

    aget-object v1, p1, v1

    check-cast v1, Lcom/sonyericsson/android/socialphonebook/smartsearch/SearchContactsAdapter$SearchContactItemView;

    iput-object v1, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SearchContactsAdapter$1;->mViewHolder:Lcom/sonyericsson/android/socialphonebook/smartsearch/SearchContactsAdapter$SearchContactItemView;

    .line 215
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SearchContactsAdapter$1;->this$0:Lcom/sonyericsson/android/socialphonebook/smartsearch/SearchContactsAdapter;

    invoke-static {v1}, Lcom/sonyericsson/android/socialphonebook/smartsearch/SearchContactsAdapter;->-get0(Lcom/sonyericsson/android/socialphonebook/smartsearch/SearchContactsAdapter;)Lcom/sonyericsson/android/socialphonebook/util/CallPlusConnector;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SearchContactsAdapter$1;->this$0:Lcom/sonyericsson/android/socialphonebook/smartsearch/SearchContactsAdapter;

    invoke-static {v1}, Lcom/sonyericsson/android/socialphonebook/smartsearch/SearchContactsAdapter;->-get0(Lcom/sonyericsson/android/socialphonebook/smartsearch/SearchContactsAdapter;)Lcom/sonyericsson/android/socialphonebook/util/CallPlusConnector;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sonyericsson/android/socialphonebook/util/CallPlusConnector;->getCachedCapability(Ljava/lang/String;)Z

    move-result v1

    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1

    :cond_0
    move v1, v2

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "args"    # [Ljava/lang/Object;

    .prologue
    .line 212
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/socialphonebook/smartsearch/SearchContactsAdapter$1;->doInBackground([Ljava/lang/Object;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 2
    .param p1, "hasCapabilities"    # Ljava/lang/Boolean;

    .prologue
    .line 220
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SearchContactsAdapter$1;->mViewHolder:Lcom/sonyericsson/android/socialphonebook/smartsearch/SearchContactsAdapter$SearchContactItemView;

    if-eqz v1, :cond_0

    .line 221
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x0

    .line 222
    .local v0, "visibility":I
    :goto_0
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SearchContactsAdapter$1;->mViewHolder:Lcom/sonyericsson/android/socialphonebook/smartsearch/SearchContactsAdapter$SearchContactItemView;

    iget-object v1, v1, Lcom/sonyericsson/android/socialphonebook/smartsearch/SearchContactsAdapter$SearchContactItemView;->prepareCall:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 219
    .end local v0    # "visibility":I
    :cond_0
    return-void

    .line 221
    :cond_1
    const/16 v0, 0x8

    .restart local v0    # "visibility":I
    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "hasCapabilities"    # Ljava/lang/Object;

    .prologue
    .line 219
    check-cast p1, Ljava/lang/Boolean;

    .end local p1    # "hasCapabilities":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/socialphonebook/smartsearch/SearchContactsAdapter$1;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
