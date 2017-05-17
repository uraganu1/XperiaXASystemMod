.class Lcom/sonyericsson/android/socialphonebook/group/GroupBrowseListFragment$3;
.super Ljava/lang/Object;
.source "GroupBrowseListFragment.java"

# interfaces
.implements Lcom/sonyericsson/android/socialphonebook/group/GroupBrowseListFragment$OnGroupBrowserActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/socialphonebook/group/GroupBrowseListFragment;->onAttach(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/socialphonebook/group/GroupBrowseListFragment;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/socialphonebook/group/GroupBrowseListFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/android/socialphonebook/group/GroupBrowseListFragment;

    .prologue
    .line 204
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupBrowseListFragment$3;->this$0:Lcom/sonyericsson/android/socialphonebook/group/GroupBrowseListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onViewGroupAction(Landroid/net/Uri;)V
    .locals 3
    .param p1, "groupUri"    # Landroid/net/Uri;

    .prologue
    .line 208
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupBrowseListFragment$3;->this$0:Lcom/sonyericsson/android/socialphonebook/group/GroupBrowseListFragment;

    invoke-static {v1}, Lcom/sonyericsson/android/socialphonebook/group/GroupBrowseListFragment;->-get1(Lcom/sonyericsson/android/socialphonebook/group/GroupBrowseListFragment;)Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/sonyericsson/android/socialphonebook/group/GroupDetailActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 209
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 210
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupBrowseListFragment$3;->this$0:Lcom/sonyericsson/android/socialphonebook/group/GroupBrowseListFragment;

    invoke-virtual {v1, v0}, Lcom/sonyericsson/android/socialphonebook/group/GroupBrowseListFragment;->startActivity(Landroid/content/Intent;)V

    .line 207
    return-void
.end method
