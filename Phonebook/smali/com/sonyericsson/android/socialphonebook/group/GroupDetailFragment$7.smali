.class Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment$7;
.super Ljava/lang/Object;
.source "GroupDetailFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment;->updateAccountType(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment;

.field final synthetic val$accountType:Lcom/android/contacts/common/model/account/AccountType;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment;Lcom/android/contacts/common/model/account/AccountType;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment;
    .param p2, "val$accountType"    # Lcom/android/contacts/common/model/account/AccountType;

    .prologue
    .line 618
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment$7;->this$0:Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment;

    iput-object p2, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment$7;->val$accountType:Lcom/android/contacts/common/model/account/AccountType;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 621
    sget-object v2, Landroid/provider/ContactsContract$Groups;->CONTENT_URI:Landroid/net/Uri;

    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment$7;->this$0:Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment;

    invoke-static {v3}, Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment;->-get7(Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment;)J

    move-result-wide v4

    invoke-static {v2, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 622
    .local v1, "uri":Landroid/net/Uri;
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 623
    .local v0, "intent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment$7;->val$accountType:Lcom/android/contacts/common/model/account/AccountType;

    iget-object v2, v2, Lcom/android/contacts/common/model/account/AccountType;->resourcePackageName:Ljava/lang/String;

    .line 624
    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment$7;->val$accountType:Lcom/android/contacts/common/model/account/AccountType;

    invoke-virtual {v3}, Lcom/android/contacts/common/model/account/AccountType;->getViewGroupActivity()Ljava/lang/String;

    move-result-object v3

    .line 623
    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 625
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment$7;->this$0:Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment;

    invoke-virtual {v2, v0}, Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment;->startActivity(Landroid/content/Intent;)V

    .line 620
    return-void
.end method
