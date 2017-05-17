.class Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment$2;
.super Ljava/lang/Object;
.source "ContactEntryListFragment.java"

# interfaces
.implements Lcom/sonyericsson/android/socialphonebook/ui/ContactsPreferences$ChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment;
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
    .line 911
    .local p1, "this$0":Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment;, "Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment<TT;>;"
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment$2;->this$0:Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChange()V
    .locals 1

    .prologue
    .line 914
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment$2;->this$0:Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment;

    invoke-virtual {v0}, Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment;->loadPreferences()Z

    .line 915
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment$2;->this$0:Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment;

    invoke-virtual {v0}, Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment;->reloadData()V

    .line 913
    return-void
.end method
