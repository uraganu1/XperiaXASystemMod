.class Lcom/android/contacts/editor/ContactEditorFragment$2;
.super Ljava/lang/Object;
.source "ContactEditorFragment.java"

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/editor/ContactEditorFragment;
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
.field final synthetic this$0:Lcom/android/contacts/editor/ContactEditorFragment;


# direct methods
.method constructor <init>(Lcom/android/contacts/editor/ContactEditorFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/contacts/editor/ContactEditorFragment;

    .prologue
    .line 2624
    iput-object p1, p0, Lcom/android/contacts/editor/ContactEditorFragment$2;->this$0:Lcom/android/contacts/editor/ContactEditorFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 5
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
    .line 2627
    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment$2;->this$0:Lcom/android/contacts/editor/ContactEditorFragment;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/android/contacts/editor/ContactEditorFragment;->-set8(Lcom/android/contacts/editor/ContactEditorFragment;J)J

    .line 2628
    new-instance v0, Lcom/android/contacts/common/model/ContactLoader;

    iget-object v1, p0, Lcom/android/contacts/editor/ContactEditorFragment$2;->this$0:Lcom/android/contacts/editor/ContactEditorFragment;

    invoke-static {v1}, Lcom/android/contacts/editor/ContactEditorFragment;->-get5(Lcom/android/contacts/editor/ContactEditorFragment;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/contacts/editor/ContactEditorFragment$2;->this$0:Lcom/android/contacts/editor/ContactEditorFragment;

    invoke-static {v2}, Lcom/android/contacts/editor/ContactEditorFragment;->-get13(Lcom/android/contacts/editor/ContactEditorFragment;)Landroid/net/Uri;

    move-result-object v2

    .line 2629
    new-instance v3, Lcom/android/contacts/common/model/ContactLoader$ExcludedAccountsBuilder;

    invoke-direct {v3}, Lcom/android/contacts/common/model/ContactLoader$ExcludedAccountsBuilder;-><init>()V

    .line 2630
    const-string/jumbo v4, "com.gsma.rcs"

    .line 2629
    invoke-virtual {v3, v4}, Lcom/android/contacts/common/model/ContactLoader$ExcludedAccountsBuilder;->addExcludedAccount(Ljava/lang/String;)Lcom/android/contacts/common/model/ContactLoader$ExcludedAccountsBuilder;

    move-result-object v3

    .line 2628
    const/4 v4, 0x1

    invoke-direct {v0, v1, v2, v4, v3}, Lcom/android/contacts/common/model/ContactLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;ZLcom/android/contacts/common/model/ContactLoader$ExcludedAccountsBuilder;)V

    return-object v0
.end method

.method public onLoadFinished(Landroid/content/Loader;Lcom/android/contacts/common/model/Contact;)V
    .locals 10
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
    .line 2635
    .local p1, "loader":Landroid/content/Loader;, "Landroid/content/Loader<Lcom/android/contacts/common/model/Contact;>;"
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 2636
    .local v0, "loaderCurrentTime":J
    invoke-static {}, Lcom/android/contacts/editor/ContactEditorFragment;->-get0()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Time needed for loading: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/contacts/editor/ContactEditorFragment$2;->this$0:Lcom/android/contacts/editor/ContactEditorFragment;

    invoke-static {v8}, Lcom/android/contacts/editor/ContactEditorFragment;->-get12(Lcom/android/contacts/editor/ContactEditorFragment;)J

    move-result-wide v8

    sub-long v8, v0, v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 2637
    invoke-virtual {p2}, Lcom/android/contacts/common/model/Contact;->isLoaded()Z

    move-result v6

    if-nez v6, :cond_1

    .line 2639
    invoke-static {}, Lcom/android/contacts/editor/ContactEditorFragment;->-get0()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "No contact found. Closing activity"

    invoke-static {v6, v7}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2640
    iget-object v6, p0, Lcom/android/contacts/editor/ContactEditorFragment$2;->this$0:Lcom/android/contacts/editor/ContactEditorFragment;

    invoke-static {v6}, Lcom/android/contacts/editor/ContactEditorFragment;->-get11(Lcom/android/contacts/editor/ContactEditorFragment;)Lcom/android/contacts/editor/ContactEditorFragment$Listener;

    move-result-object v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/contacts/editor/ContactEditorFragment$2;->this$0:Lcom/android/contacts/editor/ContactEditorFragment;

    invoke-static {v6}, Lcom/android/contacts/editor/ContactEditorFragment;->-get11(Lcom/android/contacts/editor/ContactEditorFragment;)Lcom/android/contacts/editor/ContactEditorFragment$Listener;

    move-result-object v6

    invoke-interface {v6}, Lcom/android/contacts/editor/ContactEditorFragment$Listener;->onContactNotFound()V

    .line 2641
    :cond_0
    return-void

    .line 2644
    :cond_1
    iget-object v6, p0, Lcom/android/contacts/editor/ContactEditorFragment$2;->this$0:Lcom/android/contacts/editor/ContactEditorFragment;

    const/4 v7, 0x1

    invoke-static {v6, v7}, Lcom/android/contacts/editor/ContactEditorFragment;->-set11(Lcom/android/contacts/editor/ContactEditorFragment;I)I

    .line 2645
    iget-object v6, p0, Lcom/android/contacts/editor/ContactEditorFragment$2;->this$0:Lcom/android/contacts/editor/ContactEditorFragment;

    invoke-virtual {p2}, Lcom/android/contacts/common/model/Contact;->getLookupUri()Landroid/net/Uri;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/contacts/editor/ContactEditorFragment;->-set9(Lcom/android/contacts/editor/ContactEditorFragment;Landroid/net/Uri;)Landroid/net/Uri;

    .line 2646
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 2647
    .local v4, "setDataStartTime":J
    iget-object v6, p0, Lcom/android/contacts/editor/ContactEditorFragment$2;->this$0:Lcom/android/contacts/editor/ContactEditorFragment;

    invoke-virtual {v6, p2}, Lcom/android/contacts/editor/ContactEditorFragment;->setData(Lcom/android/contacts/common/model/Contact;)V

    .line 2648
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 2650
    .local v2, "setDataEndTime":J
    invoke-static {}, Lcom/android/contacts/editor/ContactEditorFragment;->-get0()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Time needed for setting UI: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sub-long v8, v2, v4

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 2634
    return-void
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0
    .param p1, "loader"    # Landroid/content/Loader;
    .param p2, "data"    # Ljava/lang/Object;

    .prologue
    .line 2634
    check-cast p2, Lcom/android/contacts/common/model/Contact;

    .end local p2    # "data":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/android/contacts/editor/ContactEditorFragment$2;->onLoadFinished(Landroid/content/Loader;Lcom/android/contacts/common/model/Contact;)V

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
    .line 2654
    .local p1, "loader":Landroid/content/Loader;, "Landroid/content/Loader<Lcom/android/contacts/common/model/Contact;>;"
    return-void
.end method
