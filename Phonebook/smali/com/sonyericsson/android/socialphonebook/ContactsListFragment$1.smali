.class Lcom/sonyericsson/android/socialphonebook/ContactsListFragment$1;
.super Landroid/database/ContentObserver;
.source "ContactsListFragment.java"


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
.method constructor <init>(Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;
    .param p2, "$anonymous0"    # Landroid/os/Handler;

    .prologue
    .line 301
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment$1;->this$0:Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 3
    .param p1, "selfChange"    # Z

    .prologue
    .line 305
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment$1;->this$0:Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->-get1(Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;)Lcom/sonyericsson/android/socialphonebook/rcs/ContactDataHelper;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/android/socialphonebook/rcs/ContactDataHelper$QueryType;->RCS_CONTACTS:Lcom/sonyericsson/android/socialphonebook/rcs/ContactDataHelper$QueryType;

    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment$1;->this$0:Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;

    invoke-static {v2}, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->-get2(Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;)Lcom/sonyericsson/android/socialphonebook/rcs/ContactDataHelper$OnQueryCompleteListener;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/android/socialphonebook/rcs/ContactDataHelper;->queryAsync(Lcom/sonyericsson/android/socialphonebook/rcs/ContactDataHelper$QueryType;Lcom/sonyericsson/android/socialphonebook/rcs/ContactDataHelper$OnQueryCompleteListener;)V

    .line 304
    return-void
.end method
