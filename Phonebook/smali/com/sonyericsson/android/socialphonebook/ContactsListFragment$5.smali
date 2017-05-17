.class Lcom/sonyericsson/android/socialphonebook/ContactsListFragment$5;
.super Ljava/lang/Object;
.source "ContactsListFragment.java"

# interfaces
.implements Lcom/sonyericsson/android/socialphonebook/util/ActionModeHandler$ActionModeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->onResume()V
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
    .line 911
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment$5;->this$0:Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActionItemClicked(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 914
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment$5;->this$0:Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;

    invoke-static {v0, p1}, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->-wrap0(Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method
