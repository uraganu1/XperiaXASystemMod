.class Lcom/sonyericsson/android/socialphonebook/InsertGalContactActivity$1;
.super Ljava/lang/Object;
.source "InsertGalContactActivity.java"

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/socialphonebook/InsertGalContactActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/app/LoaderManager$LoaderCallbacks",
        "<",
        "Lcom/android/contacts/common/model/Contact;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/socialphonebook/InsertGalContactActivity;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/socialphonebook/InsertGalContactActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/android/socialphonebook/InsertGalContactActivity;

    .prologue
    .line 96
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/InsertGalContactActivity$1;->this$0:Lcom/sonyericsson/android/socialphonebook/InsertGalContactActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 7
    .param p1, "id"    # I
    .param p2, "args"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/content/Loader",
            "<",
            "Lcom/android/contacts/common/model/Contact;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 100
    const-string/jumbo v0, "contact_uri"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    .line 101
    .local v2, "lookupUri":Landroid/net/Uri;
    new-instance v0, Lcom/android/contacts/common/model/ContactLoader;

    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/InsertGalContactActivity$1;->this$0:Lcom/sonyericsson/android/socialphonebook/InsertGalContactActivity;

    .line 103
    const/4 v6, 0x0

    move v4, v3

    move v5, v3

    .line 101
    invoke-direct/range {v0 .. v6}, Lcom/android/contacts/common/model/ContactLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;ZZZZ)V

    return-object v0
.end method

.method public onLoadFinished(Landroid/content/Loader;Lcom/android/contacts/common/model/Contact;)V
    .locals 4
    .param p2, "data"    # Lcom/android/contacts/common/model/Contact;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Lcom/android/contacts/common/model/Contact;",
            ">;",
            "Lcom/android/contacts/common/model/Contact;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, "loader":Landroid/content/Loader;, "Landroid/content/Loader<Lcom/android/contacts/common/model/Contact;>;"
    const/4 v3, 0x0

    .line 108
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/InsertGalContactActivity$1;->this$0:Lcom/sonyericsson/android/socialphonebook/InsertGalContactActivity;

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/InsertGalContactActivity;->-get1(Lcom/sonyericsson/android/socialphonebook/InsertGalContactActivity;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p2}, Lcom/android/contacts/common/model/Contact;->getRequestedUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 109
    return-void

    .line 112
    :cond_0
    invoke-virtual {p2}, Lcom/android/contacts/common/model/Contact;->isError()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 113
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Failed to load contact"

    invoke-virtual {p2}, Lcom/android/contacts/common/model/Contact;->getException()Ljava/lang/Exception;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 114
    :cond_1
    invoke-virtual {p2}, Lcom/android/contacts/common/model/Contact;->isNotFound()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 115
    const-string/jumbo v0, "InsertGalContactActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "No contact found : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/InsertGalContactActivity$1;->this$0:Lcom/sonyericsson/android/socialphonebook/InsertGalContactActivity;

    invoke-static {v2}, Lcom/sonyericsson/android/socialphonebook/InsertGalContactActivity;->-get1(Lcom/sonyericsson/android/socialphonebook/InsertGalContactActivity;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/InsertGalContactActivity$1;->this$0:Lcom/sonyericsson/android/socialphonebook/InsertGalContactActivity;

    invoke-static {v0, v3}, Lcom/sonyericsson/android/socialphonebook/InsertGalContactActivity;->-set0(Lcom/sonyericsson/android/socialphonebook/InsertGalContactActivity;Lcom/android/contacts/common/model/Contact;)Lcom/android/contacts/common/model/Contact;

    .line 122
    :goto_0
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/InsertGalContactActivity$1;->this$0:Lcom/sonyericsson/android/socialphonebook/InsertGalContactActivity;

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/InsertGalContactActivity;->-get0(Lcom/sonyericsson/android/socialphonebook/InsertGalContactActivity;)Lcom/android/contacts/common/model/Contact;

    move-result-object v0

    if-nez v0, :cond_3

    .line 123
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/InsertGalContactActivity$1;->this$0:Lcom/sonyericsson/android/socialphonebook/InsertGalContactActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/android/socialphonebook/InsertGalContactActivity;->onContactNotFound()V

    .line 107
    :goto_1
    return-void

    .line 118
    :cond_2
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/InsertGalContactActivity$1;->this$0:Lcom/sonyericsson/android/socialphonebook/InsertGalContactActivity;

    invoke-static {v0, p2}, Lcom/sonyericsson/android/socialphonebook/InsertGalContactActivity;->-set0(Lcom/sonyericsson/android/socialphonebook/InsertGalContactActivity;Lcom/android/contacts/common/model/Contact;)Lcom/android/contacts/common/model/Contact;

    goto :goto_0

    .line 125
    :cond_3
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/InsertGalContactActivity$1;->this$0:Lcom/sonyericsson/android/socialphonebook/InsertGalContactActivity;

    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/InsertGalContactActivity$1;->this$0:Lcom/sonyericsson/android/socialphonebook/InsertGalContactActivity;

    invoke-static {v1}, Lcom/sonyericsson/android/socialphonebook/InsertGalContactActivity;->-get0(Lcom/sonyericsson/android/socialphonebook/InsertGalContactActivity;)Lcom/android/contacts/common/model/Contact;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/socialphonebook/InsertGalContactActivity;->onContactLoaded(Lcom/android/contacts/common/model/Contact;)V

    goto :goto_1
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0
    .param p1, "loader"    # Landroid/content/Loader;
    .param p2, "data"    # Ljava/lang/Object;

    .prologue
    .line 107
    check-cast p2, Lcom/android/contacts/common/model/Contact;

    .end local p2    # "data":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/sonyericsson/android/socialphonebook/InsertGalContactActivity$1;->onLoadFinished(Landroid/content/Loader;Lcom/android/contacts/common/model/Contact;)V

    return-void
.end method

.method public onLoaderReset(Landroid/content/Loader;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Lcom/android/contacts/common/model/Contact;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 130
    .local p1, "loader":Landroid/content/Loader;, "Landroid/content/Loader<Lcom/android/contacts/common/model/Contact;>;"
    return-void
.end method
