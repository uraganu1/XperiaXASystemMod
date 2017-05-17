.class Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchFragment$2;
.super Ljava/lang/Object;
.source "SmartSearchFragment.java"

# interfaces
.implements Lcom/sonyericsson/android/socialphonebook/util/CallPlusConnector$CallPlusConnectorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchFragment;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchFragment;

    .prologue
    .line 187
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchFragment$2;->this$0:Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallPlusServiceConnected()V
    .locals 2

    .prologue
    .line 190
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchFragment$2;->this$0:Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchFragment;

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchFragment;->-get7(Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchFragment;)Lcom/sonyericsson/android/socialphonebook/smartsearch/SearchContactsAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 191
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchFragment$2;->this$0:Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchFragment;

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchFragment;->-get7(Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchFragment;)Lcom/sonyericsson/android/socialphonebook/smartsearch/SearchContactsAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchFragment$2;->this$0:Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchFragment;

    invoke-static {v1}, Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchFragment;->-get0(Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchFragment;)Lcom/sonyericsson/android/socialphonebook/util/CallPlusConnector;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/socialphonebook/smartsearch/SearchContactsAdapter;->setCallPlusConnector(Lcom/sonyericsson/android/socialphonebook/util/CallPlusConnector;)V

    .line 189
    :cond_0
    return-void
.end method

.method public onCallPlusServiceDisconnected()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 197
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchFragment$2;->this$0:Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchFragment;

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchFragment;->-get7(Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchFragment;)Lcom/sonyericsson/android/socialphonebook/smartsearch/SearchContactsAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 198
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchFragment$2;->this$0:Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchFragment;

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchFragment;->-get7(Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchFragment;)Lcom/sonyericsson/android/socialphonebook/smartsearch/SearchContactsAdapter;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/socialphonebook/smartsearch/SearchContactsAdapter;->setCallPlusConnector(Lcom/sonyericsson/android/socialphonebook/util/CallPlusConnector;)V

    .line 196
    :cond_0
    return-void
.end method

.method public onCapabilitiesUpdated(Landroid/content/Intent;)V
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 212
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchFragment$2;->this$0:Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchFragment;

    invoke-static {v2}, Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchFragment;->-get1(Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchFragment;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 213
    return-void

    .line 216
    :cond_0
    const-string/jumbo v2, "extra_callplus_phonenumber"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 218
    .local v1, "number":Ljava/lang/String;
    const-string/jumbo v2, "extra_callplus_callcomposer_capabilities"

    const/4 v3, 0x0

    .line 217
    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 220
    .local v0, "hasCapabs":Z
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchFragment$2;->this$0:Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchFragment;

    invoke-static {v2}, Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchFragment;->-get1(Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchFragment;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    if-eqz v0, :cond_1

    .line 221
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchFragment$2;->this$0:Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchFragment;

    invoke-static {v2}, Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchFragment;->-get4(Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchFragment;)Landroid/widget/ListView;

    move-result-object v2

    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchFragment$2;->this$0:Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchFragment;

    invoke-static {v3}, Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchFragment;->-get5(Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchFragment;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->removeFooterView(Landroid/view/View;)Z

    .line 222
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchFragment$2;->this$0:Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchFragment;

    invoke-static {v2}, Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchFragment;->-get4(Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchFragment;)Landroid/widget/ListView;

    move-result-object v2

    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchFragment$2;->this$0:Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchFragment;

    invoke-static {v3}, Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchFragment;->-get5(Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchFragment;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    .line 211
    :cond_1
    return-void
.end method
