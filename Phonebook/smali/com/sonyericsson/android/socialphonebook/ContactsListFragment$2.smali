.class Lcom/sonyericsson/android/socialphonebook/ContactsListFragment$2;
.super Ljava/lang/Object;
.source "ContactsListFragment.java"

# interfaces
.implements Lcom/sonyericsson/android/socialphonebook/rcs/ContactDataHelper$OnQueryCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;
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
    .line 313
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment$2;->this$0:Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onQueryComplete()V
    .locals 2

    .prologue
    .line 317
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment$2;->this$0:Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;

    invoke-virtual {v1}, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->getAdapter()Lcom/sonyericsson/android/socialphonebook/list/ContactsListAdapter;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/socialphonebook/list/ContactListItemAdapter;

    .line 318
    .local v0, "adapter":Lcom/sonyericsson/android/socialphonebook/list/ContactListItemAdapter;
    if-eqz v0, :cond_0

    .line 319
    invoke-virtual {v0}, Lcom/sonyericsson/android/socialphonebook/list/ContactListItemAdapter;->notifyDataSetChanged()V

    .line 316
    :cond_0
    return-void
.end method
