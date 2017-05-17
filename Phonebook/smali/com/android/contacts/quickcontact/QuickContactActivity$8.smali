.class Lcom/android/contacts/quickcontact/QuickContactActivity$8;
.super Ljava/lang/Object;
.source "QuickContactActivity.java"

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/quickcontact/QuickContactActivity;
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
.field final synthetic this$0:Lcom/android/contacts/quickcontact/QuickContactActivity;


# direct methods
.method constructor <init>(Lcom/android/contacts/quickcontact/QuickContactActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/contacts/quickcontact/QuickContactActivity;

    .prologue
    .line 2049
    iput-object p1, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$8;->this$0:Lcom/android/contacts/quickcontact/QuickContactActivity;

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

    .line 2107
    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$8;->this$0:Lcom/android/contacts/quickcontact/QuickContactActivity;

    invoke-static {v0}, Lcom/android/contacts/quickcontact/QuickContactActivity;->-get12(Lcom/android/contacts/quickcontact/QuickContactActivity;)Landroid/net/Uri;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2108
    invoke-static {}, Lcom/android/contacts/quickcontact/QuickContactActivity;->-get1()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "Lookup uri wasn\'t initialized. Loader was started too early"

    invoke-static {v0, v1}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2112
    :cond_0
    new-instance v0, Lcom/android/contacts/common/model/ContactLoader;

    iget-object v1, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$8;->this$0:Lcom/android/contacts/quickcontact/QuickContactActivity;

    invoke-virtual {v1}, Lcom/android/contacts/quickcontact/QuickContactActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$8;->this$0:Lcom/android/contacts/quickcontact/QuickContactActivity;

    invoke-static {v2}, Lcom/android/contacts/quickcontact/QuickContactActivity;->-get12(Lcom/android/contacts/quickcontact/QuickContactActivity;)Landroid/net/Uri;

    move-result-object v2

    .line 2113
    const/4 v4, 0x0

    move v5, v3

    move v6, v3

    .line 2112
    invoke-direct/range {v0 .. v6}, Lcom/android/contacts/common/model/ContactLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;ZZZZ)V

    return-object v0
.end method

