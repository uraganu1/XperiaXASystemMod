.class Lcom/sonyericsson/android/socialphonebook/topcontacts/TopContactsListFragment$1;
.super Ljava/lang/Object;
.source "TopContactsListFragment.java"

# interfaces
.implements Lcom/sonyericsson/android/socialphonebook/util/CallPlusConnector$CallPlusConnectorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/socialphonebook/topcontacts/TopContactsListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/socialphonebook/topcontacts/TopContactsListFragment;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/socialphonebook/topcontacts/TopContactsListFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/android/socialphonebook/topcontacts/TopContactsListFragment;

    .prologue
    .line 55
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/topcontacts/TopContactsListFragment$1;->this$0:Lcom/sonyericsson/android/socialphonebook/topcontacts/TopContactsListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallPlusServiceConnected()V
    .locals 2

    .prologue
    .line 58
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/topcontacts/TopContactsListFragment$1;->this$0:Lcom/sonyericsson/android/socialphonebook/topcontacts/TopContactsListFragment;

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/topcontacts/TopContactsListFragment;->-get0(Lcom/sonyericsson/android/socialphonebook/topcontacts/TopContactsListFragment;)Lcom/sonyericsson/android/socialphonebook/topcontacts/TopContactsRecyclerAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/topcontacts/TopContactsListFragment$1;->this$0:Lcom/sonyericsson/android/socialphonebook/topcontacts/TopContactsListFragment;

    invoke-static {v1}, Lcom/sonyericsson/android/socialphonebook/topcontacts/TopContactsListFragment;->-get1(Lcom/sonyericsson/android/socialphonebook/topcontacts/TopContactsListFragment;)Lcom/sonyericsson/android/socialphonebook/util/CallPlusConnector;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/socialphonebook/topcontacts/TopContactsRecyclerAdapter;->setCallPlusConnector(Lcom/sonyericsson/android/socialphonebook/util/CallPlusConnector;)V

    .line 57
    return-void
.end method

.method public onCallPlusServiceDisconnected()V
    .locals 2

    .prologue
    .line 63
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/topcontacts/TopContactsListFragment$1;->this$0:Lcom/sonyericsson/android/socialphonebook/topcontacts/TopContactsListFragment;

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/topcontacts/TopContactsListFragment;->-get0(Lcom/sonyericsson/android/socialphonebook/topcontacts/TopContactsListFragment;)Lcom/sonyericsson/android/socialphonebook/topcontacts/TopContactsRecyclerAdapter;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/socialphonebook/topcontacts/TopContactsRecyclerAdapter;->setCallPlusConnector(Lcom/sonyericsson/android/socialphonebook/util/CallPlusConnector;)V

    .line 62
    return-void
.end method

.method public onCapabilitiesUpdated(Landroid/content/Intent;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 67
    return-void
.end method
