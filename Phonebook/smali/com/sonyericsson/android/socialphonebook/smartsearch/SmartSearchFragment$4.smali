.class Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchFragment$4;
.super Ljava/lang/Object;
.source "SmartSearchFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchFragment;->clear()V
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
    .line 656
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchFragment$4;->this$0:Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 659
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchFragment$4;->this$0:Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchFragment;

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchFragment;->-get7(Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchFragment;)Lcom/sonyericsson/android/socialphonebook/smartsearch/SearchContactsAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 660
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchFragment$4;->this$0:Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchFragment;

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchFragment;->-get7(Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchFragment;)Lcom/sonyericsson/android/socialphonebook/smartsearch/SearchContactsAdapter;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/socialphonebook/smartsearch/SearchContactsAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 658
    :cond_0
    return-void
.end method