.method public onLoadFinished(Landroid/content/Loader;Lcom/android/contacts/common/model/Contact;)V
    .locals 6
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
    const/4 v3, 0x1

    .line 2057
    const-string/jumbo v0, "onLoadFinished()"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 2059
    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$8;->this$0:Lcom/android/contacts/quickcontact/QuickContactActivity;

    invoke-virtual {v0}, Lcom/android/contacts/quickcontact/QuickContactActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2060
    return-void

    .line 2062
    :cond_0
    invoke-virtual {p2}, Lcom/android/contacts/common/model/Contact;->isError()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2063
    invoke-static {}, Lcom/android/contacts/quickcontact/QuickContactActivity;->-get1()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Incorrect contact data: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    check-cast p1, Lcom/android/contacts/common/model/ContactLoader;

    .end local p1    # "loader":Landroid/content/Loader;, "Landroid/content/Loader<Lcom/android/contacts/common/model/Contact;>;"
    invoke-virtual {p1}, Lcom/android/contacts/common/model/ContactLoader;->getLookupUri()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2065
    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$8;->this$0:Lcom/android/contacts/quickcontact/QuickContactActivity;

    const v1, 0x7f090180

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 2067
    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$8;->this$0:Lcom/android/contacts/quickcontact/QuickContactActivity;

    invoke-virtual {v0}, Lcom/android/contacts/quickcontact/QuickContactActivity;->finish()V

    .line 2068
    return-void

    .line 2070
    .restart local p1    # "loader":Landroid/content/Loader;, "Landroid/content/Loader<Lcom/android/contacts/common/model/Contact;>;"
    :cond_1
    invoke-virtual {p2}, Lcom/android/contacts/common/model/Contact;->isNotFound()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2071
    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$8;->this$0:Lcom/android/contacts/quickcontact/QuickContactActivity;

    invoke-static {v0}, Lcom/android/contacts/quickcontact/QuickContactActivity;->-get8(Lcom/android/contacts/quickcontact/QuickContactActivity;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2072
    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$8;->this$0:Lcom/android/contacts/quickcontact/QuickContactActivity;

    invoke-virtual {v0}, Lcom/android/contacts/quickcontact/QuickContactActivity;->finish()V

    .line 2078
    .end local p1    # "loader":Landroid/content/Loader;, "Landroid/content/Loader<Lcom/android/contacts/common/model/Contact;>;"
    :goto_0
    return-void

    .line 2074
    .restart local p1    # "loader":Landroid/content/Loader;, "Landroid/content/Loader<Lcom/android/contacts/common/model/Contact;>;"
    :cond_2
    invoke-static {}, Lcom/android/contacts/quickcontact/QuickContactActivity;->-get1()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "No contact found: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    check-cast p1, Lcom/android/contacts/common/model/ContactLoader;

    .end local p1    # "loader":Landroid/content/Loader;, "Landroid/content/Loader<Lcom/android/contacts/common/model/Contact;>;"
    invoke-virtual {p1}, Lcom/android/contacts/common/model/ContactLoader;->getLookupUri()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2075
    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$8;->this$0:Lcom/android/contacts/quickcontact/QuickContactActivity;

    const v1, 0x7f09007c

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 2081
    .restart local p1    # "loader":Landroid/content/Loader;, "Landroid/content/Loader<Lcom/android/contacts/common/model/Contact;>;"
    :cond_3
    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$8;->this$0:Lcom/android/contacts/quickcontact/QuickContactActivity;

    invoke-static {v0, p2}, Lcom/android/contacts/quickcontact/QuickContactActivity;->-wrap11(Lcom/android/contacts/quickcontact/QuickContactActivity;Lcom/android/contacts/common/model/Contact;)V

    .line 2082
    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$8;->this$0:Lcom/android/contacts/quickcontact/QuickContactActivity;

    invoke-static {v0}, Lcom/android/contacts/quickcontact/QuickContactActivity;->-wrap19(Lcom/android/contacts/quickcontact/QuickContactActivity;)V

    .line 2083
    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$8;->this$0:Lcom/android/contacts/quickcontact/QuickContactActivity;

    invoke-static {v0}, Lcom/android/contacts/quickcontact/QuickContactActivity;->-wrap18(Lcom/android/contacts/quickcontact/QuickContactActivity;)V

    .line 2085
    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$8;->this$0:Lcom/android/contacts/quickcontact/QuickContactActivity;

    iget-object v1, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$8;->this$0:Lcom/android/contacts/quickcontact/QuickContactActivity;

    invoke-static {v1}, Lcom/android/contacts/quickcontact/QuickContactActivity;->-wrap4(Lcom/android/contacts/quickcontact/QuickContactActivity;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/android/contacts/quickcontact/QuickContactActivity;->-set12(Lcom/android/contacts/quickcontact/QuickContactActivity;Z)Z

    .line 2086
    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$8;->this$0:Lcom/android/contacts/quickcontact/QuickContactActivity;

    iget-object v1, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$8;->this$0:Lcom/android/contacts/quickcontact/QuickContactActivity;

    invoke-static {v1}, Lcom/android/contacts/quickcontact/QuickContactActivity;->-wrap2(Lcom/android/contacts/quickcontact/QuickContactActivity;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/android/contacts/quickcontact/QuickContactActivity;->-set10(Lcom/android/contacts/quickcontact/QuickContactActivity;Z)Z

    .line 2087
    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$8;->this$0:Lcom/android/contacts/quickcontact/QuickContactActivity;

    iget-object v1, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$8;->this$0:Lcom/android/contacts/quickcontact/QuickContactActivity;

    invoke-static {v1}, Lcom/android/contacts/quickcontact/QuickContactActivity;->-wrap5(Lcom/android/contacts/quickcontact/QuickContactActivity;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/android/contacts/quickcontact/QuickContactActivity;->-set13(Lcom/android/contacts/quickcontact/QuickContactActivity;Z)Z

    .line 2088
    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$8;->this$0:Lcom/android/contacts/quickcontact/QuickContactActivity;

    iget-object v1, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$8;->this$0:Lcom/android/contacts/quickcontact/QuickContactActivity;

    invoke-static {v1}, Lcom/android/contacts/quickcontact/QuickContactActivity;->-wrap3(Lcom/android/contacts/quickcontact/QuickContactActivity;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/android/contacts/quickcontact/QuickContactActivity;->-set11(Lcom/android/contacts/quickcontact/QuickContactActivity;Z)Z

    .line 2089
    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$8;->this$0:Lcom/android/contacts/quickcontact/QuickContactActivity;

    iget-object v1, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$8;->this$0:Lcom/android/contacts/quickcontact/QuickContactActivity;

    invoke-static {v1}, Lcom/android/contacts/quickcontact/QuickContactActivity;->-wrap7(Lcom/android/contacts/quickcontact/QuickContactActivity;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/android/contacts/quickcontact/QuickContactActivity;->-set14(Lcom/android/contacts/quickcontact/QuickContactActivity;Z)Z

    .line 2090
    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$8;->this$0:Lcom/android/contacts/quickcontact/QuickContactActivity;

    iget-object v1, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$8;->this$0:Lcom/android/contacts/quickcontact/QuickContactActivity;

    invoke-static {v1}, Lcom/android/contacts/quickcontact/QuickContactActivity;->-wrap1(Lcom/android/contacts/quickcontact/QuickContactActivity;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/android/contacts/quickcontact/QuickContactActivity;->-set9(Lcom/android/contacts/quickcontact/QuickContactActivity;Z)Z

    .line 2091
    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$8;->this$0:Lcom/android/contacts/quickcontact/QuickContactActivity;

    iget-object v1, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$8;->this$0:Lcom/android/contacts/quickcontact/QuickContactActivity;

    invoke-static {v1}, Lcom/android/contacts/quickcontact/QuickContactActivity;->-wrap0(Lcom/android/contacts/quickcontact/QuickContactActivity;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/android/contacts/quickcontact/QuickContactActivity;->-set8(Lcom/android/contacts/quickcontact/QuickContactActivity;Z)Z

    .line 2092
    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$8;->this$0:Lcom/android/contacts/quickcontact/QuickContactActivity;

    iget-object v1, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$8;->this$0:Lcom/android/contacts/quickcontact/QuickContactActivity;

    invoke-static {v1}, Lcom/android/contacts/quickcontact/QuickContactActivity;->-wrap6(Lcom/android/contacts/quickcontact/QuickContactActivity;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/android/contacts/quickcontact/QuickContactActivity;->-set4(Lcom/android/contacts/quickcontact/QuickContactActivity;Z)Z

    .line 2093
    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$8;->this$0:Lcom/android/contacts/quickcontact/QuickContactActivity;

    iget-object v1, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$8;->this$0:Lcom/android/contacts/quickcontact/QuickContactActivity;

    invoke-static {v1}, Lcom/android/contacts/quickcontact/QuickContactActivity;->-get4(Lcom/android/contacts/quickcontact/QuickContactActivity;)Lcom/android/contacts/common/model/Contact;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/contacts/common/model/Contact;->getCustomRingtone()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/contacts/quickcontact/QuickContactActivity;->-set1(Lcom/android/contacts/quickcontact/QuickContactActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 2094
    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$8;->this$0:Lcom/android/contacts/quickcontact/QuickContactActivity;

    iget-object v1, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$8;->this$0:Lcom/android/contacts/quickcontact/QuickContactActivity;

    invoke-static {v1}, Lcom/android/contacts/quickcontact/QuickContactActivity;->-wrap8(Lcom/android/contacts/quickcontact/QuickContactActivity;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/android/contacts/quickcontact/QuickContactActivity;->-set7(Lcom/android/contacts/quickcontact/QuickContactActivity;Z)Z

    .line 2096
    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$8;->this$0:Lcom/android/contacts/quickcontact/QuickContactActivity;

    invoke-static {v0}, Lcom/android/contacts/quickcontact/QuickContactActivity;->-get10(Lcom/android/contacts/quickcontact/QuickContactActivity;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2097
    invoke-static {}, Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper;->getInstance()Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper;

    move-result-object v0

    .line 2098
    iget-object v1, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$8;->this$0:Lcom/android/contacts/quickcontact/QuickContactActivity;

    const v2, 0x7f0901c9

    invoke-virtual {v1, v2}, Lcom/android/contacts/quickcontact/QuickContactActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, ""

    .line 2099
    const-string/jumbo v3, "support_contact_opened"

    const-wide/16 v4, 0x0

    .line 2097
    invoke-virtual/range {v0 .. v5}, Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper;->pushOneTimeEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 2102
    :cond_4
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 2056
    return-void
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0
    .param p1, "loader"    # Landroid/content/Loader;
    .param p2, "data"    # Ljava/lang/Object;

    .prologue
    .line 2056
    check-cast p2, Lcom/android/contacts/common/model/Contact;

    .end local p2    # "data":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/android/contacts/quickcontact/QuickContactActivity$8;->onLoadFinished(Landroid/content/Loader;Lcom/android/contacts/common/model/Contact;)V

    return-void
.end method

.method public onLoaderReset(Landroid/content/Loader;)V
    .locals 2
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
    .line 2052
    .local p1, "loader":Landroid/content/Loader;, "Landroid/content/Loader<Lcom/android/contacts/common/model/Contact;>;"
    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$8;->this$0:Lcom/android/contacts/quickcontact/QuickContactActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/contacts/quickcontact/QuickContactActivity;->-set0(Lcom/android/contacts/quickcontact/QuickContactActivity;Lcom/android/contacts/common/model/Contact;)Lcom/android/contacts/common/model/Contact;

    .line 2051
    return-void
.end method
