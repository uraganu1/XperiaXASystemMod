.class Lcom/sonyericsson/android/socialphonebook/widget/ContactsListAdapter$1;
.super Ljava/lang/Object;
.source "ContactsListAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/socialphonebook/widget/ContactsListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/socialphonebook/widget/ContactsListAdapter;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/socialphonebook/widget/ContactsListAdapter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/android/socialphonebook/widget/ContactsListAdapter;

    .prologue
    .line 85
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/widget/ContactsListAdapter$1;->this$0:Lcom/sonyericsson/android/socialphonebook/widget/ContactsListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 87
    const-string/jumbo v0, "ContactsListAdapter"

    const-string/jumbo v1, "mContentChangedCallback.run"

    invoke-static {v0, v1}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/widget/ContactsListAdapter$1;->this$0:Lcom/sonyericsson/android/socialphonebook/widget/ContactsListAdapter;

    invoke-virtual {v0}, Lcom/sonyericsson/android/socialphonebook/widget/ContactsListAdapter;->doOnContentChanged()V

    .line 86
    return-void
.end method
