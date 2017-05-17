.class Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchFragment$1;
.super Ljava/lang/Object;
.source "SmartSearchFragment.java"

# interfaces
.implements Lcom/sonyericsson/android/socialphonebook/smartsearch/SearchContactsAdapter$OnCallingFromListListener;


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
    .line 166
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchFragment$1;->this$0:Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private openContactDetail(Landroid/net/Uri;)V
    .locals 3
    .param p1, "contactUri"    # Landroid/net/Uri;

    .prologue
    .line 181
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    .line 182
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchFragment$1;->this$0:Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchFragment;

    invoke-virtual {v1, v0}, Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchFragment;->startActivity(Landroid/content/Intent;)V

    .line 180
    return-void
.end method


# virtual methods
.method public onCallingFromListRequested(Ljava/lang/String;ZLandroid/net/Uri;)V
    .locals 2
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "isContact"    # Z
    .param p3, "contactUri"    # Landroid/net/Uri;

    .prologue
    .line 171
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchFragment$1;->this$0:Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchFragment;

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchFragment;->-get8(Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchFragment$1;->this$0:Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchFragment;

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchFragment;->-get6(Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchFragment;)Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 172
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchFragment$1;->this$0:Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchFragment;

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchFragment;->-get6(Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchFragment;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 171
    if-eqz v0, :cond_0

    .line 173
    invoke-direct {p0, p3}, Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchFragment$1;->openContactDetail(Landroid/net/Uri;)V

    .line 174
    return-void

    .line 176
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchFragment$1;->this$0:Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchFragment;

    invoke-static {v0, p3}, Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchFragment;->-set0(Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchFragment;Landroid/net/Uri;)Landroid/net/Uri;

    .line 177
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchFragment$1;->this$0:Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchFragment;

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchFragment;->-get3(Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchFragment;)Lcom/sonyericsson/android/socialphonebook/DialpadFragment;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchFragment$1;->this$0:Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchFragment;

    invoke-static {v1}, Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchFragment;->-get8(Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchFragment;)Z

    move-result v1

    invoke-virtual {v0, p1, p2, v1}, Lcom/sonyericsson/android/socialphonebook/DialpadFragment;->onCallingFromListRequested(Ljava/lang/String;ZZ)V

    .line 168
    return-void
.end method
