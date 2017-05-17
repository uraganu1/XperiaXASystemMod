.class Lcom/sonyericsson/android/socialphonebook/smartsearch/SearchDataSync$ContactsDataObserver;
.super Landroid/database/ContentObserver;
.source "SearchDataSync.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/socialphonebook/smartsearch/SearchDataSync;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ContactsDataObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/socialphonebook/smartsearch/SearchDataSync;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/android/socialphonebook/smartsearch/SearchDataSync;)V
    .locals 1
    .param p1, "this$0"    # Lcom/sonyericsson/android/socialphonebook/smartsearch/SearchDataSync;

    .prologue
    .line 302
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SearchDataSync$ContactsDataObserver;->this$0:Lcom/sonyericsson/android/socialphonebook/smartsearch/SearchDataSync;

    .line 303
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 302
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .param p1, "selfChange"    # Z

    .prologue
    .line 308
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SearchDataSync$ContactsDataObserver;->this$0:Lcom/sonyericsson/android/socialphonebook/smartsearch/SearchDataSync;

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/smartsearch/SearchDataSync;->-wrap0(Lcom/sonyericsson/android/socialphonebook/smartsearch/SearchDataSync;)V

    .line 309
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SearchDataSync$ContactsDataObserver;->this$0:Lcom/sonyericsson/android/socialphonebook/smartsearch/SearchDataSync;

    invoke-virtual {v0}, Lcom/sonyericsson/android/socialphonebook/smartsearch/SearchDataSync;->syncSmartSearchData()V

    .line 307
    return-void
.end method
