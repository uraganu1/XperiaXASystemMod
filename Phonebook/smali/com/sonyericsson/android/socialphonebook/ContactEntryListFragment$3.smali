.class Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment$3;
.super Ljava/lang/Object;
.source "ContactEntryListFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment;->refreshAdnContacts()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment;)V
    .locals 0

    .prologue
    .line 956
    .local p1, "this$0":Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment;, "Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment<TT;>;"
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment$3;->this$0:Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 959
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment$3;->this$0:Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment;

    invoke-virtual {v0}, Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment;->getAdapter()Lcom/sonyericsson/android/socialphonebook/list/ContactsListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/socialphonebook/list/ContactsListAdapter;->notifyDataSetChanged()V

    .line 958
    return-void
.end method
