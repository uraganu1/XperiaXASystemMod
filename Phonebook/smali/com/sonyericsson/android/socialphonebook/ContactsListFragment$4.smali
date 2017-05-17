.class Lcom/sonyericsson/android/socialphonebook/ContactsListFragment$4;
.super Ljava/lang/Object;
.source "ContactsListFragment.java"

# interfaces
.implements Landroid/widget/ShareActionProvider$OnShareTargetSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->fetchActionProvider()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;

    .prologue
    .line 586
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment$4;->this$0:Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShareTargetSelected(Landroid/widget/ShareActionProvider;Landroid/content/Intent;)Z
    .locals 5
    .param p1, "source"    # Landroid/widget/ShareActionProvider;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v4, 0x1

    .line 589
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment$4;->this$0:Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;

    iget-object v1, v1, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->mContext:Landroid/app/Activity;

    const-class v2, Lcom/sonyericsson/android/socialphonebook/SendVcardActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 590
    .local v0, "intentSend":Landroid/content/Intent;
    const-string/jumbo v1, "vnd.android.cursor.item/contact"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 591
    const-string/jumbo v1, "contacts_id"

    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment$4;->this$0:Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;

    invoke-static {v2}, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->-wrap1(Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;)[J

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[J)Landroid/content/Intent;

    .line 592
    const-string/jumbo v1, "display_progress"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 593
    const-string/jumbo v1, "choose_title"

    .line 594
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment$4;->this$0:Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;

    const v3, 0x7f0902ce

    invoke-virtual {v2, v3}, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 593
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 595
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment$4;->this$0:Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;

    const/16 v2, 0x3e9

    invoke-virtual {v1, v0, v2}, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 596
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment$4;->this$0:Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;

    invoke-static {v1, p2}, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->-set0(Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;Landroid/content/Intent;)Landroid/content/Intent;

    .line 597
    return v4
.end method
